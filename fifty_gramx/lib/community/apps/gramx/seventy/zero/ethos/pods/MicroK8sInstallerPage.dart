import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuSlider/NeuSliderWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/HostMachineData.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/brew/brewCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/executor_log_viewer.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:flutter/foundation.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/neumorphic_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:universal_disk_space/universal_disk_space.dart';

/// This is the stateful widget that the main application instantiates.
class MicroK8sInstallerPage extends StatefulWidget {
  final VoidCallback onSuccessfullInstall;

  const MicroK8sInstallerPage({
    required this.onSuccessfullInstall,
    Key? key,
  }) : super(key: key);

  @override
  State<MicroK8sInstallerPage> createState() => _MicroK8sInstallerPageState();
}

List getBytesAndSuffix(int bytes, int decimals) {
  if (bytes <= 0) return [0, "B"];
  const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
  var i = (log(bytes) / log(1024)).floor();
  var bytesPrecisionString = ((bytes / pow(1024, i)).toStringAsFixed(decimals));
  return [double.parse(bytesPrecisionString), suffixes[i]];
}

Future<List> getAvailableDiskSpace() async {
  final diskSpace = DiskSpace();
  // scan for disks in the system
  await diskSpace.scan();
  // list of disks in the system
  var disks = diskSpace.disks;

  // Prints the device path, mount path, and total size of each disk in system.
  for (final disk in disks) {
    if (disk.mountPath == "/System/Volumes/Data") {
      return getBytesAndSuffix(disk.availableSpace, 2);
    }
  }
  return [0, "B"];
}

Future<MacOsDeviceInfo> getDeviceInfo() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  return deviceInfo.macOsInfo;
}

