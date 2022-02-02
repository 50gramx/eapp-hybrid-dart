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
