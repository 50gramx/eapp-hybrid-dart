import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Container/NeuContainer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuSlider/NeuSliderWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/HostMachineData.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/brew/brewCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/executor_log_viewer.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/neumorphic_snackbar.dart';
import 'package:fifty_gramx/firebase_configurations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
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
  double maxCores = 2;
  double maxMemory = 2;
  double maxDisk = 10;

  List<String> installSteps = [
    "Downloading VM Manager...",
    "Launching VM...",
    "Updating DNS...",
    "Updating VM...",
    "Upgrading VM...",
    "Installing Orchestrator...",
    "Updating IP Tables...",
    "Setting Service Permissions...",
    "Installing Private Network...",
    "Registering Node...",
    "Connecting Node...",
    "Joining Worker Node...",
  ];
  bool isInstalling = false;
  int currentStep = 0;

  @override
  void initState() {
    super.initState();
    // Initialize the sliders with initial data from async calls
    initHostMachineData();
  }

  Future<void> initHostMachineData() async {
    // Set initial values for CPU, Memory, and Disk based on the host data
    maxCores = await HostMachineData().processorCount();
    maxMemory = await HostMachineData().memoryGiBs();
    maxDisk = await HostMachineData().diskSpaceGiBs();

    setState(() {
      selectedCpuCount = maxCores;
      selectedMemory = maxMemory - 2.0; // Reserve 2GB for base OS
      selectedDiskSpace = maxDisk - 2.0; // Reserve 2GB for base OS
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary(context),
      body: CustomScrollView(slivers: <Widget>[
        CustomSliverAppBar(
          labelText: "Setup eNode",
          actionLabelText: "",
          isBackEnabled: false,
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
                    FormInfoText("START EARNING BY RUNNING A SLICE OF 50GRAMX")
                        .build(context)),
            if (!isInstalling) buildCpuSlider(),
            if (!isInstalling) buildMemorySlider(),
            if (!isInstalling) buildDiskSlider(),
            // Installation progress checklist
            if (isInstalling) buildInstallationProgress(),

            Visibility(
              visible: isInstalling,
              child: ExecutorLogViewer(),
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
              child: ActionNeuButton(
                  buttonTitle: "Cancel",
                  isPrimaryButton: false,
                  isPrimaryButtonDisabled: isInstalling,
                  buttonActionOnPressed: () {
                    Navigator.of(context).pop();
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

  Widget buildCpuSlider() {
    return NeuSliderWidget(
      sliderFor: "CPU",
      sliderValue: "$selectedCpuCount Cores",
      value: selectedCpuCount,
      min: 1.0,
      max: maxCores,
      divisions: (maxCores - 1).toInt(),
      onChanged: (value) {
        setState(() {
          selectedCpuCount = value;
        });
      },
    );
  }

  Widget buildMemorySlider() {
    return NeuSliderWidget(
      sliderFor: "Memory",
      sliderValue: "$selectedMemory GB",
      value: selectedMemory,
      min: 1.0,
      max: maxMemory,
      divisions: (maxMemory - 1).toInt(),
      onChanged: (value) {
        setState(() {
          selectedMemory = value.floorToDouble();
        });
      },
    );
  }

  Widget buildDiskSlider() {
    return NeuSliderWidget(
      sliderFor: "Disk",
      sliderValue: "${selectedDiskSpace} GB",
      value: selectedDiskSpace,
      min: 7.0,
      max: maxDisk,
      divisions: (maxDisk ~/ 10) - 1,
      onChanged: (value) {
        setState(() {
          selectedDiskSpace = value.floorToDouble();
        });
      },
    );
  }

  Widget buildInstallationProgress() {
    int maxVisibleSteps = 4; // Maximum number of visible steps
    List<Widget> visibleSteps = [];

    // Determine the range of steps to display
    if (currentStep < maxVisibleSteps) {
      // If the current step is within the first 4 steps, show them
      visibleSteps =
          installSteps.asMap().entries.take(maxVisibleSteps).map((entry) {
        int index = entry.key;
        String step = entry.value;
        return ListTile(
          leading: Icon(
            index < currentStep
                ? Icons.check_circle
                : Icons.radio_button_unchecked,
            color: index < currentStep
                ? AppColors.contentPositive(context)
                : AppColors.contentStateDisabled(context),
          ),
          title: Text(
            step,
            style: TextStyle(
              color: AppColors.contentPrimary(context),
              fontSize: 14,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }).toList();
    } else {
      // If current step is beyond the first 4, include the current step and 3 others
      visibleSteps = installSteps
          .asMap()
          .entries
          .skip(currentStep - maxVisibleSteps + 1)
          .take(maxVisibleSteps -
              1) // Show (maxVisibleSteps - 1) items before current
          .map((entry) {
        int index = entry.key;
        String step = entry.value;
        return ListTile(
          leading: Icon(
            index < currentStep
                ? Icons.check_circle
                : Icons.radio_button_unchecked,
            color: index < currentStep
                ? AppColors.contentPositive(context)
                : AppColors.contentStateDisabled(context),
          ),
          title: Text(
            step,
            style: TextStyle(
              color: AppColors.contentPrimary(context),
              fontSize: 14,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
          ),
        );
      }).toList();
      // Add current step at the end
      visibleSteps.add(
        ListTile(
          leading: Icon(
            Icons.radio_button_unchecked,
            color: AppColors.contentPrimary(context),
          ),
          title: Text(
            installSteps[currentStep],
            style: TextStyle(
              color: AppColors.contentPrimary(context),
              fontSize: 14,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    }

    // Add a progress indicator for remaining steps if necessary
    if (installSteps.length > maxVisibleSteps) {
      int remainingSteps = installSteps.length - currentStep - 1;

      visibleSteps.add(
        ListTile(
          leading: CircularProgressIndicator.adaptive(), // Show progress
          title: Text(
            '$remainingSteps more steps...',
            style: TextStyle(
              color: AppColors.contentStateDisabled(context),
              fontSize: 14,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );
    }

    return NeuContainer(
      containerChild: Column(
        children: visibleSteps,
      ),
    );
  }

  installHomebrew() async {
    setState(() {
      isInstalling = true;
      currentStep = 0;
    });
    try {
      await updateProgress(
          0, "Starting to Install VM Manager, downloading may take some time");

      if (Platform.isMacOS) {
        await BrewCommands.install.multipass();
      } else if (Platform.isWindows) {
        await MultipassCommands.version.installWindows();
      }

      if (await MultipassCommands.version.isPresent()) {
        await updateProgress(
            1, "Starting to Launch VM, downloading may take some time");

        try {
          bool isVmLaunched = await MultipassCommands.launch.vm(
              selectedMemory.toInt(),
              selectedCpuCount.toInt(),
              selectedDiskSpace.toInt());
        } catch (e, st) {
          print("error: $e, stacktrace: $st");
          Future.delayed(Duration(seconds: 150), () {});

          crashlyticsRecordError(e, st);
        }

        Map<String, dynamic> vmMeta =
            await MultipassCommands.list.getOrchestratorVmMeta();
        if (vmMeta.isNotEmpty) {
          await updateProgress(1, "Successfully Launched VM");
          await MultipassCommands.exec.updateDNS();
          await updateProgress(2, "Successfully Updated DNS");
          await updateProgress(3, "Starting to update VM");
          await MultipassCommands.exec.update();
          await updateProgress(3, "Successfully Updated VM");
          await updateProgress(4, "Starting to upgrade VM");
          await MultipassCommands.exec.upgrade();
          await updateProgress(4, "Successfully Upgraded VM");
          await updateProgress(5, "Starting to Install Orchestrator");
          await MultipassCommands.exec.installMicrok8s();
          await updateProgress(5, "Successfully Installed Orchestrator");
          await updateProgress(6, "Starting to Update IP Tables");
          await MultipassCommands.exec.updateIPTables();
          await updateProgress(6, "Successfully Updated IP Tables");
          await updateProgress(7, "Starting to set Service Permissions");
          await MultipassCommands.exec.addMicrok8sToUserGroup();
          await updateProgress(7, "Successfully Updated Service Permissions");
          await updateProgress(8, "Starting to setup private network");
          await MultipassCommands.exec.installOvpn();
          await updateProgress(8, "Successfully installed private network");
          await updateProgress(9, "Starting to register this node");
          await MultipassCommands.exec.generate();
          await updateProgress(9, "Successfully registered this node");
          await updateProgress(10, "Starting to connect this node");
          await MultipassCommands.exec.registerClientOVPN();
          await updateProgress(10, "Successfully connected this node");
          await updateProgress(11, "Starting to join as worker node");
          await MultipassCommands.exec.joinMicrok8sWorkerNode();
          await updateProgress(11, "Successfully joined as a node");
          // await MultipassCommands.exec.updateKubePermissions();

          showNeumorphicSnackBar(
              context, "Congratulations, Orchestrator Successfully Started!");
        } else {
          await updateProgress(1, "Could not Launch VM, Something went wrong");
          await Future.delayed(Duration(seconds: 10), () {});
          setState(() {
            isInstalling = false;
          });
        }
      } else {
        await updateProgress(
            0, "Could not Install VM Manager, Something went wrong");
        await Future.delayed(Duration(seconds: 30));
        setState(() {
          isInstalling = false;
        });
      }
    } catch (e) {
      setState(() {
        installEvents += "\nError: ${e.toString()}";
        isInstalling = false;
      });
      showNeumorphicSnackBar(context, "Installation failed: ${e.toString()}");
    } finally {
      widget.onSuccessfullInstall();
      setState(() {
        isInstalling = false;
      });
      Navigator.of(context).pop();
    }
  }

  Future<void> updateProgress(int stepIndex, String message) async {
    setState(() {
      currentStep = stepIndex;
    });
    showNeumorphicSnackBar(context, message);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
