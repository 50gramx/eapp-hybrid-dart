import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/widgets/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/widgets/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/basicConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/switchConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/ethosPod/HomebrewInstallerPage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/ethosPod/MicroK8sInstallerPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:grpc/grpc.dart' hide ConnectionState;
import 'package:process_run/shell.dart';
import 'package:universal_disk_space/universal_disk_space.dart';

import '../../custom/pushHorizontalPage.dart';

/// This is the stateful widget that the main application instantiates.
class MachineConfigurationPage extends StatefulWidget {
  const MachineConfigurationPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MachineConfigurationPage> createState() =>
      _MachineConfigurationPageState();
}

Future<MacOsDeviceInfo> getDeviceInfo() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  return deviceInfo.macOsInfo;
}

String formatBytes(int bytes, int decimals) {
  if (bytes <= 0) return "0 B";
  const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
  var i = (log(bytes) / log(1024)).floor();
  return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) + ' ' + suffixes[i];
}

Future<String> getDiskSpace() async {
  final diskSpace = DiskSpace();
  // scan for disks in the system
  await diskSpace.scan();
  // list of disks in the system
  var disks = diskSpace.disks;

  // Prints the device path, mount path, and total size of each disk in system.
  for (final disk in disks) {
    if (disk.mountPath == "/System/Volumes/Data") {
      return "${formatBytes(disk.availableSpace, 2)} of ${formatBytes(disk.totalSize, 2)}";
    }
  }
  return "NA";
}

Future<String> getHomebrewVersion() async {
  try {
    var shell = Shell(runInShell: true);
    var homebrewVersionText = (await shell.run("/usr/local/bin/brew -v")).outText;
    if (homebrewVersionText.length > 0) {
      return LineSplitter.split(homebrewVersionText).first.substring(9);
    } else {
      return "NA";
    }
  } catch (e) {
    print("found exception --> $e");
    return "NA";
  }
}

Future<String> getMultipassVersion() async {
  try {
    var shell = Shell(runInShell: true);
    var multipassVersionText = (await shell.run("/usr/local/bin/multipass version")).outText;
    if (multipassVersionText.length > 0) {
      return LineSplitter.split(multipassVersionText)
          .first
          .substring(12)
          .replaceFirst("+mac", '');
    } else {
      return "NA";
    }
  } catch (e) {
    print("found exception --> $e");
    return "NA";
  }
}


Future<String> getMicrok8sVersion() async {
  try {
    var shell = Shell(runInShell: true);
    var multipassListText =
        (await shell.run("/usr/local/bin/multipass list --format=json")).outText;
//    var microk8sVersionText =
//        (await shell.run("microk8s kubectl version")).outText;
    if (multipassListText.length > 0) {
      var multipassListJson = json.decode(multipassListText);
      return multipassListJson["list"][0]["state"];
    } else {
      return "NA";
    }
  } catch (e) {
    print("found exception --> $e");
    return "NA";
  }
}

class _MachineConfigurationPageState extends State<MachineConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary(context),
      body: CustomScrollView(slivers: <Widget>[
        CustomSliverAppBar(
          labelText: "Galaxy Machines",
          actionLabelText: "",
          isBackEnabled: true,
          isActionEnabled: false,
          trailingButtonCallback: () {},
          onStretchTriggerCallback: () {},
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            // ------------------------------------------------
            // This Machine
            // ------------------------------------------------

            FutureBuilder<MacOsDeviceInfo>(
              future: getDeviceInfo(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return Container(
                      margin: EdgeInsets.only(
                          top: 32, bottom: 4, right: 16, left: 16),
                      child: FormInfoText(snap.data!.computerName.toUpperCase())
                          .build(context));
                }
              },
            ),

            FutureBuilder<MacOsDeviceInfo>(
              future: getDeviceInfo(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "MacOS",
                      subtitleText: "${snap.data!.osRelease}");
                }
              },
            ),
            FutureBuilder<MacOsDeviceInfo>(
              future: getDeviceInfo(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Mother CPUs",
                      subtitleText: "${snap.data!.activeCPUs}");
                }
              },
            ),
            FutureBuilder<MacOsDeviceInfo>(
              future: getDeviceInfo(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Attached Memory",
                      subtitleText: formatBytes(snap.data!.memorySize, 2));
                }
              },
            ),

            FutureBuilder<String>(
              future: getDiskSpace(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Free Storage", subtitleText: snap.data!);
                }
              },
            ),

            // ------------------------------------------------
            // ETHOS POD ORCHESTRATOR
            // ------------------------------------------------

            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("ETHOS POD ORCHESTRATOR").build(context)),

            FutureBuilder<String>(
              future: getHomebrewVersion(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  if (snap.data! == "NA") {
                    return SelectorConfigurationItem(
                        titleText: "Homebrew",
                        subtitleText: "Install",
                        selectorCallback: () {
                          AppPushPage().pushHorizontalPage(
                              context, HomebrewInstallerPage());
                        });
                  } else {
                    return BasicConfigurationItem(
                        titleText: "Homebrew", subtitleText: snap.data!);
                  }
                }
              },
            ),

            FutureBuilder<String>(
              future: getMultipassVersion(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Multipass", subtitleText: snap.data!);
                }
              },
            ),


            FutureBuilder<String>(
              future: getMicrok8sVersion(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return AppProgressIndeterminateWidget();
                  case ConnectionState.none:
                    return Text('No Connection State');
                  case ConnectionState.active:
                    return Text('Connection Active');
                  case ConnectionState.done:
                    if (snapshot.hasData) {
                      if (snapshot.data == "NA") {
                        return SelectorConfigurationItem(
                            titleText: "MicroK8s",
                            subtitleText: "Install",
                            selectorCallback: () {
                              AppPushPage().pushHorizontalPage(
                                  context, MicroK8sInstallerPage());
                            });
                      } else if (snapshot.data == "Stopped" ||
                          snapshot.data == "Running") {
                        return SwitchConfigurationItem(
                            titleText: "MicroK8s",
                            isEnabled: true,
                            switchValue: snapshot.data == "Running" ? true : false,
                            switchOnChanged: (value) {
                              if (value) {
                                startMicrok8s();
                              } else {
                                stopMicrok8s();
                              }
                            });
                      } else {
                        return BasicConfigurationItem(
                            titleText: "MicroK8s", subtitleText: snapshot.data!);
                      }
                    } else {
                      return Text("Connection Done but No Data");
                    }
                  default:
                    return Text('Error: ${snapshot.error}');
                }
              },
            ),

            // ------------------------------------------------
            // ETHOS GALAXY POD
            // ------------------------------------------------

            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("GALAXY IDENTITY POD DESCRIPTION")
                    .build(context)),
            SwitchConfigurationItem(
                titleText: "Network Pod",
                switchValue: isPodOn["nwk"]!,
                switchOnChanged: (value) {
                  switchPod("nwk");
                }),
            SwitchConfigurationItem(
                titleText: "File System Pod",
                isEnabled: isPodOn["nwk"]!,
                switchValue: isPodOn["fs"]!,
                switchOnChanged: (value) {
                  if (isPodOn["fs"] == false) {
                    deployGalaxyFS();
                    switchPod("fs");
                  }
                }),
            SwitchConfigurationItem(
                titleText: "Chains Pod",
                isEnabled: isPodOn["fs"]!,
                switchValue: isPodOn["xc"]!,
                switchOnChanged: (value) {
                  switchPod("xc");
                }),

