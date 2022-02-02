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

import 'dart:io';

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/receiveAccountMessageService.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/sendAccountMessageService.dart';
import 'package:fifty_gramx/widgets/components/screen/appTabBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

/// Page that displays its index, flow's title and color.
///
/// Has a button for pushing another one of its kind with an incremented index,
///  and another button for starting a new flow named 'New' with
/// a random background color.
class AccountAssistantConversationsPage extends StatelessWidget {
  const AccountAssistantConversationsPage({
    required this.containingFlowTitle,
    required this.accountAssistant,
    required this.accountConnectedAccountAssistant,
    Key? key,
  });

  final AccountAssistant accountAssistant;
  final AccountConnectedAccountAssistant accountConnectedAccountAssistant;
  final String containingFlowTitle;

  @override
  Widget build(BuildContext context) {
    getAccountConnectedAccountAssistantReceivedMessages(
        accountConnectedAccountAssistant);
    getAccountConnectedAccountAssistantSentMessages(
        accountConnectedAccountAssistant);

    // var pageTitle = 'Page $index';
    // pageTitle += ' of $containingFlowTitle Flow';
    var pageTitle = '$containingFlowTitle';
    return Scaffold(
      backgroundColor: AppColors.lightNeuPrimaryBackground,
      appBar: CustomAppBar(
        labelText: accountAssistant.accountAssistantName,
        actionLabelText: "Info",
        isBackEnabled: true,
          trailingButtonCallback: () {}
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Horizontally pushes a new screen.
          ],
        ),
      ),
    );
  }

  getAccountConnectedAccountAssistantReceivedMessages(
      AccountConnectedAccountAssistant accountConnectedAccountAssistant) async {
    print("getAccountConnectedAccountAssistantReceivedMessages");

    ReceiveAccountMessageService
        .syncAccountConnectedAccountAssistantReceivedMessages(
            accountConnectedAccountAssistant);
  }

  getAccountConnectedAccountAssistantSentMessages(
      accountConnectedAccountAssistant) async {
    print("getAccountConnectedAccountAssistantReceivedMessages");

    SendAccountMessageService.syncAccountConnectedAccountAssistantSentMessages(
        accountConnectedAccountAssistant);
  }
}
