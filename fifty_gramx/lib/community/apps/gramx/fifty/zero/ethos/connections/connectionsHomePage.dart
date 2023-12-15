import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/two/ethos/pay/EthosCoinConfigurationPage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/connections/account/AccountConnectedAccountListItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/connections/account/ConnectedAccountAssistantListItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/messaging/AccountAssistantConversationPage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/messaging/AccountConversationPage.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/pushHorizontalPage.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/services/identity/account/connectAccountService.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'LocalConnectionsService.dart';

/// Page that displays its index, flow's title and color.
///
/// Has a button for pushing another one of its kind with an incremented index,
///  and another button for starting a new flow named 'New' with
/// a random background color.

/// This is the stateful widget that the main application instantiates.
class ConnectionsHomePage extends StatefulWidget {
  const ConnectionsHomePage({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  State<ConnectionsHomePage> createState() {
    return _ConnectionsHomePageState();
  }
}

class _ConnectionsHomePageState extends State<ConnectionsHomePage> {
  Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  final GlobalKey<SliverAnimatedListState> _connectedEntitiesListKey =
      GlobalKey<SliverAnimatedListState>();

  @override
  void initState() {
    // loadMyConnections();

    // Listen for local notification for changes to underlying service
    _notificationsStream.listen((event) {
      if (event.type == "LocalConnectionsService" &&
          _connectedEntitiesListKey.currentState != null) {
        if (event.data["subType"] == "InsertFullyConnectedAccountAssistant") {
          // setState(() {});
          _connectedEntitiesListKey.currentState!.insertItem(
              resolveFullyConnectedAccountAssistantListIndex(event.data["at"]));
        } else if (event.data["subType"] == "InsertFullyConnectedAccount") {
          // setState(() {});
          _connectedEntitiesListKey.currentState!.insertItem(
              resolveFullyConnectedAccountListIndex(event.data["at"]));
        } else if (event.data["subType"] ==
            "InsertInterestedPartiallyConnectedAccount") {
          var resolvedIndex =
              resolveInterestedPartiallyConnectedAccountListIndex(
                  event.data["at"]);
          setState(() {});
          _connectedEntitiesListKey.currentState!.insertItem(
              resolveInterestedPartiallyConnectedAccountListIndex(
                  event.data["at"]));
        } else if (event.data["subType"] ==
            "InsertNotInterestedPartiallyConnectedAccount") {
          setState(() {});
          _connectedEntitiesListKey.currentState!.insertItem(
              resolveNotInterestedPartiallyConnectedAccountListIndex(
                  event.data["at"]));
        } else if (event.data["subType"] == "InsertOnlyConnectedAccount") {
          setState(() {});
          _connectedEntitiesListKey.currentState!.insertItem(
              resolveOnlyConnectedAccountListIndex(event.data["at"]));
        }
      }
    });
    super.initState();
  }

  loadMyConnections() async {
    // Update list
    for (int index = 0;
        index <
            LocalConnectionsService.fullyConnectedAccountAssistants.keys
                .toList()
                .length;
        index++) {
      _connectedEntitiesListKey.currentState!
          .insertItem(resolveFullyConnectedAccountAssistantListIndex(index));
    }

    for (int index = 0;
        index <
            LocalConnectionsService.fullyConnectedAccounts.keys.toList().length;
        index++) {
      _connectedEntitiesListKey.currentState!
          .insertItem(resolveFullyConnectedAccountListIndex(index));
    }

    for (int index = 0;
        index <
            LocalConnectionsService.interestedPartiallyConnectedAccounts.keys
                .toList()
                .length;
        index++) {
      _connectedEntitiesListKey.currentState!.insertItem(
          resolveInterestedPartiallyConnectedAccountListIndex(index));
    }

    for (int index = 0;
        index <
            LocalConnectionsService.notInterestedPartiallyConnectedAccounts.keys
                .toList()
                .length;
        index++) {
      _connectedEntitiesListKey.currentState!.insertItem(
          resolveNotInterestedPartiallyConnectedAccountListIndex(index));
    }

    for (int index = 0;
        index <
            LocalConnectionsService.onlyConnectedAccounts.keys.toList().length;
        index++) {
      _connectedEntitiesListKey.currentState!
          .insertItem(resolveOnlyConnectedAccountListIndex(index));
    }
  }

  // Resolve SliverAnimatedList Index

  int resolveFullyConnectedAccountAssistantListIndex(int index) {
    return index + 1;
  }

  int resolveFullyConnectedAccountListIndex(int index) {
    return index +
        2 +
        LocalConnectionsService.fullyConnectedAccountAssistants.keys
            .toList()
            .length;
  }

  int resolveInterestedPartiallyConnectedAccountListIndex(int index) {
    return index +
        3 +
        LocalConnectionsService.fullyConnectedAccounts.keys.toList().length +
        LocalConnectionsService.fullyConnectedAccountAssistants.keys
            .toList()
            .length;
  }

  int resolveNotInterestedPartiallyConnectedAccountListIndex(int index) {
    return index +
        4 +
        LocalConnectionsService.fullyConnectedAccountAssistants.keys
            .toList()
            .length +
        LocalConnectionsService.fullyConnectedAccounts.keys.toList().length +
        LocalConnectionsService.interestedPartiallyConnectedAccounts.keys
            .toList()
            .length;
  }

  int resolveOnlyConnectedAccountListIndex(int index) {
    return index +
        5 +
        LocalConnectionsService.fullyConnectedAccountAssistants.keys
            .toList()
            .length +
        LocalConnectionsService.fullyConnectedAccounts.keys.toList().length +
        LocalConnectionsService.interestedPartiallyConnectedAccounts.keys
            .toList()
            .length +
        LocalConnectionsService.notInterestedPartiallyConnectedAccounts.keys
            .toList()
            .length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundPrimary(context),
        body: CustomScrollView(
          slivers: <Widget>[
            CustomSliverAppBar(
              labelText: "Connections",
              actionLabelText: "EthosPay",
              isActionEnabled: false,
              isBackEnabled: false,
              trailingButtonCallback: () {
                AppPushPage()
                    .pushHorizontalPage(context, EthosCoinConfigurationPage());
              },
              onStretchTriggerCallback: () {},
            ),
            SliverAnimatedList(
                key: _connectedEntitiesListKey,
                initialItemCount: 5 +
                    LocalConnectionsService.fullyConnectedAccountAssistants.keys
                        .toList()
                        .length +
                    LocalConnectionsService.fullyConnectedAccounts.keys
                        .toList()
                        .length +
                    LocalConnectionsService
                        .interestedPartiallyConnectedAccounts.keys
                        .toList()
                        .length +
                    LocalConnectionsService
                        .notInterestedPartiallyConnectedAccounts.keys
                        .toList()
                        .length +
                    LocalConnectionsService.onlyConnectedAccounts.keys
                        .toList()
                        .length,
                itemBuilder: (BuildContext context, int position,
                    Animation<double> animation) {
                  if (position == 0) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, bottom: 16, top: 32),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: NeumorphicText(
                          "ASSISTANT CONNECTIONS",
                          style: NeumorphicStyle(
                            color: AppColors.contentTertiary(context),
                            lightSource: NeumorphicTheme.isUsingDark(context)
                                ? LightSource.bottomRight
                                : LightSource.topLeft,
                            shadowLightColor:
                                NeumorphicTheme.isUsingDark(context)
                                    ? AppColors.gray600
                                    : AppColors.backgroundSecondary(context),
                            border: NeumorphicBorder(
                                color: AppColors.backgroundPrimary(context),
                                width: 0.25),
                          ),
                          textAlign: TextAlign.start,
                          textStyle: NeumorphicTextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              height: 1.25),
                        ),
                      ),
                    );
                  } else if (position > 0 &&
                      position <
                          LocalConnectionsService.fullyConnectedAccountAssistants.keys.toList().length +
                              1) {
                    int widgetIndex = position - 1;
                    AccountConnectedAccountAssistant connectedAccountAssistant =
                        LocalConnectionsService
                            .fullyConnectedAccountAssistants.keys
                            .toList()[widgetIndex];
                    AccountAssistantMeta accountAssistantMeta =
                        LocalConnectionsService.fullyConnectedAccountAssistants[
                            connectedAccountAssistant]!;
                    if (accountAssistantMeta.accountAssistantName.length > 0) {
                      return ConnectedAccountAssistantListItem(
                          connectedAccountAssistant, accountAssistantMeta, () {
                        AppPushPage().pushHorizontalPage(
                            context,
                            AccountAssistantConversationPage(
                              accountAssistant: LocalConnectionsService
                                      .mappedAccountAssistant[
                                  connectedAccountAssistant
                                      .accountAssistantId]!,
                            ));
                      });
                    } else {
                      return SizedBox();
                    }
                  } else if (position ==
                      LocalConnectionsService.fullyConnectedAccountAssistants.keys.toList().length +
                          1) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, bottom: 16, top: 32),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: NeumorphicText(
                          "I AM DIRECTLY CONNECTED TO",
                          style: NeumorphicStyle(
                            color: AppColors.contentTertiary(context),
                            lightSource: NeumorphicTheme.isUsingDark(context)
                                ? LightSource.bottomRight
                                : LightSource.topLeft,
                            shadowLightColor:
                                NeumorphicTheme.isUsingDark(context)
                                    ? AppColors.gray600
                                    : AppColors.backgroundSecondary(context),
                            border: NeumorphicBorder(
                                color: AppColors.backgroundPrimary(context),
                                width: 0.25),
                          ),
                          textAlign: TextAlign.start,
                          textStyle: NeumorphicTextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              height: 1.25),
                        ),
                      ),
                    );
                  } else if (position > LocalConnectionsService.fullyConnectedAccountAssistants.keys.toList().length + 1 &&
                      position <
                          LocalConnectionsService.fullyConnectedAccounts.keys.toList().length +
                              2 +
                              LocalConnectionsService
                                  .fullyConnectedAccountAssistants.keys
                                  .toList()
                                  .length) {
                    int widgetIndex = position -
                        2 -
                        LocalConnectionsService
                            .fullyConnectedAccountAssistants.keys
                            .toList()
                            .length;
                    AccountConnectedAccount connectedAccount =
                        LocalConnectionsService.fullyConnectedAccounts.keys
                            .toList()[widgetIndex];
                    Account account = LocalConnectionsService
                        .fullyConnectedAccounts[connectedAccount]!;
                    return AccountConnectedAccountListItem(
                        connectedAccount, account, () {
                      AppPushPage().pushHorizontalPage(
                          context,
                          AccountConversationPage(
                            account: account,
                          ));
                    }, (connectedAccount) {
                      toggleConnectedAccountInterest(connectedAccount);
                    });
                  } else if (position ==
                      LocalConnectionsService.fullyConnectedAccounts.keys.toList().length +
                          2 +
                          LocalConnectionsService.fullyConnectedAccountAssistants.keys
                              .toList()
                              .length) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, bottom: 16, top: 32),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: NeumorphicText(
                          "I AM INTERESTED IN DIRECTLY CONNECTING",
                          style: NeumorphicStyle(
                            color: AppColors.contentTertiary(context),
                            lightSource: NeumorphicTheme.isUsingDark(context)
                                ? LightSource.bottomRight
                                : LightSource.topLeft,
                            shadowLightColor:
                                NeumorphicTheme.isUsingDark(context)
                                    ? AppColors.gray600
                                    : AppColors.backgroundSecondary(context),
                            border: NeumorphicBorder(
                                color: AppColors.backgroundPrimary(context),
                                width: 0.25),
                          ),
                          textAlign: TextAlign.start,
                          textStyle: NeumorphicTextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              height: 1.25),
                        ),
                      ),
                    );
                  } else if (position > LocalConnectionsService.fullyConnectedAccounts.keys.toList().length + 2 + LocalConnectionsService.fullyConnectedAccountAssistants.keys.toList().length &&
                      position <
                          LocalConnectionsService.fullyConnectedAccountAssistants.keys.toList().length +
                              LocalConnectionsService.fullyConnectedAccounts.keys
                                  .toList()
                                  .length +
                              LocalConnectionsService
                                  .interestedPartiallyConnectedAccounts.keys
                                  .toList()
                                  .length +
                              3) {
                    int widgetIndex = position -
                        3 -
                        LocalConnectionsService.fullyConnectedAccounts.keys
                            .toList()
                            .length -
                        LocalConnectionsService
                            .fullyConnectedAccountAssistants.keys
                            .toList()
                            .length;
                    AccountConnectedAccount connectedAccount =
                        LocalConnectionsService
                            .interestedPartiallyConnectedAccounts.keys
                            .toList()[widgetIndex];
                    Account account = LocalConnectionsService
                            .interestedPartiallyConnectedAccounts[
                        connectedAccount]!;
                    return AccountConnectedAccountListItem(
                        connectedAccount, account, () {}, (connectedAccount) {
                      toggleConnectedAccountInterest(connectedAccount);
                    });
                  } else if (position ==
                      LocalConnectionsService.fullyConnectedAccountAssistants.keys
                              .toList()
                              .length +
                          LocalConnectionsService.fullyConnectedAccounts.keys.toList().length +
                          3 +
                          LocalConnectionsService.interestedPartiallyConnectedAccounts.keys.toList().length) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, bottom: 16, top: 32),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: NeumorphicText(
                          "${LocalConnectionsService.notInterestedPartiallyConnectedAccounts.keys.toList().length > 0 ? "AWAITING DIRECT CONNECTIONS" : "NO AWAITING DIRECT CONNECTIONS"}",
                          style: NeumorphicStyle(
                            color: AppColors.contentTertiary(context),
                            lightSource: NeumorphicTheme.isUsingDark(context)
                                ? LightSource.bottomRight
                                : LightSource.topLeft,
                            shadowLightColor:
                                NeumorphicTheme.isUsingDark(context)
                                    ? AppColors.gray600
                                    : AppColors.backgroundSecondary(context),
                            border: NeumorphicBorder(
                                color: AppColors.backgroundPrimary(context),
                                width: 0.25),
                          ),
                          textAlign: TextAlign.start,
                          textStyle: NeumorphicTextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              height: 1.25),
                        ),
                      ),
                    );
                  } else if (position > LocalConnectionsService.fullyConnectedAccountAssistants.keys.toList().length + LocalConnectionsService.fullyConnectedAccounts.keys.toList().length + 3 + LocalConnectionsService.interestedPartiallyConnectedAccounts.keys.toList().length && position < LocalConnectionsService.fullyConnectedAccountAssistants.keys.toList().length + LocalConnectionsService.fullyConnectedAccounts.keys.toList().length + 4 + LocalConnectionsService.interestedPartiallyConnectedAccounts.keys.toList().length + LocalConnectionsService.notInterestedPartiallyConnectedAccounts.keys.toList().length) {
                    int widgetIndex = position -
                        4 -
                        LocalConnectionsService
                            .fullyConnectedAccountAssistants.keys
                            .toList()
                            .length -
                        LocalConnectionsService.fullyConnectedAccounts.keys
                            .toList()
                            .length -
                        LocalConnectionsService
                            .interestedPartiallyConnectedAccounts.keys
                            .toList()
                            .length;
                    AccountConnectedAccount connectedAccount =
                        LocalConnectionsService
                            .notInterestedPartiallyConnectedAccounts.keys
                            .toList()[widgetIndex];
                    Account account = LocalConnectionsService
                            .notInterestedPartiallyConnectedAccounts[
                        connectedAccount]!;
                    return AccountConnectedAccountListItem(
                        connectedAccount, account, () {}, (connectedAccount) {
                      toggleConnectedAccountInterest(connectedAccount);
                    });
                  } else if (position == LocalConnectionsService.fullyConnectedAccountAssistants.keys.toList().length + LocalConnectionsService.fullyConnectedAccounts.keys.toList().length + 4 + LocalConnectionsService.interestedPartiallyConnectedAccounts.keys.toList().length + LocalConnectionsService.notInterestedPartiallyConnectedAccounts.keys.toList().length) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: 16, right: 16, bottom: 16, top: 32),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: NeumorphicText(
                          "${LocalConnectionsService.onlyConnectedAccounts.keys.toList().length > 0 ? "SIMPLE CONNECTIONS" : "NO SIMPLE CONNECTIONS"}",
                          style: NeumorphicStyle(
                            color: AppColors.contentTertiary(context),
                            lightSource: NeumorphicTheme.isUsingDark(context)
                                ? LightSource.bottomRight
                                : LightSource.topLeft,
                            shadowLightColor:
                                NeumorphicTheme.isUsingDark(context)
                                    ? AppColors.gray600
                                    : AppColors.backgroundSecondary(context),
                            border: NeumorphicBorder(
                                color: AppColors.backgroundPrimary(context),
                                width: 0.25),
                          ),
                          textAlign: TextAlign.start,
                          textStyle: NeumorphicTextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              height: 1.25),
                        ),
                      ),
                    );
                  } else if (position > LocalConnectionsService.fullyConnectedAccountAssistants.keys.toList().length + LocalConnectionsService.fullyConnectedAccounts.keys.toList().length + 4 + LocalConnectionsService.interestedPartiallyConnectedAccounts.keys.toList().length + LocalConnectionsService.notInterestedPartiallyConnectedAccounts.keys.toList().length && position < LocalConnectionsService.fullyConnectedAccountAssistants.keys.toList().length + LocalConnectionsService.fullyConnectedAccounts.keys.toList().length + 5 + LocalConnectionsService.interestedPartiallyConnectedAccounts.keys.toList().length + LocalConnectionsService.notInterestedPartiallyConnectedAccounts.keys.toList().length + LocalConnectionsService.onlyConnectedAccounts.keys.toList().length) {
                    int widgetIndex = position -
                        5 -
                        LocalConnectionsService
                            .fullyConnectedAccountAssistants.keys
                            .toList()
                            .length -
                        LocalConnectionsService.fullyConnectedAccounts.keys
                            .toList()
                            .length -
                        LocalConnectionsService
                            .interestedPartiallyConnectedAccounts.keys
                            .toList()
                            .length -
                        LocalConnectionsService
                            .notInterestedPartiallyConnectedAccounts.keys
                            .toList()
                            .length;
                    AccountConnectedAccount connectedAccount =
                        LocalConnectionsService.onlyConnectedAccounts.keys
                            .toList()[widgetIndex];
                    Account account = LocalConnectionsService
                        .onlyConnectedAccounts[connectedAccount]!;
                    return AccountConnectedAccountListItem(
                        connectedAccount, account, () {}, (connectedAccount) {
                      toggleConnectedAccountInterest(connectedAccount);
                    });
                  } else {
                    return SizedBox();
                  }
                })
          ],
        ));
  }

  toggleConnectedAccountInterest(
      AccountConnectedAccount connectedAccount) async {
    await ConnectAccountService.toggleAccountConnectAccountInterest(
        connectedAccount);
    // TODO: Handle this
  }
}