class _MicroK8sInstallerPageState extends State<MicroK8sInstallerPage> {
  String installEvents = "";
  double selectedCpuCount = 1; // in CPU Core Count (not thread count)
  double selectedMemory = 1; // in GBs
  double selectedDiskSpace = 7; // in GBs

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundPrimary(context),
        body: Stack(
          children: [
            CustomScrollView(slivers: <Widget>[
              CustomSliverAppBar(
                labelText: "Orchestrator Installer",
                actionLabelText: "",
                isBackEnabled: false,
                isActionEnabled: false,
                trailingButtonCallback: () {},
                onStretchTriggerCallback: () {},
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                      margin: EdgeInsets.only(
                          top: 32, bottom: 4, right: 16, left: 16),
                      child: FormInfoText("The lightweight Kubernetes")
                          .build(context)),
                  FutureBuilder<double>(
                    future: HostMachineData().processorCount(),
                    builder: (context, snap) {
                      if (snap.connectionState == ConnectionState.waiting) {
                        return AppProgressIndeterminateWidget();
                      } else {
                        // minimum one core is needed
                        var minCores = 1.0;
                        // keeping one cpu for base os
                        var maxCores = snap.data!;
                        // keeping one division less than total core
                        var coreDivisions = maxCores.toInt() - 1;
                        return NeuSliderWidget(
                          sliderFor: "CPU",
                          sliderValue: "$selectedCpuCount Cores",
                          value: selectedCpuCount,
                          min: minCores,
                          max: maxCores,
                          divisions: coreDivisions,
                          onChanged: (value) {
                            setState(() {
                              selectedCpuCount = value;
                            });
                          },
                        );
                      }
                    },
                  ),
                  FutureBuilder<double>(
                    future: HostMachineData().memoryGiBs(),
                    builder: (context, snap) {
                      if (snap.connectionState == ConnectionState.waiting) {
                        return AppProgressIndeterminateWidget();
                      } else {
                        // minimum one GB of memory is needed
                        var minMemory = 1.0;
                        // keeping 0.25 GB of memory for base os
                        // todo: ensure this conversion is for GB only

                        var maxMemory = snap.data! - 2.0;
                        // keeping one division less than total memory
                        var memoryDivisions = (maxMemory - 1).toInt();
                        return NeuSliderWidget(
                          sliderFor: "Memory",
                          sliderValue: "$selectedMemory GB",
                          value: selectedMemory,
                          min: minMemory,
                          max: maxMemory,
                          divisions: memoryDivisions,
                          onChanged: (value) {
                            setState(() {
                              selectedMemory = value.floorToDouble();
                            });
                          },
                        );
                      }
                    },
                  ),
                  FutureBuilder<double>(
                    future: HostMachineData().diskSpaceGiBs(),
                    builder: (context, snap) {
                      if (snap.connectionState == ConnectionState.waiting) {
                        return AppProgressIndeterminateWidget();
                      } else {
                        // minimum 7GB is needed
                        double minDisk = 7.0;
                        // maximum disk should leave 2GB for base os operations
                        double maxDisk = snap.data! - 2.0;
                        // disk divisions should be calculated in 10s of GBs
                        int diskDivisions = maxDisk ~/ 10 - 1;
                        return NeuSliderWidget(
                          sliderFor: "Disk",
                          sliderValue: "${selectedDiskSpace} GB",
                          value: selectedDiskSpace,
                          min: minDisk,
                          max: maxDisk,
                          divisions: diskDivisions,
                          onChanged: (value) {
                            setState(() {
                              selectedDiskSpace = value.floorToDouble();
                            });
                          },
                        );
                      }
                    },
                  ),
                  Visibility(
                    visible: isInstalling,
                    child: AppProgressIndeterminateWidget(),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
                    child: ActionNeuButton(
                        buttonTitle: "Install",
                        isPrimaryButton: true,
                        isPrimaryButtonDisabled: isInstalling,
                        buttonActionOnPressed: () {
                          installHomebrew();
                        }),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
                    child: Text("$installEvents"),
                  ),
                  SizedBox(height: 32),
                ]),
              )
            ]),
            Visibility(
              visible: isInstalling,
              child: ExecutorLogViewer(),
            ),
          ],
        ));
  }

  bool isInstalling = false;

  installHomebrew() async {
    showNeumorphicSnackBar(context,
        "Setting up Orchestrator, Sometimes it may take more than 10 minutes for the Orchestrator Setup");
    setState(() {
      isInstalling = true;
    });
    showNeumorphicSnackBar(context,
        "Setting up Orchestrator: 1/x: Starting to Install Multipass, downloading may take some time");

    if (Platform.isMacOS) {
      await BrewCommands.install.multipass();
    } else if (Platform.isWindows) {
      await MultipassCommands.version.installWindows();
    }

    if (await MultipassCommands.version.isPresent()) {
      showNeumorphicSnackBar(context,
          "Setting up Orchestrator: 2/x: Starting to Launch VM, downloading may take some time");
      bool isVmLaunched = await MultipassCommands.launch.vm(
          selectedMemory.toInt(),
          selectedCpuCount.toInt(),
          selectedDiskSpace.toInt());
      Map<String, dynamic> vmMeta =
          await MultipassCommands.list.getOrchestratorVmMeta();
      if (vmMeta.isNotEmpty) {
        showNeumorphicSnackBar(
            context, "Setting up Orchestrator: 2/x: Successfully Launched VM");

        await MultipassCommands.exec.updateDNS();
        showNeumorphicSnackBar(
            context, "Setting up Orchestrator: 3/x: Successfully Updated DNS");

        showNeumorphicSnackBar(context,
            "Setting up Orchestrator: 4/x: Starting to update VM, downloading may take some time");
        await MultipassCommands.exec.update();
        showNeumorphicSnackBar(
            context, "Setting up Orchestrator: 4/x: Successfully Updated VM");

        showNeumorphicSnackBar(context,
            "Setting up Orchestrator: 5/x: Starting to upgrade VM, downloading may take some time");
        await MultipassCommands.exec.upgrade();
        showNeumorphicSnackBar(
            context, "Setting up Orchestrator: 5/x: Successfully Upgraded VM");

        showNeumorphicSnackBar(context,
            "Setting up Orchestrator: 6/x: Starting to Install Orchestrator, downloading may take some time");
        await MultipassCommands.exec.installMicrok8s();
        showNeumorphicSnackBar(context,
            "Setting up Orchestrator: 6/x: Successfully Installed Orchestrator");

        showNeumorphicSnackBar(context,
            "Setting up Orchestrator: 7/x: Starting to Update IP Tables, updating records may take some time");
        await MultipassCommands.exec.updateIPTables();
        showNeumorphicSnackBar(context,
            "Setting up Orchestrator: 7/x: Successfully Updated IP Tables");

        showNeumorphicSnackBar(context,
            "Setting up Orchestrator: 8/x: Starting to set Service Permissions");
        await MultipassCommands.exec.addMicrok8sToUserGroup();
        showNeumorphicSnackBar(context,
            "Setting up Orchestrator: 8/x: Successfully Updated Service Permissions");

        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //       content: Text(
        //           "Setting up Orchestrator: 9/x: Starting to set Orchestrator Permissions")),
        // );
        // await MultipassCommands.exec.updateKubePermissions();
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //       content: Text(
        //           "Setting up Orchestrator: 9/x: Successfully Updated Orchestrator Permissions")),
        // );

        showNeumorphicSnackBar(
            context, "Congratulations, Orchestrator Successfully Started!");
      } else {
        showNeumorphicSnackBar(context,
            "Setting up Orchestrator: 2/x: Could not Launch VM, Something went wrong, please try again later");
        setState(() {
          isInstalling = false;
        });
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(
                "Setting up Orchestrator: 1/x: Could not Install Multipass, Something went wrong, please try again later")),
      );
      setState(() {
        isInstalling = false;
      });
    }

    // MultipassCommands.exec.
    // todo: add script to create the "ethosverse" namespace
    // microk8s kubectl create namespace ethosverse
    // todo: add script to run the mvfs in "ethosverse" namespace
    await Future.delayed(Duration(seconds: 30));
    widget.onSuccessfullInstall();
    setState(() {
      isInstalling = false;
    });
    widget.onSuccessfullInstall();
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
