import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/account/send_account_message.pb.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/widgets/components/Text/Entity/AbstractEntityAssistantText.dart';
import 'package:fifty_gramx/widgets/components/Text/Message/AbstractConversationText.dart';
import 'package:flutter/material.dart';

class ConversationMessageText implements AbstractConversationText {
  final String message;

  ConversationMessageText(this.message);

  @override
  Widget buildConversationMessageText(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            text: message,
            style: AppTextStyle.messageTextStyle(context),
          ),
        ),
      ],
    );
  }

  @override
  Widget buildConversationMessageTimeText(BuildContext context) => SizedBox();
}
