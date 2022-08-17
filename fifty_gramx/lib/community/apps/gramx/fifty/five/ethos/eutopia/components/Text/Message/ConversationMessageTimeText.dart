import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/account/send_account_message.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Text/Entity/AbstractEntityAssistantText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Text/Message/AbstractConversationText.dart';
import 'package:flutter/material.dart';

class ConversationMessageTimeText implements AbstractConversationText {
  final Timestamp timestamp;

  ConversationMessageTimeText(this.timestamp);

  @override
  Widget buildConversationMessageText(BuildContext context) => SizedBox();

  @override
  Widget buildConversationMessageTimeText(BuildContext context) {
    return Text("#${timestamp.toDateTime().toLocal().toIso8601String()}",
        textAlign: TextAlign.center, style: AppTextStyle.messageTimeTextStyle(context));
  }
}
