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

import 'package:bubble/bubble.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/conversation/message/account/receive_account_message.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/BubbleStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/conversations/messages/conversationsMessagesListItem.dart';
import 'package:fifty_gramx/services/datetime/DateTimeService.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// A ListItem that contains data to display a heading.
class AccountConversationsMessagesReceivedListItem
    implements ConversationsMessagesListItem {
  final AccountReceivedMessage accountReceivedMessage;
  final Account account;

  AccountConversationsMessagesReceivedListItem(
    this.accountReceivedMessage,
    this.account,
  );

  @override
  Widget buildAccountShortSentMessage(BuildContext context) => SizedBox();

  @override
  Widget buildAccountShortReceivedMessage(BuildContext context) => SizedBox();

  @override
  Widget buildAccountConversationsSentMessage(BuildContext context) =>
      SizedBox();

  String getInitials(String contactName) => contactName.isNotEmpty
      ? contactName.trim().split(' ').map((l) => l[0]).take(2).join()
      : '';

  @override
  Widget buildAccountConversationsReceivedMessage(BuildContext context) {
    int msgLength = accountReceivedMessage.message.length;
    int limit = 10 +
        account.accountFirstName.length +
        account.accountLastName.length +
        7;
    String extraSpace = ' ';
    if (msgLength < limit) {
      extraSpace = ' ' *
          (account.accountFirstName.length +
              account.accountLastName.length +
              8 +
              12 -
              msgLength);
    }

    var messageTime = DateTimeService()
        .getHourMinuteWithMarker(accountReceivedMessage.receivedAt);

    var messageHeading = RichText(
        text: TextSpan(children: [
      TextSpan(
          text:
              "${account.accountFirstName.trim()[0].toUpperCase()}${account.accountFirstName.trim().substring(1, account.accountFirstName.trim().length)} ",
          style: AppTextStyle.messageEntityNameTextStyle(context)),
      TextSpan(
        text:
            "${account.accountLastName.trim()[0].toUpperCase()}${account.accountLastName.trim().substring(1, account.accountLastName.trim().length)}",
        style: AppTextStyle.messageEntityNameTextStyle(context),
      ),
      TextSpan(
        text: "  $messageTime",
        style: AppTextStyle.messageTimeTextStyle(context),
      ),
    ]));

    return Bubble(
      style: MessageBubbleStyle().styleReceivedMessage(context),
      child: Neumorphic(
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundPrimary(context),
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
        ),
        child: Container(
          child: Stack(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(bottom: 8, right: 16, left: 32, top: 24),
                child: Text(
                    accountReceivedMessage.message +
                        (msgLength <= limit ? extraSpace : ''),
                    style: AppTextStyle.messageTextStyle(context)),
              ),
              Positioned(
                top: 6,
                left: 32,
                child: messageHeading,
              ),
              Positioned(
                top: 2,
                left: 2,
                child: NeumorphicButton(
                  provideHapticFeedback: true,
                  onPressed: () {},
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    disableDepth: true,
                    shape: NeumorphicShape.flat,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                    color: AppColors.backgroundPrimary(context),
                    border: NeumorphicBorder(
                        color: AppColors.backgroundPrimary(context), width: 2),
                  ),
                  padding: const EdgeInsets.all(0),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: AppColors.backgroundPrimary(context),
                    child: NeumorphicText(
                      "${getInitials(account.accountFirstName + " " + account.accountLastName).toUpperCase()}",
                      style: NeumorphicStyle(
                        color: AppColors.contentSecondary(context),
                        lightSource: NeumorphicTheme.isUsingDark(context)
                            ? LightSource.bottomRight
                            : LightSource.topLeft,
                        shadowLightColor: NeumorphicTheme.isUsingDark(context)
                            ? AppColors.gray600
                            : AppColors.backgroundSecondary(context),
                        border: NeumorphicBorder(
                            color: AppColors.backgroundTertiary(context),
                            width: 0.5),
                      ),
                      textAlign: TextAlign.start,
                      textStyle: NeumorphicTextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          height: 1.25),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => SizedBox();

  @override
  Widget buildAccountAssistantConversationsReceivedMessage(
          BuildContext context) =>
      SizedBox();

  @override
  Widget buildAccountAssistantConversationsSentMessage(BuildContext context) =>
      SizedBox();
}
