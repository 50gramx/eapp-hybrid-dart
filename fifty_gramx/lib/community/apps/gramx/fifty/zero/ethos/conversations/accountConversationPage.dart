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

import 'dart:async';

import 'package:async/async.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account_assistant.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/conversation/message/account/receive_account_message.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/conversation/message/account/send_account_message.pb.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/receiveAccountMessageService.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/sendAccountMessageService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/conversations/messages/accountAssistantConversationsMessagesReceivedListItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/conversations/messages/accountAssistantConversationsMessagesSentListItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/conversations/messages/accountConversationsMessagesReceivedListItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/conversations/messages/accountConversationsMessagesSentListItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/conversations/messages/conversationsMessagesListItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/appTabBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';

/// This is the stateful widget that the main application instantiates.
class AccountConversationPage extends StatefulWidget {
  const AccountConversationPage({
    Key? key,
    required this.isAccountConnected,
    required this.accountAssistant,
    required this.accountConnectedAccountAssistant,
    required this.account,
    required this.accountConnectedAccount,
  }) : super(key: key);

  final bool isAccountConnected;
  final AccountAssistant accountAssistant;
  final Account account;
  final AccountConnectedAccountAssistant accountConnectedAccountAssistant;
  final AccountConnectedAccount accountConnectedAccount;

  @override
  State<AccountConversationPage> createState() => _ConversationPageState();
}

class _ConversationPageState extends State<AccountConversationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightNeuPrimaryBackground,
      appBar: CustomAppBar(
          labelText: widget.account.accountFirstName +
              " " +
              widget.account.accountLastName,
          actionLabelText: "Info",
          isBackEnabled: true,
          trailingButtonCallback: () {}),
      body: Column(
        children: [
          Flexible(
              child: StreamBuilder<List<GeneratedMessage>>(
            stream: streamConversationMessages(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(
                    valueColor:
                        AlwaysStoppedAnimation<Color>(AppColors.secondaryColor),
                  ),
                );
              } else {
                return ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (_, int index) {
                    var message = snapshot.data![index];
                    if (widget.isAccountConnected) {
                      if (message.runtimeType ==
                          SyncAccountConnectedAccountSentMessagesResponse) {
                        var accountSentMessage =
                            SyncAccountConnectedAccountSentMessagesResponse
                                    .fromJson(message.writeToJson())
                                .accountSentMessage;
                        return AccountConversationsMessagesSentListItem(
                                accountSentMessage)
                            .buildAccountConversationsSentMessage(context);
                      } else if (message.runtimeType ==
                          SyncAccountConnectedAccountReceivedMessagesResponse) {
                        var accountReceivedMessage =
                            SyncAccountConnectedAccountReceivedMessagesResponse
                                    .fromJson(message.writeToJson())
                                .accountReceivedMessage;
                        return AccountConversationsMessagesReceivedListItem(
                                accountReceivedMessage, Account.getDefault())
                            .buildAccountConversationsReceivedMessage(context);
                      } else if (message.runtimeType ==
                          SyncAccountConnectedAccountAssistantSentMessagesResponse) {
                        var accountAssistantSentMessage =
                            SyncAccountConnectedAccountAssistantSentMessagesResponse
                                    .fromJson(message.writeToJson())
                                .accountAssistantSentMessage;
                        return AccountAssistantConversationsMessagesSentListItem(
                                accountAssistantSentMessage)
                            .buildAccountAssistantConversationsSentMessage(
                                context);
                      } else {
                        return SizedBox();
                      }
                    } else {
                      if (message.runtimeType ==
                          SyncAccountConnectedAccountAssistantSentMessagesResponse) {
                        var accountAssistantSentMessage =
                            SyncAccountConnectedAccountAssistantSentMessagesResponse
                                    .fromJson(message.writeToJson())
                                .accountAssistantSentMessage;
                        return AccountAssistantConversationsMessagesSentListItem(
                                accountAssistantSentMessage)
                            .buildAccountAssistantConversationsSentMessage(
                                context);
                      } else {
                        return SizedBox();
                      }
                    }
                  },
                );
              }
            },
          )),
        ],
      ),
    );
  }

  Stream<List<GeneratedMessage>> streamConversationMessages() async* {
    // Stream<List<AccountSentMessage>> getSentMessagesStream() async* {
    if (widget.isAccountConnected) {
      // List of Messages
      List<GeneratedMessage> _generatedMessages = <GeneratedMessage>[];

      // Messaging Streams
      var accountSentMessagesStream = await SendAccountMessageService
          .syncAccountConnectedAccountSentMessages(
              widget.accountConnectedAccount);
      var accountReceivedMessagesStream = await ReceiveAccountMessageService
          .syncAccountConnectedAccountReceivedMessages(
              widget.accountConnectedAccount);
      var accountAssistantSentMessagesStream = await SendAccountMessageService
          .syncAccountConnectedAccountAssistantSentMessages(
              widget.accountConnectedAccountAssistant);
      var accountAssistantReceivedMessagesStream =
          await ReceiveAccountMessageService
              .syncAccountConnectedAccountAssistantReceivedMessages(
                  widget.accountConnectedAccountAssistant);

      var messagingStreamGroup = StreamGroup.merge([
        accountAssistantSentMessagesStream,
        accountAssistantReceivedMessagesStream,
        accountSentMessagesStream,
        accountReceivedMessagesStream
      ]);

      await for (var message in messagingStreamGroup) {
        _generatedMessages.add(message);
        yield _generatedMessages;
      }
    } else {
      // List of Messages
      List<GeneratedMessage> _generatedMessages = <GeneratedMessage>[];

      // Messaging Streams
      var accountAssistantSentMessagesStream = await SendAccountMessageService
          .syncAccountConnectedAccountAssistantSentMessages(
              widget.accountConnectedAccountAssistant);
      var accountAssistantReceivedMessagesStream =
          await ReceiveAccountMessageService
              .syncAccountConnectedAccountAssistantReceivedMessages(
                  widget.accountConnectedAccountAssistant);

      var messagingStreamGroup = StreamGroup.merge([
        accountAssistantSentMessagesStream,
        accountAssistantReceivedMessagesStream
      ]);

      await for (var message in messagingStreamGroup) {
        _generatedMessages.add(message);
        yield _generatedMessages;
      }
    }
  }
}
