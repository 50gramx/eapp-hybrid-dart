import 'dart:io';

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/account/send_account_message.pb.dart';
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
          trailingButtonCallback: () {}
      ),
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

  getAccountConnectedAccountReceivedMessages(
      AccountConnectedAccount accountConnectedAccount) async {
    ReceiveAccountMessageService.syncAccountConnectedAccountReceivedMessages(
        accountConnectedAccount);
  }

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
