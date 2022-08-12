import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/support/command/simpleCommandExecuter.dart';
import 'package:fifty_gramx/widgets/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/widgets/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/widgets/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/basicConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/switchConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/ethosPod/HomebrewInstallerPage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/ethosPod/HostUserDetailsPage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/ethosPod/MicroK8sInstallerPage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/ethosPod/deploy/mutliverse/multiversePodOperator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:process_run/shell.dart';
import 'package:universal_disk_space/universal_disk_space.dart';

import '../../custom/pushHorizontalPage.dart';
import 'MultipassInstallerPage.dart';

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

Future<String> getHostPublicIPAddress() async {
  try {
    var shell = Shell(runInShell: true);
    // return the host public ip address
    return (await shell.run("curl http://ifconfig.me/ip")).outText;
  } catch (e) {
    print("found exception --> $e");
    return "NA";
  }
}

Future<String> getHostPrivateIPAddress() async {
  try {
    var shell = Shell(runInShell: true);
    // return the host ip private address
    return (await shell.run("ipconfig getifaddr en0")).outText;
  } catch (e) {
    print("found exception --> $e");
    return "NA";
  }
}

Future<String> getHomebrewVersion() async {
  try {
    var shell = Shell(runInShell: true);
    // check if ARM MacOS or Intel MacOS
    var whichMacOS = (await shell.run("uname -m")).outText;
    if (whichMacOS == "arm64") {
      var homebrewVersionText =
          (await shell.run("/opt/homebrew/bin/brew -v")).outText;
      if (homebrewVersionText.length > 0) {
        return LineSplitter.split(homebrewVersionText).first.substring(9);
      } else {
        return "NA";
      }
    } else {
      var homebrewVersionText =
          (await shell.run("/usr/local/bin/brew -v")).outText;
      if (homebrewVersionText.length > 0) {
        return LineSplitter.split(homebrewVersionText).first.substring(9);
      } else {
        return "NA";
      }
    }
  } catch (e) {
    print("found exception --> $e");
    return "NA";
  }
}

Future<String> getMultipassVersion() async {
  try {
    var shell = Shell(runInShell: true);
    var multipassVersionText =
        (await shell.run("/usr/local/bin/multipass version")).outText;
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

String parseK8sStatus(outputText) {
  var statusText = LineSplitter.split(outputText).first;
  if (statusText == "MicroK8s is not running. Please run `microk8s start`.") {
    return "Stopped";
  } else if (statusText == "microk8s is running") {
    return "Running";
  } else {
    return "Inactive";
  }
}

Future<String> getK8sStatus() async {
  try {
    var shell = Shell(runInShell: true);
    var command = '''
    /usr/local/bin/multipass exec ethos-pods-orchestrator-vm microk8s status
    ''';
    var output = (await shell.run(command)).outText;
    return parseK8sStatus(output);
    ;
  } catch (e) {
    print("found exception --> $e");
    return "NA";
  }
}

Future<String> getMicrok8sVersion() async {
  try {
    var shell = Shell(runInShell: true);
    var multipassListText =
        (await shell.run("/usr/local/bin/multipass list --format=json"))
            .outText;

    if (multipassListText.length > 0) {
      // it means we've data
      var multipassListJson = json.decode(multipassListText);
      // let's check if we've any list of data
      if (multipassListJson["list"].length > 0) {
        // it means we've one or more vm's
        // check if vm's name is ethos-pods-orchestrator-vm in the list of vm's
        for (int vmIndex = 0;
            vmIndex < multipassListJson["list"].length;
            vmIndex++) {
          if (multipassListJson["list"][vmIndex]["name"] ==
              "ethos-pods-orchestrator-vm") {
            // it means the vm is there
            // let's check it's status
            if (multipassListJson["list"][vmIndex]["state"] == "Running") {
              // vm is running
              // check the microk8s status
              return await getK8sStatus();
            } else {
              return "Stopped";
            }
          } else {
            return "Deleted";
          }
        }
      } else {
        // it means we don't have vm's
        return "NA";
      }
    } else {
      return "NA";
    }
  } catch (e) {
    print("found exception --> $e");
    return "NA";
  }
  return "NA";
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

            FutureBuilder<List<ProcessResult>>(
              future: SimpleCommandExecuter.run("id -F"),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return SelectorConfigurationItem(
                      titleText: "${snap.data!.outText}",
                      subtitleText: "Update",
                      selectorCallback: () {
                        AppPushPage()
                            .pushHorizontalPage(context, HostUserDetailsPage());
                      });
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
                      titleText: "Core CPUs",
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
                      titleText: "Memory",
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

            FutureBuilder<String>(
              future: getHostPublicIPAddress(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Public IP", subtitleText: snap.data!);
                }
              },
            ),

            FutureBuilder<String>(
              future: getHostPrivateIPAddress(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Private IP", subtitleText: snap.data!);
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
                  if (snap.data! == "NA") {
                    return SelectorConfigurationItem(
                        titleText: "Multipass",
                        subtitleText: "Install",
                        selectorCallback: () {
                          AppPushPage().pushHorizontalPage(
                              context, MultipassInstallerPage());
                        });
                  } else {
                    return BasicConfigurationItem(
                        titleText: "Multipass", subtitleText: snap.data!);
                  }
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
                      if (snapshot.data == "NA" || snapshot.data == "Deleted") {
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
                            switchValue:
                                snapshot.data == "Running" ? true : false,
                            switchOnChanged: (value) {
                              if (value) {
                                startMicrok8s();
                              } else {
                                stopMicrok8s();
                              }
                            });
                      } else {
                        return BasicConfigurationItem(
                            titleText: "MicroK8s",
                            subtitleText: snapshot.data!);
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
            // ETHOS MULTIVERSE POD
            // ------------------------------------------------
            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("MULTIVERSE PODS").build(context)),
            SwitchConfigurationItem(
                titleText: "File System",
                switchValue: MultiversePodOperator.fsOp.isUp(),
                switchOnChanged: (value) {
                  if (!value) {
                    // user requested to stop the pod
                    MultiversePodOperator.fsOp.spinDown();
                    setState(() {});
                  } else {
                    // user requested to start the pod
                    MultiversePodOperator.fsOp.spinUp();
                    setState(() {});
                  }
                }),

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
      setState(() {});
    } catch (e) {}
  }

  @override
  void initState() {
    super.initState();
  }
}
