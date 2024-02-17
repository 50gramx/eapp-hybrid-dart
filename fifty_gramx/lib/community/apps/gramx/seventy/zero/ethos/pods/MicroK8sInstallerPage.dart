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
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:universal_disk_space/universal_disk_space.dart';

/// This is the stateful widget that the main application instantiates.
class MicroK8sInstallerPage extends StatefulWidget {
  const MicroK8sInstallerPage({
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
      body: CustomScrollView(slivers: <Widget>[
        CustomSliverAppBar(
          labelText: "MicroK8s Installer",
          actionLabelText: "",
          isBackEnabled: true,
          isActionEnabled: false,
          trailingButtonCallback: () {},
          onStretchTriggerCallback: () {},
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child:
                    FormInfoText("The lightweight Kubernetes").build(context)),
            FutureBuilder<double>(
              future: HostMachineData().processorCount(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  // minimum one core is needed
                  var minCores = 1.0;
                  // keeping one cpu for base os
                  var maxCores = snap.data!.activeCPUs.toDouble() - 1;
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
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
              child: ActionNeuButton(
                  buttonTitle: "Install",
                  isPrimaryButton: true,
                  isPrimaryButtonDisabled: isInstalling,
                  buttonActionOnPressed: () {
                    installHomebrew();
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
              child: Text("$installEvents"),
            ),
            SizedBox(height: 32),
          ]),
        )
      ]),
    );
  }

  bool isInstalling = false;

  installHomebrew() async {
    setState(() {
      isInstalling = true;
    });
    // await BrewCommands.install.multipass();
    await MultipassCommands.launch.vm(selectedMemory.toInt(),
        selectedCpuCount.toInt(), selectedDiskSpace.toInt());
    await MultipassCommands.exec.updateDNS();
    await MultipassCommands.exec.update();
    await MultipassCommands.exec.upgrade();
    await MultipassCommands.exec.installMicrok8s();
    await MultipassCommands.exec.updateIPTables();
    await MultipassCommands.exec.addMicrok8sToUserGroup();
    await MultipassCommands.exec.updateKubePermissions();
    // MultipassCommands.exec.
    // todo: add script to create the "ethosverse" namespace
    // microk8s kubectl create namespace ethosverse
    // todo: add script to run the mvfs in "ethosverse" namespace
    setState(() {
      isInstalling = false;
    });
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