//            FutureBuilder<String>(
//              future: checkKnowledgeSpaceChains(),
//              builder: (context, snap) {
//                switch (snap.connectionState) {
//                  case ConnectionState.waiting:
//                    return const CircularProgressIndicator();
//                  default:
//                    if (snap.hasError) {
//                      return Text('Error: ${snap.error}');
//                    } else {
//                      if (snap.hasData) {
//                        if (snap.data == "NA") {
//                          return SelectorConfigurationItem(
//                              titleText: "Knowledge Space Chains",
//                              subtitleText: "Install",
//                              selectorCallback: () {
//                                AppPushPage().pushHorizontalPage(
//                                    context, MicroK8sInstallerPage());
//                              });
//                        } else if (snap.data == "Stopped" ||
//                            snap.data == "Running") {
//                          return SwitchConfigurationItem(
//                              titleText: "MicroK8s",
//                              isEnabled: true,
//                              switchValue: snap.data == "Running" ? true : false,
//                              switchOnChanged: (value) {
//                                if (value) {
//                                  startMicrok8s();
//                                } else {
//                                  stopMicrok8s();
//                                }
//                              });
//                        } else {
//                          return BasicConfigurationItem(
//                              titleText: "MicroK8s", subtitleText: snap.data!);
//                        }
//                      } else {
//                        return Text('hasNoData: ${snap.error}');
//                      }
//                    }
//                }
//              },
//            ),

            // TODO: Fetch actual data
            // ------------------------------------------------
            // STAR NODES
            // ------------------------------------------------
            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("STAR NODES").build(context)),
            BasicConfigurationItem(
                titleText: "Richard's AWS Node", subtitleText: "Delaware, USA"),
            // TODO: Fetch actual data
            SizedBox(height: 32),
          ]),
        )
      ]),
    );
  }

  Map<String, bool> isPodOn = {
    "nwk": true,
    "fs": false,
    "xc": false,
  };

  switchPod(whichPod) {
    setState(() {
      isPodOn[whichPod] = isPodOn[whichPod]! ? false : true;
    });
  }

  Future<String> getMicrok8sStatus() async {
    var shell = Shell();
    try {
      var statusText = (await shell.run("microk8s status")).outText;
      if (statusText ==
          "MicroK8s is not running. Please run `microk8s start`.") {
        return "Inactive";
      } else if (statusText.substring(0, 19) == "microk8s is running") {
        return "Active";
      } else {
        return "Inactive";
      }
    } on ProcessException {
      print("found exception");
      return "NA";
    } catch (e) {
      print("found exception:: $e");
      return "NA";
    }
  }

  deployGalaxyFS() async {
    print("deployGalaxyFS");
    var shell = Shell();
    var statusText = (await shell.run(
            "microk8s kubectl apply -f /opt/ethos/wiki/eapp-wiki/config/devops/ethos-pod/orchestration-charts/eapp-pods-galaxy/basic/deployment.yaml"))
        .outText;
    print(statusText);
  }

  bool switchingMicrok8s = false;

  startMicrok8s() async {
    var shell = Shell();
    try {
      setState(() {
        switchingMicrok8s = true;
      });
      var statusText = (await shell.run("microk8s start")).outText;
      setState(() {
        switchingMicrok8s = false;
      });
    } catch (e) {
      setState(() {
        switchingMicrok8s = false;
      });
      print("Exception: $e");
    }
    setState(() {});
  }

  stopMicrok8s() async {
    var shell = Shell();
    try {
      setState(() {
        switchingMicrok8s = true;
      });
      var statusText = (await shell.run("multipass stop microk8s-vm")).outText;
      print("statusText: $statusText");
      setState(() {
        switchingMicrok8s = false;
      });
    } catch (e) {
      setState(() {
        switchingMicrok8s = false;
      });
      print("Exception: $e");
    }
    setState(() {});
  }

  checkKnowledgeSpaceChains() async {
    var shell = Shell();
    try {
      setState(() {

      });
    } catch (e) {

    }

  }

  @override
  void initState() {
    super.initState();
  }
}
