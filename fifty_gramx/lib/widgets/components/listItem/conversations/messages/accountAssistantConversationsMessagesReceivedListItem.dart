import 'package:bubble/bubble.dart';
import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/account/receive_account_message.pb.dart';
import 'package:fifty_gramx/services/datetime/DateTimeService.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/widgets/components/Style/BubbleStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/account/send_account_message.pb.dart';
import 'package:fifty_gramx/widgets/components/listItem/conversations/messages/conversationsMessagesListItem.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';

/// A ListItem that contains data to display a heading.
class AccountAssistantConversationsMessagesReceivedListItem
    implements ConversationsMessagesListItem {
  final AccountAssistantReceivedMessage accountAssistantReceivedMessage;
  final AccountAssistant receivingAccountAssistant;

  AccountAssistantConversationsMessagesReceivedListItem(
      this.accountAssistantReceivedMessage, this.receivingAccountAssistant);

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
  Widget buildAccountConversationsReceivedMessage(BuildContext context) =>
      SizedBox();

  @override
  Widget buildAccountAssistantConversationsSentMessage(BuildContext context) =>
      SizedBox();

  @override
  Widget buildAccountAssistantConversationsReceivedMessage(
      BuildContext context) {
    int msgLength = accountAssistantReceivedMessage.message.length;
    int limit = 10 + receivingAccountAssistant.accountAssistantName.length + 7;
    String extraSpace = ' ';
    if (msgLength == 0) {
      msgLength = "Response was not recorded".length;
    }
    if (msgLength < limit) {
      extraSpace = ' ' *
          (receivingAccountAssistant.accountAssistantName.length +
              4 +
              12 -
              msgLength);
    }

    var messageHeading = RichText(
        text: TextSpan(children: [
      TextSpan(
          text:
              "${receivingAccountAssistant.accountAssistantNameCode < 10 ? "0${receivingAccountAssistant.accountAssistantNameCode}" : receivingAccountAssistant.accountAssistantNameCode}, ",
          style: AppTextStyle.messageEntityNameTextStyle(context)),
      TextSpan(
        text: "${receivingAccountAssistant.accountAssistantName.trim()}",
        style: AppTextStyle.messageEntityNameTextStyle(context),
      ),
      TextSpan(
        text:
            "  ${DateTimeService().getHourMinuteWithMarker(accountAssistantReceivedMessage.receivedAt)}",
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
              : AppColors.backgroundSecondary(context),
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
        ),
        child: Container(
          child: Stack(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(bottom: 8, right: 16, left: 32, top: 24),
                child: Text(
                    (accountAssistantReceivedMessage.message.length == 0
                            ? "Response was not recorded"
                            : accountAssistantReceivedMessage.message) +
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
                        color: AppColors.backgroundTertiary(context), width: 2),
                  ),
                  padding: const EdgeInsets.all(0),
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: AppColors.backgroundPrimary(context),
                    child: NeumorphicText(
                      "${receivingAccountAssistant.accountAssistantNameCode < 10 ? "0${receivingAccountAssistant.accountAssistantNameCode}" : receivingAccountAssistant.accountAssistantNameCode}",
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
}
//
//
//
// class AccountAssistantConversationsMessagesReceivedListItem extends StatelessWidget {
//   @override
//   const AccountAssistantConversationsMessagesReceivedListItem(
//       {Key? key, required this.accountAssistant, required this.pushAssistantConversation})
//       : super(key: key);
//
//   final AccountAssistant accountAssistant;
//   final VoidCallback pushAssistantConversation;
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
//                 pushAssistantConversation();
//               },
//               leading: Container(
//                 width: 36,
//                 height: 36,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(36)),
//                   color: AppColors.lightNeuPrimaryBackground,
//                 ),
//                 child: TextButton(
//                   style: TextButton.styleFrom(
//                       textStyle: TextStyle(fontSize: 16),
//                       primary: AppColors.lightNeuSecondary),
//                   child: Text("${accountAssistant.accountAssistantNameCode}"),
//                   onPressed: () {},
//                 ),
//               ),
//               title: Text(
//                 accountAssistant.accountAssistantName,
//                 style: TextStyle(
//                     color: AppColors.lightNeuSecondary,
//                     fontSize: 16,
//                     fontWeight: FontWeight.w500,
//                     height: 1.25),
//               ),
//               subtitle: Text(
//                 "Hey!",
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
