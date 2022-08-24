import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/HomebrewInstallerPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/HostUserDetailsPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/MicroK8sInstallerPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/brew/brewCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/simpleCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/kubectlCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/microk8s/microk8sCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/operators/mutliverse/chains/multiverseChainsOperator.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/operators/mutliverse/filesystem/multiverseFileSystemOperator.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/operators/mutliverse/multiversePodOperator.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/basicConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/switchConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/pushHorizontalPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:process_run/shell.dart';
import 'package:universal_disk_space/universal_disk_space.dart';

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

class _MachineConfigurationPageState extends State<MachineConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    // we need add L4 level check to verify the status of the pod
    var multiverseFileSystemPodStatusInteraction = FutureBuilder<bool>(
        future: MultiverseFileSystemOperator().checkPodStatus(),
        builder: (context, snapshotMultiverseFileSystemPodStatus) {
          switch (snapshotMultiverseFileSystemPodStatus.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.none:
            case ConnectionState.active:
              return AppProgressIndeterminateWidget();
            case ConnectionState.done:
              print(
                  "snapshotMultiverseFileSystemPodStatus: $snapshotMultiverseFileSystemPodStatus");
              if (snapshotMultiverseFileSystemPodStatus.hasData) {
                return SwitchConfigurationItem(
                    titleText: "File System",
                    switchValue: snapshotMultiverseFileSystemPodStatus.data!,
                    switchOnChanged: (value) {
                      print("switchOnChanged: $value");
                      if (!value) {
                        // user requested to stop the pod
                        print("MultiversePodOperator.fsOp.spinDown()");
                        MultiversePodOperator.fsOp.spinDown();
                        setState(() {});
                      } else {
                        // user requested to start the pod
                        MultiversePodOperator.fsOp.spinUp();
                        setState(() {});
                      }
                    });
              } else {
                return SizedBox();
              }
            default:
              return SizedBox();
          }
        });
    var multiverseChainsIdentityPodStatusInteraction = FutureBuilder<bool>(
        future: MultiverseChainsOperator().checkPodStatus(allChains: true),
        builder: (context, snapshotMultiverseChainsIdentityPodStatus) {
          switch (snapshotMultiverseChainsIdentityPodStatus.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.none:
            case ConnectionState.active:
              return AppProgressIndeterminateWidget();
            case ConnectionState.done:
              print(
                  "snapshotMultiverseChainsIdentityPodStatus: $snapshotMultiverseChainsIdentityPodStatus");
              if (snapshotMultiverseChainsIdentityPodStatus.hasData) {
                return SwitchConfigurationItem(
                    titleText: "Identity Chains",
                    switchValue:
                        snapshotMultiverseChainsIdentityPodStatus.data!,
                    switchOnChanged: (value) {
                      if (!value) {
                        // user requested to stop the pod
                        MultiversePodOperator.xcOp.spinDown();
                        setState(() {});
                      } else {
                        // user requested to start the pod
                        MultiversePodOperator.xcOp.spinUp();
                        setState(() {});
                      }
                    });
              } else {
                return SizedBox();
              }
            default:
              return SizedBox();
          }
        });
    var multiversePodsWidgets = Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
            child: FormInfoText("MULTIVERSE PODS").build(context)),
        multiverseFileSystemPodStatusInteraction,
        multiverseChainsIdentityPodStatusInteraction,
        SwitchConfigurationItem(
          titleText: "Identity Capabilities",
          switchValue: false,
          switchOnChanged: (value) {},
        ),
      ],
    );

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
                      subtitleText: "Update Password",
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
              future: BrewCommands.version(),
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
                    // Based on the understanding that user won't need this any
                    // longer, so removing this
                    return SizedBox();
                    // return BasicConfigurationItem(
                    //     titleText: "Homebrew", subtitleText: snap.data!);
                  }
                }
              },
            ),

            FutureBuilder<String>(
              future: Microk8sCommands.status.orchestratorStatus(),
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
                      switch (snapshot.data) {
                        case ("RUNNING, STOPPED"):
                        case ("RUNNING, RUNNING"):
                        case ("RUNNING, INACTIVE"):
                        case ("STOPPED, UNAVAILABLE"):
                          {
                            return SwitchConfigurationItem(
                                titleText: "Orchestrator",
                                isEnabled: true,
                                switchValue: snapshot.data == "RUNNING, RUNNING"
                                    ? true
                                    : false,
                                switchOnChanged: (value) {
                                  if (value) {
                                    MultipassCommands.start.orchestrator();
                                    // TODO: Add notification so that the correct
                                    // switch values are reflected
                                    setState(() {});
                                  } else {
                                    MultipassCommands.stop.orchestrator();
                                    // TODO: Add notification so that the correct
                                    // switch values are reflected
                                    setState(() {});
                                  }
                                });
                          }
                        case ("UNAVAILABLE, UNAVAILABLE "):
                          {
                            return SelectorConfigurationItem(
                                titleText: "Orchestrator",
                                subtitleText: "Install",
                                selectorCallback: () {
                                  AppPushPage().pushHorizontalPage(
                                      context, MicroK8sInstallerPage());
                                });
                          }
                        default:
                          {
                            return BasicConfigurationItem(
                                titleText: "Orchestrator",
                                subtitleText: snapshot.data!);
                          }
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

            // NOTE: this should only be visible to gramx collaborators
            // that too, collaborators associated with 50gramx
            // we can call them (core collaborators)
            // and this check as L1 Check

            // NOTE: this should only be visible after L1 Check is a success
            // And only when the Pod Orchestrator is up and running,
            // if the orchestrator is not working, it should not be executed or
            // visible in the screen, let's call this L2 Check

            // we need to run this command
            // kubectl get namespaces
            // check if the list has "ethosverse" namespace
            // if available, proceed
            // if not, create namespace
            // Let's call this L3 Check

            // L1 Check
            Visibility(
                visible: true, // TODO: update this with L1 Check
                child: FutureBuilder<bool>(
                  future: Microk8sCommands.status.isOrchestratorRunning(),
                  builder: (context, snapshotOrchestratorStatus) {
                    switch (snapshotOrchestratorStatus.connectionState) {
                      case ConnectionState.waiting:
                        {
                          return AppProgressIndeterminateWidget();
                        }
                      case ConnectionState.none:
                      case ConnectionState.active:
                        {
                          return SizedBox();
                        }
                      case ConnectionState.done:
                        {
                          if (snapshotOrchestratorStatus.hasData) {
                            return Visibility(
                              visible: snapshotOrchestratorStatus.data!,
                              child: FutureBuilder<bool>(
                                future: KubectlCommands.get.namespaced.namespace
                                    .isEthosverseExists(),
                                builder:
                                    (context, snapshotMultiverseNamespace) {
                                  switch (snapshotMultiverseNamespace
                                      .connectionState) {
                                    case ConnectionState.waiting:
                                    case ConnectionState.none:
                                    case ConnectionState.active:
                                      return AppProgressIndeterminateWidget();
                                    case ConnectionState.done:
                                      {
                                        if (snapshotMultiverseNamespace
                                            .hasData) {
                                          if (snapshotMultiverseNamespace
                                              .data!) {
                                            // if the ethosverse namespace exists,
                                            // return the widget
                                            return multiversePodsWidgets;
                                          } else {
                                            // if not, then create the resource,
                                            // setState() after creating
                                            return FutureBuilder<bool>(
                                                future: KubectlCommands
                                                    .create.namespaced.namespace
                                                    .ethosverse(),
                                                builder: (context,
                                                    snapshotCreateResource) {
                                                  switch (snapshotCreateResource
                                                      .connectionState) {
                                                    case ConnectionState
                                                        .waiting:
                                                    case ConnectionState.none:
                                                    case ConnectionState.active:
                                                      {
                                                        return AppProgressIndeterminateWidget();
                                                      }
                                                    case ConnectionState.done:
                                                      {
                                                        if (snapshotCreateResource
                                                            .hasData) {
                                                          if (snapshotCreateResource
                                                              .data!) {
                                                            return multiversePodsWidgets;
                                                          } else {
                                                            return Text(
                                                                "Couldn't create ethosverse resource");
                                                          }
                                                        } else {
                                                          return SizedBox();
                                                        }
                                                      }
                                                    default:
                                                      {
                                                        return SizedBox();
                                                      }
                                                  }
                                                });
                                          }
                                        } else {
                                          return SizedBox();
                                        }
                                      }
                                    default:
                                      {
                                        return SizedBox();
                                      }
                                  }
                                },
                              ),
                            );
                          } else {
                            return SizedBox();
                          }
                        }
                      default:
                        {
                          return SizedBox();
                        }
                    }
                  },
                )),

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

  checkKnowledgeSpaceChains() async {
    try {
      setState(() {});
    } catch (e) {}
  }

  @override
  void initState() {
    super.initState();
  }
}
