import 'dart:async';

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/message_conversation.pb.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:fifty_gramx/widgets/components/TextField/messaging/AccountMessagingTextField.dart';
import 'package:fifty_gramx/widgets/components/listItem/conversations/messages/accountConversationsMessagesReceivedListItem.dart';
import 'package:fifty_gramx/widgets/components/listItem/conversations/messages/accountConversationsMessagesSentListItem.dart';
import 'package:fifty_gramx/widgets/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/conversations/LocalConversationsService.dart';
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
  List<ConversationMessage> conversationMessages = [];

  bool messageTextFieldReadOnly = false;

  Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  bool isSendButtonEnabled = false;

  @override
  void initState() {
    // check if local conversations service has this account id mapped
    print("check if local conversations service has this account id mapped");
    if (LocalConversationsService
            .entityIdConversationMessageMap[widget.account.accountId] ==
        null) {
      print("No conversations found for ${widget.account.accountFirstName}");
      LocalConversationsService
          .entityIdConversationMessageMap[widget.account.accountId] = [];
    }
    addTextFieldListener();
    loadConversationsMessages();
    // listenForLocalNotifications();
    super.initState();
  }

  addTextFieldListener() {
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
              _accountConversationsListKey.currentState!
                  .removeItem(notification.data["at"], (context, animation) {
                return SizedBox();
              });
              _accountConversationsListKey.currentState!.insertItem(
                  notification.data["at"],
                  duration: Duration(microseconds: 100));
              scrollToBottom();
            } else if (notification.data["subType"] ==
                "AddedAccountReceivedMessage") {
              _accountConversationsListKey.currentState!
                  .removeItem(notification.data["at"], (context, animation) {
                return SizedBox();
              });
              _accountConversationsListKey.currentState!.insertItem(
                  notification.data["at"],
                  duration: Duration(microseconds: 100));
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
    _accountConversationsListKey.currentState?.dispose();
    super.dispose();
  }

  final accountAssistantMessageTextFieldController = TextEditingController();

  loadConversationsMessages() async {
    Timer(Duration(microseconds: 100), () {
      for (int index = LocalConversationsService
              .entityIdConversationMessageMap[widget.account.accountId]!.length;
          index >= 0;
          index--) {
        try {
          _accountConversationsListKey.currentState!
              .insertItem(index, duration: Duration(microseconds: 100));
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

  final GlobalKey<SliverAnimatedListState> _accountConversationsListKey =
      GlobalKey<SliverAnimatedListState>();
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
                    key: _accountConversationsListKey,
                    initialItemCount: LocalConversationsService
                        .entityIdConversationMessageMap[
                            widget.account.accountId]!
                        .length, // TODO: Verify the length and all
                    itemBuilder: (BuildContext context, int index,
                        Animation<double> animation) {
                      if (index >=
                          LocalConversationsService
                              .entityIdConversationMessageMap[
                                  widget.account.accountId]!
                              .length) {
                        // warn: hacky way of safely returning only the list items
                        // caused by notifications stream
                        return SizedBox();
                      }
                      var message = LocalConversationsService
                              .entityIdConversationMessageMap[
                          widget.account.accountId]![index];
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
