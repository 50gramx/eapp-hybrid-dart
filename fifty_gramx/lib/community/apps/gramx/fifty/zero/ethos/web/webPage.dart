/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

import 'dart:async';

import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/ui_component_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/basicConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/services/identity/accountAssistant/discoverAccountAssistantService.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// Page that displays its index, flow's title and color.
///
/// Has a button for pushing another one of its kind with an incremented index,
///  and another button for starting a new flow named 'New' with
/// a random background color.

class WebViewPage extends StatefulWidget {
  const WebViewPage({
    required this.index,
    required this.containingFlowTitle,
    Key? key,
  }) : super(key: key);

  final int index;
  final String containingFlowTitle;

  @override
  State<WebViewPage> createState() {
    return _WebViewPageState();
  }
}

class _WebViewPageState extends State<WebViewPage> {
  Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final GlobalKey<SliverAnimatedListState> _spacesEntityListKey =
      GlobalKey<SliverAnimatedListState>();

  Future<bool> isUserSigned() async {
    return (await AccountData().readAccountServicesAccessAuthDetails())
            .account
            .accountId !=
        "";
  }

  @override
  Widget build(BuildContext context) {
    Widget scaffold = Scaffold(
        backgroundColor: AppColors.backgroundPrimary(context),
        body: CustomScrollView(slivers: <Widget>[
          CustomSliverAppBar(
            labelText: "Identity",
            actionLabelText: "evo",
            isBackEnabled: false,
            trailingButtonCallback: () {
              NotificationsBloc.instance.newNotification(LocalNotification(
                  "EthosAppFlowBob", {"subType": "Switch App Mode"}));
            },
            isActionEnabled: false,
            onStretchTriggerCallback: () {},
          ),
          SliverAnimatedList(
              key: _spacesEntityListKey,
              initialItemCount: 1,
              itemBuilder: (BuildContext context, int position,
                  Animation<double> animation) {
                return Column(
                  children: [
                    Visibility(
                      child: UIComponentManager.instance
                          .getGramxAppsInteractionTileValue(
                              communityCode: 50,
                              orgName: "ethos",
                              appName: "identity",
                              tileNameCode: "EAIT1004"),
                      visible: false,
                    ),
                    Visibility(
                      child: UIComponentManager.instance
                          .getGramxAppsInteractionTileValue(
                              communityCode: 50,
                              orgName: "ethos",
                              appName: "identity",
                              tileNameCode: "EAIT1008"),
                      visible: false,
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            top: 16, bottom: 4, right: 16, left: 16),
                        child: FormInfoText("ABOUT").build(context)),
                    FutureBuilder<String>(
                      future: AccountData().readAccountId(),
                      builder: (context, snap) {
                        if (snap.connectionState == ConnectionState.waiting) {
                          return AppProgressIndeterminateWidget();
                        } else {
                          if (snap.data == "") {
                            return FutureBuilder<Account>(
                                future: AccountData().readAccount(),
                                builder: (context, snap) {
                                  if (snap.connectionState ==
                                      ConnectionState.waiting) {
                                    return AppProgressIndeterminateWidget();
                                  } else {
                                    if (snap.data!.accountFirstName != "" ||
                                        snap.data!.accountLastName != "") {
                                      return BasicConfigurationItem(
                                        titleText: snap.data!.accountFirstName,
                                        subtitleText:
                                            snap.data!.accountLastName,
                                      );
                                    } else {
                                      return BasicConfigurationItem(
                                        titleText: "First Name",
                                        subtitleText: "Last Name",
                                      );
                                    }
                                  }
                                });
                          } else {
                            return FutureBuilder<Account>(
                                future: AccountData().readAccount(),
                                builder: (context, snap) {
                                  if (snap.connectionState ==
                                      ConnectionState.waiting) {
                                    return AppProgressIndeterminateWidget();
                                  } else {
                                    return BasicConfigurationItem(
                                      titleText: snap.data!.accountFirstName,
                                      subtitleText: snap.data!.accountLastName,
                                    );
                                  }
                                });
                          }
                        }
                      },
                    ),
                    FutureBuilder<String>(
                      future: AccountData().readAccountId(),
                      builder: (context, snap) {
                        if (snap.connectionState == ConnectionState.waiting) {
                          return AppProgressIndeterminateWidget();
                        } else {
                          if (snap.data == "") {
                            return FutureBuilder<Account>(
                                future: AccountData().readAccount(),
                                builder: (context, snap) {
                                  if (snap.connectionState ==
                                      ConnectionState.waiting) {
                                    return AppProgressIndeterminateWidget();
                                  } else if (snap.connectionState ==
                                          ConnectionState.done &&
                                      snap.hasData) {
                                    return FutureBuilder<AccountAssistant>(
                                        future: DiscoverAccountAssistantService
                                            .getAccountAssistantByAccount(
                                                snap.data!),
                                        builder: (context, assistantSnap) {
                                          if (assistantSnap.connectionState ==
                                              ConnectionState.waiting) {
                                            return AppProgressIndeterminateWidget();
                                          } else if (assistantSnap
                                                      .connectionState ==
                                                  ConnectionState.done &&
                                              assistantSnap.hasData) {
                                            return BasicConfigurationItem(
                                              titleText: assistantSnap
                                                  .data!.accountAssistantName,
                                              subtitleText:
                                                  "${assistantSnap.data!.accountAssistantNameCode < 10 ? "0${assistantSnap.data!.accountAssistantNameCode}" : assistantSnap.data!.accountAssistantNameCode}",
                                            );
                                          } else {
                                            return BasicConfigurationItem(
                                              titleText: "Ethos Name",
                                              subtitleText: "Ethos Code",
                                            );
                                          }
                                        });
                                  } else {
                                    return BasicConfigurationItem(
                                      titleText: "Ethos Name",
                                      subtitleText: "Ethos Code",
                                    );
                                  }
                                });
                          } else {
                            return FutureBuilder<Account>(
                                future: AccountData().readAccount(),
                                builder: (context, snap) {
                                  if (snap.connectionState ==
                                      ConnectionState.waiting) {
                                    return AppProgressIndeterminateWidget();
                                  } else if (snap.connectionState ==
                                          ConnectionState.done &&
                                      snap.hasData) {
                                    return FutureBuilder<AccountAssistant>(
                                        future: DiscoverAccountAssistantService
                                            .getAccountAssistantByAccount(
                                                snap.data!),
                                        builder: (context, assistantSnap) {
                                          if (assistantSnap.connectionState ==
                                              ConnectionState.waiting) {
                                            return AppProgressIndeterminateWidget();
                                          } else if (assistantSnap
                                                      .connectionState ==
                                                  ConnectionState.done &&
                                              assistantSnap.hasData) {
                                            return BasicConfigurationItem(
                                              titleText: assistantSnap
                                                  .data!.accountAssistantName,
                                              subtitleText:
                                                  "${assistantSnap.data!.accountAssistantNameCode < 10 ? "0${assistantSnap.data!.accountAssistantNameCode}" : assistantSnap.data!.accountAssistantNameCode}",
                                            );
                                          } else {
                                            return BasicConfigurationItem(
                                              titleText: "Ethos Name",
                                              subtitleText: "Ethos Code",
                                            );
                                          }
                                        });
                                  } else {
                                    return BasicConfigurationItem(
                                      titleText: "Ethos Name",
                                      subtitleText: "Ethos Code",
                                    );
                                  }
                                });
                          }
                        }
                      },
                    ),
                    FutureBuilder<Account>(
                        future: AccountData().readAccount(),
                        builder: (context, snap) {
                          if (snap.connectionState == ConnectionState.waiting) {
                            return AppProgressIndeterminateWidget();
                          } else if (snap.connectionState ==
                                  ConnectionState.done &&
                              snap.hasData) {
                            return BasicConfigurationItem(
                              titleText: "Ethos Pay",
                              subtitleText: snap.data!.accountBillingActive
                                  ? "Active"
                                  : "Inactive",
                            );
                          } else {
                            return BasicConfigurationItem(
                              titleText: "Ethos Pay",
                              subtitleText: "Unknown",
                            );
                          }
                        }),
                    Container(
                        margin: EdgeInsets.only(
                            top: 16, bottom: 4, right: 16, left: 16),
                        child: FormInfoText("UNIVERSE LICENCE").build(context)),
                    FutureBuilder<Account>(
                        future: AccountData().readAccount(),
                        builder: (context, snap) {
                          if (snap.connectionState == ConnectionState.waiting) {
                            return AppProgressIndeterminateWidget();
                          } else if (snap.connectionState ==
                                  ConnectionState.done &&
                              snap.hasData) {
                            return BasicConfigurationItem(
                              titleText: "India",
                              subtitleText: "Ethosverse INDIA",
                            );
                          } else {
                            return BasicConfigurationItem(
                              titleText: "Unidentified",
                              subtitleText: "Unknown",
                            );
                          }
                        }),
                    Container(
                        margin: EdgeInsets.only(
                            top: 16, bottom: 4, right: 16, left: 16),
                        child: FormInfoText("ABOUT GALAXIES").build(context)),
                    BasicConfigurationItem(
                      titleText: "Personal Galaxy",
                      subtitleText: "Open Galaxy",
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            top: 16, bottom: 4, right: 16, left: 16),
                        child: FormInfoText("ABOUT SPACES").build(context)),
                    FutureBuilder<String>(
                      future: AccountData().readAccountId(),
                      builder: (context, snap) {
                        if (snap.connectionState == ConnectionState.waiting) {
                          return AppProgressIndeterminateWidget();
                        } else {
                          if (snap.data == "") {
                            return FutureBuilder<Account>(
                                future: AccountData().readAccount(),
                                builder: (context, snap) {
                                  if (snap.connectionState ==
                                      ConnectionState.waiting) {
                                    return AppProgressIndeterminateWidget();
                                  } else if (snap.connectionState ==
                                          ConnectionState.done &&
                                      snap.hasData) {
                                    return FutureBuilder<AccountAssistant>(
                                        future: DiscoverAccountAssistantService
                                            .getAccountAssistantByAccount(
                                                snap.data!),
                                        builder: (context, assistantSnap) {
                                          if (assistantSnap.connectionState ==
                                              ConnectionState.waiting) {
                                            return AppProgressIndeterminateWidget();
                                          } else if (assistantSnap
                                                      .connectionState ==
                                                  ConnectionState.done &&
                                              assistantSnap.hasData) {
                                            return BasicConfigurationItem(
                                              titleText: "Personal Space",
                                              subtitleText:
                                                  "${assistantSnap.data!.accountAssistantNameCode < 10 ? "0${assistantSnap.data!.accountAssistantNameCode}#${assistantSnap.data!.accountAssistantName}" : "${assistantSnap.data!.accountAssistantNameCode}#${assistantSnap.data!.accountAssistantName}"}",
                                            );
                                          } else {
                                            return BasicConfigurationItem(
                                              titleText: "Personal Space",
                                              subtitleText: "Unidentified",
                                            );
                                          }
                                        });
                                  } else {
                                    return BasicConfigurationItem(
                                      titleText: "Personal Space",
                                      subtitleText: "Unidentified",
                                    );
                                  }
                                });
                          } else {
                            return FutureBuilder<Account>(
                                future: AccountData().readAccount(),
                                builder: (context, snap) {
                                  if (snap.connectionState ==
                                      ConnectionState.waiting) {
                                    return AppProgressIndeterminateWidget();
                                  } else if (snap.connectionState ==
                                          ConnectionState.done &&
                                      snap.hasData) {
                                    return FutureBuilder<AccountAssistant>(
                                        future: DiscoverAccountAssistantService
                                            .getAccountAssistantByAccount(
                                                snap.data!),
                                        builder: (context, assistantSnap) {
                                          if (assistantSnap.connectionState ==
                                              ConnectionState.waiting) {
                                            return AppProgressIndeterminateWidget();
                                          } else if (assistantSnap
                                                      .connectionState ==
                                                  ConnectionState.done &&
                                              assistantSnap.hasData) {
                                            return BasicConfigurationItem(
                                              titleText: "Personal Space",
                                              subtitleText:
                                                  "${assistantSnap.data!.accountAssistantNameCode < 10 ? "0${assistantSnap.data!.accountAssistantNameCode}#${assistantSnap.data!.accountAssistantName}" : "${assistantSnap.data!.accountAssistantNameCode}#${assistantSnap.data!.accountAssistantName}"}",
                                            );
                                          } else {
                                            return BasicConfigurationItem(
                                              titleText: "Personal Space",
                                              subtitleText: "Unidentified",
                                            );
                                          }
                                        });
                                  } else {
                                    return BasicConfigurationItem(
                                      titleText: "Personal Space",
                                      subtitleText: "Unidentified",
                                    );
                                  }
                                });
                          }
                        }
                      },
                    ),
                    SelectorConfigurationItem(
                        titleText: "Account",
                        subtitleText: "Sign Out",
                        selectorCallback: () {
                          AccountData().emptyAccount();
                          setState(() {});
                        }),
                  ],
                );
              }),
        ]));
    // Widget getStarted = ConversationsHomePage(index: 1, containingFlowTitle: "Conversations",);
    // Widget getStarted = AccountAssistantConversationPage(
    //     accountAssistant: AccountAssistant.create());
    return scaffold;
    ;
  }
}
