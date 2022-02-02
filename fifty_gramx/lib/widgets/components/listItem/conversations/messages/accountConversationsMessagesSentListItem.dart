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
import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/account/send_account_message.pb.dart';
import 'package:fifty_gramx/services/datetime/DateTimeService.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/widgets/components/Style/BubbleStyle.dart';
import 'package:fifty_gramx/widgets/components/listItem/conversations/messages/conversationsMessagesListItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';

/// A ListItem that contains data to display a heading.
class AccountConversationsMessagesSentListItem
    implements ConversationsMessagesListItem {
  final AccountSentMessage accountSentMessage;

  AccountConversationsMessagesSentListItem(this.accountSentMessage);

  @override
  Widget buildAccountShortSentMessage(BuildContext context) => SizedBox();

  @override
  Widget buildAccountShortReceivedMessage(BuildContext context) => SizedBox();

  @override
  Widget buildAccountConversationsSentMessage(BuildContext context) {
    int msgLength = accountSentMessage.message.length;
    int limit = 10;
    String extraSpace = ' ';
    if (msgLength < 10) {
      extraSpace = ' ' * (10 - msgLength);
    }

    var messageTime =
        DateTimeService().getHourMinuteWithMarker(accountSentMessage.sentAt);
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
            color: AppColors.backgroundPrimary(context),
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
                          accountSentMessage.message,
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
  Widget buildSubtitle(BuildContext context) => SizedBox();

  @override
  Widget buildAccountAssistantConversationsReceivedMessage(
          BuildContext context) =>
      SizedBox();

  @override
  Widget buildAccountAssistantConversationsSentMessage(BuildContext context) =>
      SizedBox();

  @override
  Widget buildAccountConversationsReceivedMessage(BuildContext context) =>
      SizedBox();
}

//
// class AccountConversationsMessagesSentListItem extends StatelessWidget {
//   @override
//   const AccountConversationsMessagesSentListItem(
//       {Key? key, required this.accountSentMessage})
//       : super(key: key);
//
//   final AccountSentMessage accountSentMessage;
//
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(24)),
//           color: AppColors.lightNeuPrimary,
//         ),
//         child: Column(
//           children: [
//             ListTile(
//               onTap: () {
//               },
//               title: Text(
//                 accountSentMessage.message,
//                 style: TextStyle(
//                     color: AppColors.lightNeuSecondary,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                     height: 1.25),
//               ),
//               subtitle: Text(
//                 "${accountSentMessage.sentAt.toDateTime()}",
//                 style: TextStyle(
//                     color: AppColors.grey600,
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                     height: 1.42857143),
//               ),
//             ),
//             Row(children: <Widget>[
//               Expanded(
//                 child: new Container(
//                     margin: const EdgeInsets.only(left: 64.0, right: 16.0),
//                     height: 1,
//                     child: Divider(
//                       color: AppColors.dividerColor,
//                       thickness: 1,
//                     )),
//               ),
//             ]),
//           ],
//         ));
//   }
// }
