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
import 'package:eapp_dart_domain/ethos/elint/services/product/conversation/message/account/send_account_message.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/BubbleStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/conversations/messages/conversationsMessagesListItem.dart';
import 'package:fifty_gramx/services/datetime/DateTimeService.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// A ListItem that contains data to display a heading.
class AccountAssistantConversationsMessagesSentListItem
    implements ConversationsMessagesListItem {
  final AccountAssistantSentMessage accountAssistantSentMessage;

  AccountAssistantConversationsMessagesSentListItem(
      this.accountAssistantSentMessage);

  @override
  Widget buildAccountShortSentMessage(BuildContext context) => SizedBox();

  @override
  Widget buildAccountShortReceivedMessage(BuildContext context) => SizedBox();

  @override
  Widget buildAccountConversationsSentMessage(BuildContext context) =>
      SizedBox();

  @override
  Widget buildSubtitle(BuildContext context) => SizedBox();

  @override
  Widget buildAccountAssistantConversationsReceivedMessage(
          BuildContext context) =>
      SizedBox();

  @override
  Widget buildAccountAssistantConversationsSentMessage(BuildContext context) {
    int msgLength = accountAssistantSentMessage.message.length;
    int limit = 10;
    String extraSpace = ' ';
    if (msgLength < 10) {
      extraSpace = ' ' * (10 - msgLength);
    }

    var messageTime = DateTimeService()
        .getHourMinuteWithMarker(accountAssistantSentMessage.sentAt);
    var messageHeading = RichText(
        text: TextSpan(children: [
      TextSpan(
        text: "$messageTime",
        style: AppTextStyle.sentMessageTimeTextStyle(context),
      ),
    ]));
    return Bubble(
      style: MessageBubbleStyle().styleSentMessage(context),
      child: Neumorphic(
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray500
              : AppColors.backgroundSecondary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundSecondary(context),
            width: 2,
          ),
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
        ),
        child: Neumorphic(
          style: NeumorphicStyle(
            color: AppColors.backgroundInversePrimary(context),
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
          ),
          child: Container(
            child: Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(bottom: 8, right: 24, left: 16, top: 17),
                  child: Text(
                      (msgLength <= limit ? extraSpace : '') +
                          accountAssistantSentMessage.message,
                      style: AppTextStyle.sentMessageTextStyle(context)),
                ),
                Positioned(
                  top: 3,
                  right: 24,
                  child: messageHeading,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildAccountConversationsReceivedMessage(BuildContext context) =>
      SizedBox();
}
