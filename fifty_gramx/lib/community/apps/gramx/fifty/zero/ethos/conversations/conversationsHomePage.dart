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

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Title/listItemSubtitleText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Title/listItemTitleText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/LocalConversationsService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/ethosai/EthosaiConfigurationPage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/messaging/AccountAssistantConversationPage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/messaging/AccountConversationPage.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/pushHorizontalPage.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/localServices.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/message_conversation.pb.dart';
import 'package:fifty_gramx/services/datetime/DateTimeService.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ConversationsHomePage extends StatefulWidget {
  const ConversationsHomePage({
    required this.index,
    required this.containingFlowTitle,
    Key? key,
  }) : super(key: key);

  final int index;
  final String containingFlowTitle;

  @override
  State<ConversationsHomePage> createState() {
    return _ConversationsHomePageState();
  }
}

class _ConversationsHomePageState extends State<ConversationsHomePage> {
  Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  @override
  void initState() {
    // loadMyConversations();
    listenForLocalNotifications();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  loadMyConversations() async {
    print("loadMyConversations");
    print(
        "loadMyConversations: total length: ${LocalConversationsService.conversedEntityWithLastConversationMessages.length}");
    // Update list
    for (int index = 0;
        index <
            LocalConversationsService
                .conversedEntityWithLastConversationMessages.length;
        index++) {
      print("loadMyConversations: inserting at $index");
      _conversedEntityListKey.currentState!.insertItem(index);
    }
  }

  listenForLocalNotifications() {
    // TODO: Handle _notificationsStream error
    // TODO: Handle disposed
    _notificationsStream.listen((notification) {
      if (notification.type == "LocalConversationsService") {
        if (notification.data["subType"] ==
            "AddedConversedEntityWithLastConversationMessage") {
          if (_conversedEntityListKey.currentState != null) {
            _conversedEntityListKey.currentState!
                .insertItem(notification.data["at"]);
          }
        } else if (notification.data["subType"] == "AddedAccountSentMessage") {
          setState(() {});
        } else if (notification.data["subType"] ==
            "AddedAccountReceivedMessage") {
          setState(() {});
        } else if (notification.data["subType"] ==
            "AddedAccountAssistantSentMessage") {
          setState(() {});
        } else if (notification.data["subType"] ==
            "AddedAccountAssistantReceivedMessage") {
          setState(() {});
        }
      }
    });
  }

  final GlobalKey<SliverAnimatedListState> _conversedEntityListKey =
      GlobalKey<SliverAnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundPrimary(context),
        body: CustomScrollView(
          slivers: <Widget>[
            CustomSliverAppBar(
              labelText: "Ethos Conversations",
              actionLabelText: "Ethosai",
              isActionEnabled: false,
              isBackEnabled: false,
              trailingButtonCallback: () {
                AppPushPage()
                    .pushHorizontalPage(context, EthosaiConfigurationPage());
              },
              onStretchTriggerCallback: () {
                LocalServices().conversations();
              },
            ),
            SliverAnimatedList(
              key: _conversedEntityListKey,
              initialItemCount: LocalConversationsService
                      .conversedEntityWithLastConversationMessages.length +
                  1,
              itemBuilder: (BuildContext context, int position,
                  Animation<double> animation) {
                print("position: $position");
                if (position == 0) {
                  return Padding(
                    padding: EdgeInsets.only(
                        left: 16, right: 16, bottom: 16, top: 32),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: NeumorphicText(
                        "RECENT CONVERSATIONS",
                        style: NeumorphicStyle(
                          color: AppColors.contentTertiary(context),
                          lightSource: NeumorphicTheme.isUsingDark(context)
                              ? LightSource.bottomRight
                              : LightSource.topLeft,
                          shadowLightColor: NeumorphicTheme.isUsingDark(context)
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
                } else if (position <=
                    LocalConversationsService
                        .conversedEntityWithLastConversationMessages.length) {
                  var newPosition = position - 1;
                  var heroTag;
                  print("newPosition: $newPosition");
                  print(
                      "LocalConversationsService:length ${LocalConversationsService.conversedEntityWithLastConversationMessages.length}");
                  ConversedEntityWithLastConversationMessage
                      conversedEntityWithLastConversationMessage =
                      LocalConversationsService
                              .conversedEntityWithLastConversationMessages[
                          newPosition];
                  var centerTitleText;
                  var centerSubtitleText;
                  if (conversedEntityWithLastConversationMessage
                      .lastConversationMessage
                      .isMessageEntityAccountAssistant) {
                    var assistantName =
                        conversedEntityWithLastConversationMessage
                            .conversedAccountAssistant.accountAssistantName;
                    heroTag = conversedEntityWithLastConversationMessage
                        .conversedAccountAssistant.accountAssistantId;
                    centerTitleText = ListItemTitleTextWidget(
                      titleText:
                          "${assistantName[0].toUpperCase()}${assistantName.substring(1, assistantName.length)}",
                      disableNeu: true,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    );
                    if (conversedEntityWithLastConversationMessage
                        .lastConversationMessage.isMessageSent) {
                      centerSubtitleText = Row(
                        children: [
                          Expanded(
                            child: ListItemSubtitleTextWidget(
                                subtitleText:
                                    "${conversedEntityWithLastConversationMessage.lastConversationMessage.accountAssistantSentMessage.message}",
                                disableNeu: true,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 4, left: 4),
                            child: Icon(FeatherIcons.arrowUpRight,
                                size: 16,
                                color: AppColors.contentStateDisabled(context)),
                          ),
                          ListItemSubtitleTextWidget(
                            subtitleText:
                                "${DateTimeService().getFormattedTimeOrDate(conversedEntityWithLastConversationMessage.lastConversationMessage.accountAssistantSentMessage.sentAt)}",
                            disableNeu: true,
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ],
                      );
                    } else {
                      centerSubtitleText = Row(
                        children: [
                          Expanded(
                            child: ListItemSubtitleTextWidget(
                                subtitleText:
                                    "${conversedEntityWithLastConversationMessage.lastConversationMessage.accountAssistantReceivedMessage.message}",
                                disableNeu: true,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 4, left: 4),
                            child: Icon(FeatherIcons.arrowDownLeft,
                                size: 16,
                                color: AppColors.contentStateDisabled(context)),
                          ),
                          ListItemSubtitleTextWidget(
                            subtitleText:
                                "${DateTimeService().getFormattedTimeOrDate(conversedEntityWithLastConversationMessage.lastConversationMessage.accountAssistantReceivedMessage.receivedAt)}",
                            disableNeu: true,
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ],
                      );
                    }
                  } else {
                    var firstName =
                        "${conversedEntityWithLastConversationMessage.conversedAccount.accountFirstName[0].toUpperCase()}${conversedEntityWithLastConversationMessage.conversedAccount.accountFirstName.substring(1, conversedEntityWithLastConversationMessage.conversedAccount.accountFirstName.length)}";
                    var lastName =
                        "${conversedEntityWithLastConversationMessage.conversedAccount.accountLastName[0].toUpperCase()}${conversedEntityWithLastConversationMessage.conversedAccount.accountLastName.substring(1, conversedEntityWithLastConversationMessage.conversedAccount.accountLastName.length)}";
                    heroTag = conversedEntityWithLastConversationMessage
                        .conversedAccount.accountId;
                    centerTitleText = ListItemTitleTextWidget(
                      titleText: "$firstName $lastName",
                      disableNeu: true,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    );
                    if (conversedEntityWithLastConversationMessage
                        .lastConversationMessage.isMessageSent) {
                      centerSubtitleText = Row(
                        children: [
                          Expanded(
                            child: ListItemSubtitleTextWidget(
                                subtitleText:
                                    "${conversedEntityWithLastConversationMessage.lastConversationMessage.accountSentMessage.message}",
                                disableNeu: true,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 4, left: 4),
                            child: Icon(FeatherIcons.arrowUpRight,
                                size: 16,
                                color: AppColors.contentStateDisabled(context)),
                          ),
                          ListItemSubtitleTextWidget(
                            subtitleText:
                                "${DateTimeService().getFormattedTimeOrDate(conversedEntityWithLastConversationMessage.lastConversationMessage.accountSentMessage.sentAt)}",
                            disableNeu: true,
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ],
                      );
                    } else {
                      centerSubtitleText = Row(
                        children: [
                          Expanded(
                              child: ListItemSubtitleTextWidget(
                                  subtitleText:
                                      "${conversedEntityWithLastConversationMessage.lastConversationMessage.accountReceivedMessage.message}",
                                  disableNeu: true,
                                  fontWeight: FontWeight.w400)),
                          Padding(
                            padding: EdgeInsets.only(right: 4, left: 4),
                            child: Icon(FeatherIcons.arrowDownLeft,
                                size: 16,
                                color: AppColors.contentStateDisabled(context)),
                          ),
                          ListItemSubtitleTextWidget(
                            subtitleText:
                                "${DateTimeService().getFormattedTimeOrDate(conversedEntityWithLastConversationMessage.lastConversationMessage.accountReceivedMessage.receivedAt)}",
                            disableNeu: true,
                            fontWeight: FontWeight.w300,
                            fontSize: 14,
                          ),
                        ],
                      );
                    }
                  }
                  // TODO: Add Slide transition
                  return SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(-1, 0),
                      end: const Offset(0, 0),
                    ).animate(animation),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        color: AppColors.backgroundPrimary(context),
                        lightSource: NeumorphicTheme.isUsingDark(context)
                            ? LightSource.bottomRight
                            : LightSource.topLeft,
                        shadowLightColor: NeumorphicTheme.isUsingDark(context)
                            ? AppColors.gray600
                            : AppColors.backgroundSecondary(context),
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(24)),
                        border: NeumorphicBorder(
                            color: AppColors.backgroundSecondary(context),
                            width: 0),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 6),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Theme(
                              data: ThemeData(
                                highlightColor:
                                    AppColors.backgroundPrimary(context),
                              ),
                              child: Hero(
                                tag: heroTag,
                                child: ListTile(
                                  onTap: () {
                                    AppPushPage().pushHorizontalPage(
                                        context,
                                        conversedEntityWithLastConversationMessage
                                                .lastConversationMessage
                                                .isMessageEntityAccountAssistant
                                            ? AccountAssistantConversationPage(
                                                accountAssistant:
                                                    conversedEntityWithLastConversationMessage
                                                        .conversedAccountAssistant)
                                            : AccountConversationPage(
                                                account:
                                                    conversedEntityWithLastConversationMessage
                                                        .conversedAccount,
                                              ));
                                  },
                                  title: centerTitleText,
                                  subtitle: centerSubtitleText,
                                  isThreeLine: false,
                                  enableFeedback: true,
                                  dense: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  print("Why extra index was passed?");
                  return SizedBox();
                }
              },
            ),
          ],
        ));
  }
}
