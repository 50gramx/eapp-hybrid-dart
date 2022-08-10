import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/data/spaceData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/account/receive_account_message.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/account/send_account_message.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge/discover_space_knowledge.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge_domain/discover_space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/receiveAccountMessageService.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/sendAccountMessageService.dart';
import 'package:fifty_gramx/services/product/knowledge/domain/discoverSpaceKnowledgeDomainService.dart';
import 'package:fifty_gramx/services/product/knowledge/space/discoverSpaceKnowledgeService.dart';
import 'package:fifty_gramx/widgets/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/widgets/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/widgets/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/basicConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/custom/pushHorizontalPage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/ethosPod/MachineConfigurationPage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/knowledge/domain/CreateSpaceKnowledgeDomainPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// This is the stateful widget that the main application instantiates.
class EthosPodConfigurationPage extends StatefulWidget {
  const EthosPodConfigurationPage({
    Key? key,
  }) : super(key: key);

  @override
  State<EthosPodConfigurationPage> createState() =>
      _EthosPodConfigurationPageState();
}

class _EthosPodConfigurationPageState extends State<EthosPodConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary(context),
      body: CustomScrollView(slivers: <Widget>[
        CustomSliverAppBar(
          labelText: "EthosPod",
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
                    EdgeInsets.only(top: 16, bottom: 4, right: 16, left: 16),
                child: FormInfoText("ABOUT").build(context)),
            FutureBuilder<Space>(
              future: SpaceData().readSpace(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Universe",
                      subtitleText: snap.data!.galaxy.universe.universeName);
                }
              },
            ),
            FutureBuilder<Space>(
              future: SpaceData().readSpace(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Galaxy",
                      subtitleText: snap.data!.galaxy.galaxyName);
                }
              },
            ),
            FutureBuilder<Account>(
              future: AccountData().readAccount(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Space",
                      subtitleText: "${snap.data!.accountFirstName}'s Space");
                }
              },
            ),
            FutureBuilder<Space>(
              future: SpaceData().readSpace(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else if (snap.connectionState == ConnectionState.done) {
                  if (snap.data!.spaceId.isNotEmpty) {
                    return BasicConfigurationItem(
                        titleText: "Serial Number",
                        subtitleText:
                            "#${snap.data!.spaceId.substring(0, 12)}");
                  } else {
                    return BasicConfigurationItem(
                        titleText: "Serial Number", subtitleText: "###NA###");
                  }
                } else {
                  return BasicConfigurationItem(
                      titleText: "Serial Number", subtitleText: "NA");
                }
              },
            ),

            // ------------------------------------------------
            // GALAXY NETWORK
            // ------------------------------------------------
            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("GALAXY NETWORK").build(context)),
            BasicConfigurationItem(
                titleText: "Computing Cores", subtitleText: "1 Core"),
            // TODO: Fetch actual data
            BasicConfigurationItem(
                titleText: "Hot Storage", subtitleText: "1 GiB"),
            // TODO: Fetch actual data
            BasicConfigurationItem(
                titleText: "Fast Storage", subtitleText: "20 GiB"),
            // TODO: Fetch actual data
            BasicConfigurationItem(
                titleText: "Standard Storage", subtitleText: "0 GiB"),
            // TODO: Fetch actual data
            SelectorConfigurationItem(
              titleText: "Galaxy Machines",
              subtitleText: "1 Node",
              selectorCallback: () {
                AppPushPage()
                    .pushHorizontalPage(context, MachineConfigurationPage());
              },
            ),
            // ------------------------------------------------
            // MY SPACE CONTAINERS
            // ------------------------------------------------
            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("MY SPACE CONTAINERS").build(context)),
            BasicConfigurationItem(titleText: "Identity", subtitleText: "X1"),
            BasicConfigurationItem(
                titleText: "Conversations", subtitleText: "X1"),
            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("MY SPACE KNOWLEDGE CONTAINERS")
                    .build(context)),
            SelectorConfigurationItem(
              titleText: "Launch Domain",
              subtitleText: "Isolated",
              selectorCallback: () {
                AppPushPage().pushHorizontalPage(
                    context, CreateSpaceKnowledgeDomainPage());
              },
            ),
            SelectorConfigurationItem(
              titleText: "Launch Domain",
              subtitleText: "Shared",
              selectorCallback: () {
                AppPushPage().pushHorizontalPage(
                    context,
                    CreateSpaceKnowledgeDomainPage(
                      createIsolatedDomain: false,
                    ));
              },
            ),
            Container(
              child: FutureBuilder<GetSpaceKnowledgeDomainsResponse>(
                  future:
                      DiscoverSpaceKnowledgeService.getSpaceKnowledgeDomains(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return AppProgressIndeterminateWidget();
                    } else {
                      if (snapshot.hasData) {
                        if (snapshot.data!.responseMeta.metaDone) {
                          if (snapshot.data!.spaceKnowledgeDomains.length > 0) {
                            return Container(
                              height:
                                  snapshot.data!.spaceKnowledgeDomains.length *
                                      62,
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: snapshot
                                      .data!.spaceKnowledgeDomains.length,
                                  itemBuilder: (context, position) {
                                    String domainName = snapshot
                                        .data!
                                        .spaceKnowledgeDomains[position]
                                        .spaceKnowledgeDomainName;
                                    return BasicConfigurationItem(
                                        titleText: domainName,
                                        subtitleText: "K1");
                                  }),
                            );
                          } else {
                            return SizedBox();
                          }
                        } else {
                          return SizedBox();
                        }
                      } else {
                        return AppProgressIndeterminateWidget();
                      }
                    }
                  }),
            ),
            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("MY SPACE ISOLATED PAGES").build(context)),
            FutureBuilder<AccountSentMessagesCountResponse>(
                future: SendAccountMessageService.getAccountSentMessagesCount(),
                builder: (context, snap) {
                  if (snap.connectionState == ConnectionState.waiting) {
                    return AppProgressIndeterminateWidget();
                  } else {
                    return BasicConfigurationItem(
                        titleText: "Speed Messages",
                        subtitleText:
                            "SENT ${snap.data!.accountSentMessagesCount}");
                  }
                }),
            FutureBuilder<AccountReceivedMessagesCountResponse>(
                future: ReceiveAccountMessageService
                    .getAccountReceivedMessagesCount(),
                builder: (context, snap) {
                  if (snap.connectionState == ConnectionState.waiting) {
                    return AppProgressIndeterminateWidget();
                  } else {
                    return BasicConfigurationItem(
                        titleText: "Speed Messages",
                        subtitleText:
                            "RECEIVED ${snap.data!.accountReceivedMessagesCount}");
                  }
                }),
            FutureBuilder<AccountAssistantSentMessagesCountResponse>(
                future: SendAccountMessageService
                    .getAccountAssistantSentMessagesCount(),
                builder: (context, snap) {
                  if (snap.connectionState == ConnectionState.waiting) {
                    return AppProgressIndeterminateWidget();
                  } else {
                    return BasicConfigurationItem(
                        titleText: "Actionable Messages",
                        subtitleText:
                            "SENT ${snap.data!.accountAssistantSentMessagesCount}");
                  }
                }),
            FutureBuilder<AccountAssistantReceivedMessagesCountResponse>(
                future: ReceiveAccountMessageService
                    .getAccountAssistantReceivedMessagesCount(),
                builder: (context, snap) {
                  if (snap.connectionState == ConnectionState.waiting) {
                    return AppProgressIndeterminateWidget();
                  } else {
                    return BasicConfigurationItem(
                        titleText: "Actionable Messages",
                        subtitleText:
                            "RECEIVED ${snap.data!.accountAssistantReceivedMessagesCount}");
                  }
                }),
            Container(
              child: FutureBuilder<GetSpaceKnowledgeDomainsResponse>(
                  future:
                      DiscoverSpaceKnowledgeService.getSpaceKnowledgeDomains(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return AppProgressIndeterminateWidget();
                    } else {
                      if (snapshot.hasData) {
                        if (snapshot.data!.responseMeta.metaDone) {
                          if (snapshot.data!.spaceKnowledgeDomains.length > 0) {
                            double containerHeight = 0;
                            for (var domain
                                in snapshot.data!.spaceKnowledgeDomains) {
                              if (domain.spaceKnowledgeDomainIsolated) {
                                containerHeight += 62;
                              }
                            }
                            return Container(
                              height: containerHeight,
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: snapshot
                                      .data!.spaceKnowledgeDomains.length,
                                  itemBuilder: (context, position) {
                                    if (snapshot
                                        .data!
                                        .spaceKnowledgeDomains[position]
                                        .spaceKnowledgeDomainIsolated) {
                                      SpaceKnowledgeDomain domain = snapshot
                                          .data!
                                          .spaceKnowledgeDomains[position];
                                      return FutureBuilder<PageCountResponse>(
                                        future:
                                            DiscoverSpaceKnowledgeDomainService
                                                .getPageCount(domain),
                                        builder: (context, snap) {
                                          if (snap.connectionState ==
                                              ConnectionState.waiting) {
                                            return AppProgressIndeterminateWidget();
                                          } else {
                                            return BasicConfigurationItem(
                                                titleText: domain
                                                    .spaceKnowledgeDomainName,
                                                subtitleText:
                                                    "PAGES ${snap.data!.pageCount}");
                                          }
                                        },
                                      );
                                    } else {
                                      return SizedBox();
                                    }
                                  }),
                            );
                          } else {
                            return SizedBox();
                          }
                        } else {
                          return SizedBox();
                        }
                      } else {
                        return AppProgressIndeterminateWidget();
                      }
                    }
                  }),
            ),
            Container(
                margin:
                    EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
                child: FormInfoText("MY SPACE SHARED PAGES").build(context)),
            Container(
              child: FutureBuilder<GetSpaceKnowledgeDomainsResponse>(
                  future:
                      DiscoverSpaceKnowledgeService.getSpaceKnowledgeDomains(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return AppProgressIndeterminateWidget();
                    } else {
                      if (snapshot.hasData) {
                        if (snapshot.data!.responseMeta.metaDone) {
                          if (snapshot.data!.spaceKnowledgeDomains.length > 0) {
                            double containerHeight = 0;
                            for (var domain
                                in snapshot.data!.spaceKnowledgeDomains) {
                              if (!domain.spaceKnowledgeDomainIsolated) {
                                containerHeight += 62;
                              }
                            }
                            return Container(
                              height: containerHeight,
                              child: ListView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: snapshot
                                      .data!.spaceKnowledgeDomains.length,
                                  itemBuilder: (context, position) {
                                    if (!snapshot
                                        .data!
                                        .spaceKnowledgeDomains[position]
                                        .spaceKnowledgeDomainIsolated) {
                                      String domainName = snapshot
                                          .data!
                                          .spaceKnowledgeDomains[position]
                                          .spaceKnowledgeDomainName;
                                      return BasicConfigurationItem(
                                          titleText: domainName,
                                          subtitleText: "0");
                                    } else {
                                      return SizedBox();
                                    }
                                  }),
                            );
                          } else {
                            return SizedBox();
                          }
                        } else {
                          return SizedBox();
                        }
                      } else {
                        return AppProgressIndeterminateWidget();
                      }
                    }
                  }),
            ),
            SizedBox(height: 32),
          ]),
        )
      ]),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
