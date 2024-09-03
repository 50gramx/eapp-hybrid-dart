import 'dart:io';
import 'dart:math';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Tile/70/ethos/PodStatusTile.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/HomebrewInstallerPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/HostMachineData.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/HostUserDetailsPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/MicroK8sInstallerPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/brew/brewCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/kubectl/kubectlCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/microk8s/microk8sCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/operators/mutliverse/chains/multiverseChainsOperator.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/operators/mutliverse/multiversePodOperator.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/basicConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/switchConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/pushHorizontalPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:process_run/shell.dart';

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

Future<WindowsDeviceInfo> getWindowsDeviceInfo() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  return deviceInfo.windowsInfo;
}

String formatBytes(int bytes, int decimals) {
  if (bytes <= 0) return "0 B";
  const suffixes = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"];
  var i = (log(bytes) / log(1024)).floor();
  return ((bytes / pow(1024, i)).toStringAsFixed(decimals)) + ' ' + suffixes[i];
}

class _MachineConfigurationPageState extends State<MachineConfigurationPage> {
  Future<bool> _MultiversePodOperatorfsOpPodStatus =
      MultiversePodOperator.fsOp.checkPodStatus();

  buildMultiverseChainsIdentityPodStatusInteraction() {
    return FutureBuilder<bool>(
        future: MultiverseChainsOperator().checkPodStatus(allChains: true),
        builder: (context, snapshotMultiverseChainsIdentityPodStatus) {
          switch (snapshotMultiverseChainsIdentityPodStatus.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.none:
            case ConnectionState.active:
              return AppProgressIndeterminateWidget();
            case ConnectionState.done:
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
  }

  buildMutliverseIngressPodStatusInteraction() {
    return FutureBuilder<bool>(
        future: MultiversePodOperator.inOp.checkPodStatus(),
        builder: (context, snapshotMultiverseIngressPodStatus) {
          switch (snapshotMultiverseIngressPodStatus.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.none:
            case ConnectionState.active:
              return AppProgressIndeterminateWidget();
            case ConnectionState.done:
              if (snapshotMultiverseIngressPodStatus.hasData) {
                return SwitchConfigurationItem(
                    titleText: "Multiverse Ingress",
                    switchValue: snapshotMultiverseIngressPodStatus.data!,
                    switchOnChanged: (value) {
                      if (!value) {
                        // user requested to stop the pod
                        MultiversePodOperator.inOp.spinDown();
                        setState(() {});
                      } else {
                        // user requested to start the pod
                        MultiversePodOperator.inOp.spinUp();
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
  }

  buildMultiverseIngressNamespaceBuilderInteraction() {
    return FutureBuilder<bool>(
      future:
          KubectlCommands.get.namespaced.namespace.isMultiverseIngressExists(),
      builder: (context, snapshotMultiverseIngressNamespace) {
        switch (snapshotMultiverseIngressNamespace.connectionState) {
          case ConnectionState.waiting:
          case ConnectionState.none:
          case ConnectionState.active:
            return AppProgressIndeterminateWidget();
          case ConnectionState.done:
            {
              if (snapshotMultiverseIngressNamespace.hasData) {
                if (snapshotMultiverseIngressNamespace.data!) {
                  // if the multiverse ingress namespace exists,
                  // return the widget
                  return buildMutliverseIngressPodStatusInteraction();
                } else {
                  // if not, then create the resource,
                  // setState() after creating
                  return FutureBuilder<bool>(
                      future: KubectlCommands.apply.namespaced.namespace
                          .multiverseIngress(),
                      builder: (context, snapshotCreateResource) {
                        switch (snapshotCreateResource.connectionState) {
                          case ConnectionState.waiting:
                          case ConnectionState.none:
                          case ConnectionState.active:
                            {
                              return AppProgressIndeterminateWidget();
                            }
                          case ConnectionState.done:
                            {
                              if (snapshotCreateResource.hasData) {
                                if (snapshotCreateResource.data!) {
                                  return buildMutliverseIngressPodStatusInteraction();
                                } else {
                                  return Text(
                                      "Couldn't create multiverse-ingress resource");
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
    );
  }

  startMicrok8s() async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content:
              Text("Starting Orchestrator, Please allow it sometime to start")),
    );
    final isStarted = await Microk8sCommands.start.now();
    if (isStarted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Started Orchestrator")),
      );
      setState(() {});
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Starting Orchestrator failed")),
      );
    }
  }

  stopMicrok8s() async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content:
              Text("Stopping Orchestrator, Please allow it sometime to stop")),
    );
    final isStopped = await Microk8sCommands.stop.now();
    if (isStopped) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Stopped Orchestrator")),
      );
      setState(() {});
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Stopping Orchestrator failed")),
      );
    }
  }

  restartMicrok8s() async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(
              "Restarting Orchestrator, Please allow it sometime to stop")),
    );
    final isStopped = await Microk8sCommands.stop.now();
    if (isStopped) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Stopped Orchestrator")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Stopping Orchestrator failed")),
      );
    }
    await startMicrok8s();
  }

  deleteMicrok8s() async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(
              "Uninstalling Orchestrator, Please allow it sometime to delete")),
    );
    await MultipassCommands.delete.vm();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Uninstalled Orchestrator")),
    );
    setState(() {});
  }

  stopAndUninstallMicrok8s() async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content:
              Text("Stopping Orchestrator, Please allow it sometime to stop")),
    );
    final isStopped = await Microk8sCommands.stop.now();
    if (isStopped) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Stopped Orchestrator")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Stopping Orchestrator failed")),
      );
    }
    deleteMicrok8s();
  }

  void _onSuccessfullInstall() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // we need add L4 level check to verify the status of the pod
    var multiverseFileSystemPodStatusInteraction = FutureBuilder<bool>(
        future: _MultiversePodOperatorfsOpPodStatus,
        builder: (context, snapshotMultiverseFileSystemPodStatus) {
          switch (snapshotMultiverseFileSystemPodStatus.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.none:
            case ConnectionState.active:
              return AppProgressIndeterminateWidget();
            case ConnectionState.done:
              if (snapshotMultiverseFileSystemPodStatus.hasData) {
                return PodStatusTile(
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
                  },
                  switchOnRefresh: () {
                    setState(() {
                      _MultiversePodOperatorfsOpPodStatus =
                          MultiversePodOperator.fsOp.checkPodStatus();
                    });
                  },
                );
              } else {
                return SizedBox();
              }
            default:
              return SizedBox();
          }
        });

    buildMultiversePodsWidgets() {
      return Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
              child: FormInfoText("MULTIVERSE PODS").build(context)),
          multiverseFileSystemPodStatusInteraction,
          Visibility(
            visible: Platform.isMacOS || Platform.isLinux || Platform.isWindows,
            child: buildMultiverseChainsIdentityPodStatusInteraction(),
          ),
          SwitchConfigurationItem(
            titleText: "Identity Capabilities",
            switchValue: false,
            switchOnChanged: (value) {},
          ),
          buildMultiverseIngressNamespaceBuilderInteraction(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary(context),
      body: CustomScrollView(slivers: <Widget>[
        CustomSliverAppBar(
          labelText: "Galaxy Machines",
          actionLabelText: "",
          isBackEnabled: false,
          isActionEnabled: false,
          trailingButtonCallback: () {},
          onStretchTriggerCallback: () {},
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            // ------------------------------------------------
            // This Machine
            // ------------------------------------------------

            FutureBuilder<String>(
              future: HostMachineData().name(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return Container(
                      margin: EdgeInsets.only(
                          top: 32, bottom: 4, right: 16, left: 16),
                      child: FormInfoText(snap.data!.toUpperCase())
                          .build(context));
                }
              },
            ),

            FutureBuilder<String>(
              future: HostMachineData().hostName(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return SelectorConfigurationItem(
                      titleText: "${snap.data!}",
                      subtitleText: "Update Password",
                      selectorCallback: () {
                        AppPushPage()
                            .pushHorizontalPage(context, HostUserDetailsPage());
                      });
                }
              },
            ),

            FutureBuilder<String>(
              future: HostMachineData().release(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Release", subtitleText: "${snap.data!}");
                }
              },
            ),

            FutureBuilder<String>(
              future: HostMachineData().processor(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Processor", subtitleText: "${snap.data!}");
                }
              },
            ),
            FutureBuilder<String>(
              future: HostMachineData().memory(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Memory", subtitleText: "${snap.data!}");
                }
              },
            ),

            FutureBuilder<String>(
              future: HostMachineData().diskSpace(),
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
              future: HostMachineData().publicIPAddress(),
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
              future: HostMachineData().privateIPAddress(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Private IP", subtitleText: snap.data!);
                }
              },
            ),

            Visibility(
              visible: Platform.isMacOS,
              child: FutureBuilder<String>(
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
                      return BasicConfigurationItem(
                          titleText: "Homebrew", subtitleText: snap.data!);
                      // return BasicConfigurationItem(
                      //     titleText: "Homebrew", subtitleText: snap.data!);
                    }
                  }
                },
              ),
            ),

            FutureBuilder<bool>(
              future: MultipassCommands.version.isPresent(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return SizedBox();
                } else {
                  if (snap.data! == false) {
                    return BasicConfigurationItem(
                        titleText: "Multipass", subtitleText: "Not Available");
                  } else {
                    return FutureBuilder<String>(
                      future: MultipassCommands.version.getVersion(),
                      builder: (context, snap) {
                        if (snap.connectionState == ConnectionState.waiting) {
                          return SizedBox();
                        } else {
                          if (snap.data! == "") {
                            return BasicConfigurationItem(
                                titleText: "Multipass",
                                subtitleText: "Not Available");
                          } else {
                            return BasicConfigurationItem(
                                titleText: "Multipass",
                                subtitleText: snap.data!);
                          }
                        }
                      },
                    );
                  }
                }
              },
            ),

            // ------------------------------------------------
            // ETHOS POD ORCHESTRATOR VIRTUAL MACHINE
            // ------------------------------------------------

            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("ETHOS POD ORCHESTRATOR VIRTUAL MACHINE")
                    .build(context)),

            FutureBuilder<String>(
              future: MultipassCommands.list.getOrchestratorVmState(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return SizedBox();
                } else {
                  if (snap.data == "UNAVAILABLE") {
                    return BasicConfigurationItem(
                        titleText: "VM State", subtitleText: "Not Available");
                  } else {
                    return BasicConfigurationItem(
                        titleText: "VM State", subtitleText: snap.data!);
                  }
                }
              },
            ),

            FutureBuilder<Map<String, dynamic>>(
              future: MultipassCommands.list.getOrchestratorVmMeta(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return SizedBox();
                } else {
                  if (snap.data != null && snap.data!.isNotEmpty) {
                    return FutureBuilder<String>(
                      future: MultipassCommands.info.getOrchestratorVmRelease(),
                      builder: (context, snap) {
                        if (snap.connectionState == ConnectionState.waiting) {
                          return SizedBox();
                        } else {
                          if (snap.data != null && snap.data!.isNotEmpty) {
                            return BasicConfigurationItem(
                                titleText: "VM Release",
                                subtitleText: "${snap.data!}");
                          } else {
                            return SizedBox();
                          }
                        }
                      },
                    );
                  } else {
                    return SizedBox();
                  }
                }
              },
            ),

            FutureBuilder<Map<String, dynamic>>(
              future: MultipassCommands.list.getOrchestratorVmMeta(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return SizedBox();
                } else {
                  if (snap.data != null && snap.data!.isNotEmpty) {
                    return FutureBuilder<String>(
                      future: MultipassCommands.info.getOrchestratorVmCPU(),
                      builder: (context, snap) {
                        if (snap.connectionState == ConnectionState.waiting) {
                          return SizedBox();
                        } else {
                          if (snap.data != null && snap.data!.isNotEmpty) {
                            return BasicConfigurationItem(
                                titleText: "VM Processor",
                                subtitleText: "${snap.data!} CORE");
                          } else {
                            return SizedBox();
                          }
                        }
                      },
                    );
                  } else {
                    return SizedBox();
                  }
                }
              },
            ),

            FutureBuilder<Map<String, dynamic>>(
              future: MultipassCommands.list.getOrchestratorVmMeta(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return SizedBox();
                } else {
                  if (snap.data != null && snap.data!.isNotEmpty) {
                    return FutureBuilder<String>(
                      future: MultipassCommands.info.getOrchestratorVmMemory(),
                      builder: (context, snap) {
                        if (snap.connectionState == ConnectionState.waiting) {
                          return SizedBox();
                        } else {
                          if (snap.data != null && snap.data!.isNotEmpty) {
                            return BasicConfigurationItem(
                                titleText: "VM Memory",
                                subtitleText: "${snap.data!}");
                          } else {
                            return SizedBox();
                          }
                        }
                      },
                    );
                  } else {
                    return SizedBox();
                  }
                }
              },
            ),

            FutureBuilder<Map<String, dynamic>>(
              future: MultipassCommands.list.getOrchestratorVmMeta(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return SizedBox();
                } else {
                  if (snap.data != null && snap.data!.isNotEmpty) {
                    return FutureBuilder<String>(
                      future: MultipassCommands.info.getOrchestratorVmStorage(),
                      builder: (context, snap) {
                        if (snap.connectionState == ConnectionState.waiting) {
                          return SizedBox();
                        } else {
                          if (snap.data != null && snap.data!.isNotEmpty) {
                            return BasicConfigurationItem(
                                titleText: "VM Storage",
                                subtitleText: "${snap.data!}");
                          } else {
                            return SizedBox();
                          }
                        }
                      },
                    );
                  } else {
                    return SizedBox();
                  }
                }
              },
            ),

            FutureBuilder<String>(
              future: MultipassCommands.list.getOrchestratorVmState(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return SizedBox();
                } else {
                  if (snap.data != "UNAVAILABLE") {
                    return FutureBuilder<List<String>>(
                      future: MultipassCommands.info.getOrchestratorVmIPv4(),
                      builder: (context, snap) {
                        if (snap.connectionState == ConnectionState.waiting) {
                          return SizedBox();
                        } else {
                          if (snap.data != null && snap.data!.isNotEmpty) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ...snap.data!
                                    .map((ip) => BasicConfigurationItem(
                                        titleText: "VM IPs", subtitleText: ip))
                                    .toList(),
                              ],
                            );
                          } else {
                            return SizedBox();
                          }
                        }
                      },
                    );
                  } else {
                    return SizedBox();
                  }
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
                    print("orchestratorStatus: $snapshot");
                    if (snapshot.hasData) {
                      switch (snapshot.data) {
                        case ("RUNNING, STOPPED"):
                          {
                            return Column(
                              children: [
                                SwitchConfigurationItem(
                                    titleText: "Orchestrator",
                                    isEnabled: true,
                                    switchValue: false,
                                    switchOnChanged: (value) {
                                      startMicrok8s();
                                    }),
                                SelectorConfigurationItem(
                                    titleText: "Orchestrator",
                                    subtitleText: "Uninstall",
                                    selectorCallback: () {
                                      stopAndUninstallMicrok8s();
                                    }),
                              ],
                            );
                          }
                        case ("RUNNING, RUNNING"):
                          {
                            return SwitchConfigurationItem(
                                titleText: "Orchestrator",
                                isEnabled: true,
                                switchValue: true,
                                switchOnChanged: (value) {
                                  stopMicrok8s();
                                });
                          }
                        case ("RUNNING, INACTIVE"):
                          {
                            return Column(
                              children: [
                                SelectorConfigurationItem(
                                    titleText: "Orchestrator",
                                    subtitleText: "Inactive, Restart Now",
                                    selectorCallback: () {
                                      restartMicrok8s();
                                    }),
                                SelectorConfigurationItem(
                                    titleText: "Orchestrator",
                                    subtitleText: "Uninstall",
                                    selectorCallback: () {
                                      stopAndUninstallMicrok8s();
                                    }),
                              ],
                            );
                          }
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
                        case ("UNAVAILABLE, UNAVAILABLE"):
                          {
                            return SelectorConfigurationItem(
                                titleText: "Orchestrator",
                                subtitleText: "Install",
                                selectorCallback: () {
                                  AppPushPage().pushHorizontalPage(
                                      context,
                                      MicroK8sInstallerPage(
                                        onSuccessfullInstall:
                                            _onSuccessfullInstall,
                                      ));
                                });
                          }
                        case ("UNKNOWN, UNAVAILABLE"):
                          {
                            return SelectorConfigurationItem(
                                titleText: "Orchestrator",
                                subtitleText: "Uninstall",
                                selectorCallback: () {
                                  MultipassCommands.delete.vm();
                                  BrewCommands.uninstall.multipass();
                                  setState(() {});
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
                      return SelectorConfigurationItem(
                          titleText: "Orchestrator",
                          subtitleText: "Install",
                          selectorCallback: () {
                            AppPushPage().pushHorizontalPage(
                                context,
                                MicroK8sInstallerPage(
                                  onSuccessfullInstall: _onSuccessfullInstall,
                                ));
                          });
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
                                            return buildMultiversePodsWidgets();
                                          } else {
                                            // if not, then create the resource,
                                            // setState() after creating
                                            return FutureBuilder<bool>(
                                                future: KubectlCommands
                                                    .apply.namespaced.namespace
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
                                                            return buildMultiversePodsWidgets();
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
                titleText: "Bootstrap Node", subtitleText: "Bangalore, KA"),
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
