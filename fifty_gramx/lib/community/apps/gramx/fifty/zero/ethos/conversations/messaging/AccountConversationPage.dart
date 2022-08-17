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

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/LocalConversationsService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/messaging/ConversationListKeyManager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/TextField/messaging/AccountMessagingTextField.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/listItem/conversations/messages/accountConversationsMessagesReceivedListItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/listItem/conversations/messages/accountConversationsMessagesSentListItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/screen/CustomSliverAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// This is the stateful widget that the main application instantiates.
class AccountConversationPage extends StatefulWidget {
  const AccountConversationPage({
    Key? key,
    required this.account,
  }) : super(key: key);

  final Account account;

  @override
  State<AccountConversationPage> createState() =>
      _AccountConversationPageState();
}

class _AccountConversationPageState extends State<AccountConversationPage> {
  /// Page state variable declarations

  /// creates the list key manager during initialisation
  late ConversationListKeyManager listKeyManager;

  bool messageTextFieldReadOnly = false;

  /// we're using notificationsStream to sync with LocalNotifications
  Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  bool isSendButtonEnabled = false;

  @override
  void initState() {
    /// creating the list manger
    listKeyManager = ConversationListKeyManager();
    LocalConversationsService.addEmptyEntityIdConversationMessageMap(
        widget.account.accountId);
    addMessageTextFieldListener();
    loadConversationsMessages();
    // listenForLocalNotifications();
    super.initState();
  }

  addMessageTextFieldListener() {
    accountAssistantMessageTextFieldController.addListener(() {
      if (!isSendButtonEnabled) {
        if (accountAssistantMessageTextFieldController.text.length != 0) {
          setState(() {
            isSendButtonEnabled = true;
          });
        }
      } else if (accountAssistantMessageTextFieldController.text.length == 0) {
        setState(() {
          isSendButtonEnabled = false;
        });
      }
    });
  }

  listenForLocalNotifications() {
    // TODO: Handle _notificationsStream error
    // TODO: Handle disposed
    Timer(Duration(milliseconds: 300), () {
      _notificationsStream.listen((notification) {
        // TODO: Implement your logic here
        if (notification.type == "LocalConversationsService") {
          if (notification.data["accountId"] == widget.account.accountId) {
            if (notification.data["subType"] == "AddedAccountSentMessage") {
              listKeyManager.removeItem(notification.data["at"]);
              listKeyManager.insertItem(notification.data["at"]);
              scrollToBottom();
            } else if (notification.data["subType"] ==
                "AddedAccountReceivedMessage") {
              listKeyManager.removeItem(notification.data["at"]);
              listKeyManager.insertItem(notification.data["at"]);
              scrollToBottom();
            }
          }
        }
      });
    });
  }

  scrollToBottom() {
    Timer(Duration(milliseconds: 250), () {
      _listScrollController.animateTo(
        _listScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 500),
        curve: Curves.decelerate,
      );
    });
  }

  @override
  void dispose() {
    accountAssistantMessageTextFieldController.dispose();
    _listScrollController.dispose();
    super.dispose();
  }

  final accountAssistantMessageTextFieldController = TextEditingController();

  loadConversationsMessages() async {
    Timer(Duration(microseconds: 100), () {
      for (int index =
              LocalConversationsService.getEntityIdConversationMessageMapLength(
                  widget.account.accountId);
          index >= 0;
          index--) {
        try {
          listKeyManager.insertItem(index);
        } catch (e) {
          print("Exception while inserting: $e");
        }
      }
      scrollToBottom();
      listenForLocalNotifications();
    });
  }

  handleNewReceivedMessageFromAccount() {}

  sendMessage() {
    var typedMessage = accountAssistantMessageTextFieldController.text;
    accountAssistantMessageTextFieldController.clear();
    LocalConversationsService.sendSpeedMessageToAccount(
        widget.account, typedMessage);
  }

  final ScrollController _listScrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    String appBarLabelText =
        "${widget.account.accountFirstName.trim()[0].toUpperCase()}${widget.account.accountFirstName.trim().substring(1, widget.account.accountFirstName.trim().length)} ${widget.account.accountLastName.trim()[0].toUpperCase()}${widget.account.accountLastName.trim().substring(1, widget.account.accountLastName.trim().length)}";

    return Scaffold(
      backgroundColor: AppColors.backgroundPrimary(context),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              controller: _listScrollController,
              slivers: <Widget>[
                CustomSliverAppBar(
                  labelText: appBarLabelText,
                  labelHeroTag: widget.account.accountId,
                  actionLabelText: "",
                  isBackEnabled: true,
                  trailingButtonCallback: () {},
                  onStretchTriggerCallback: () {},
                  isActionEnabled: false,
                ),
                SliverAnimatedList(
                    key: listKeyManager.getListKey(),
                    initialItemCount: LocalConversationsService
                        .getEntityIdConversationMessageMapLength(
                            widget.account.accountId),
                    // TODO: Verify the length and all
                    itemBuilder: (BuildContext context, int index,
                        Animation<double> animation) {
                      if (index >=
                          LocalConversationsService
                              .getEntityIdConversationMessageMapLength(
                                  widget.account.accountId)) {
                        // warn: hacky way of safely returning only the list items
                        // caused by notifications stream
                        return SizedBox();
                      }
                      var message = LocalConversationsService
                          .getEntityIdConversationMessageAt(
                              widget.account.accountId, index);
                      if (message.isMessageEntityAccountAssistant) {
                        return SizedBox();
                      } else {
                        if (message.isMessageSent) {
                          return AccountConversationsMessagesSentListItem(
                                  message.accountSentMessage)
                              .buildAccountConversationsSentMessage(context);
                        } else {
                          return AccountConversationsMessagesReceivedListItem(
                                  message.accountReceivedMessage,
                                  widget.account)
                              .buildAccountConversationsReceivedMessage(
                                  context);
                        }
                      }
                    }),
              ],
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
                constraints: BoxConstraints(minHeight: 48),
                child: Stack(
                  children: [
                    AccountMessagingTextField(
                      hintText:
                          "Message ${widget.account.accountFirstName.trim()[0].toUpperCase()}${widget.account.accountFirstName.trim().substring(1, widget.account.accountFirstName.trim().length)}",
                      messageTextFieldController:
                          accountAssistantMessageTextFieldController,
                      sendMessageButtonOnPressed: () {
                        sendMessage();
                      },
                      messageTextFieldReadOnly: messageTextFieldReadOnly,
                      isSendButtonEnabled: isSendButtonEnabled,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
