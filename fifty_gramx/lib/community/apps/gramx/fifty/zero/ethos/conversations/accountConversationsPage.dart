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

import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/conversation/message/account/send_account_message.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/appTabBar.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/receiveAccountMessageService.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/sendAccountMessageService.dart';
import 'package:flutter/material.dart';

/// Page that displays its index, flow's title and color.
///
/// Has a button for pushing another one of its kind with an incremented index,
///  and another button for starting a new flow named 'New' with
/// a random background color.

/// Host screen widget - main window
class AccountConversationsPage extends StatelessWidget {
  const AccountConversationsPage({
    required this.account,
    required this.accountConnectedAccount,
    Key? key,
  });

  final Account account;
  final AccountConnectedAccount accountConnectedAccount;

  @override
  Widget build(BuildContext context) {
    // getAccountConnectedAccountReceivedMessages(accountConnectedAccount);
    // getAccountConnectedAccountSentMessages(accountConnectedAccount);

    return Scaffold(
      backgroundColor: AppColors.lightNeuPrimaryBackground,
      appBar: CustomAppBar(
          labelText: account.accountFirstName + " " + account.accountLastName,
          actionLabelText: "Info",
          isBackEnabled: true,
          trailingButtonCallback: () {}),
      body: Center(
          child: ListView(
        children: [],
      )),
    );
  }

  /*
  FutureBuilder<
              Stream<SyncAccountConnectedAccountSentMessagesResponse>>(
            future:
                getAccountConnectedAccountSentMessages(accountConnectedAccount),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.secondaryColor),
                  ),
                );
              } else {
                return ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(10.0),
                  itemBuilder: (context, index) {
                    return Text("Hello you!");
                  },
                );
              }
            },
          ),

   */

  /*
  StreamBuilder(
              stream: getAccountConnectedAccountSentMessages(
                  accountConnectedAccount),
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                return ListView.builder(
                    shrinkWrap: true,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return AccountConversationsMessagesSentListItem(
                        accountSentMessage: snapshot.data!.accountSentMessage,
                      );
                    });
              },
            ),
   */

  // warn: not using this
  getAccountConnectedAccountReceivedMessages(
      AccountConnectedAccount accountConnectedAccount) async {
    ReceiveAccountMessageService.syncAccountConnectedAccountReceivedMessages(
        accountConnectedAccount);
  }

  // warn: not using this
  Future<Stream<SyncAccountConnectedAccountSentMessagesResponse>>
      getAccountConnectedAccountSentMessages(accountConnectedAccount) async {
    var responseStream =
        await SendAccountMessageService.syncAccountConnectedAccountSentMessages(
            accountConnectedAccount);
    // await for (var response in responseStream) {
    //   print(response);
    // }
    return responseStream;
  }
}
