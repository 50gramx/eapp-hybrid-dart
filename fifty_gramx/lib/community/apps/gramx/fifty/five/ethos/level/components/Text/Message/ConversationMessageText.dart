import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Message/AbstractConversationText.dart';
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
