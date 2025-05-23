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

import 'package:eapp_dart_domain/ethos/elint/entities/account_assistant.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/conversation/message/message_conversation.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/TextField/messaging/AccountAssistantMessagingTextField.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/conversations/messages/accountAssistantConversationsMessagesReceivedListItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/conversations/messages/accountAssistantConversationsMessagesSentListItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/LocalConversationsService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/messaging/ConversationListKeyManager.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:validators/validators.dart';

/// This is the stateful widget that the main application instantiates.
class AccountAssistantConversationPage extends StatefulWidget {
  const AccountAssistantConversationPage({
    Key? key,
    required this.accountAssistant,
  }) : super(key: key);

  final AccountAssistant accountAssistant;

  @override
  State<AccountAssistantConversationPage> createState() =>
      _AccountAssistantConversationPageState();
}

class _AccountAssistantConversationPageState
    extends State<AccountAssistantConversationPage> {
  /// Page state variable declarations

  /// creates the list key manager during initialisation
  late ConversationListKeyManager listKeyManager;

  bool messageTextFieldReadOnly = false;

  /// we're using notificationsStream to sync with LocalNotifications
  Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  bool isSendButtonEnabled = false;
  bool isMessageURL = false;

  // -----------
  // AccountAssistant accountAssistant = AccountAssistant.getDefault();
  List<ConversationMessage> conversationMessages = [];

  // List<ConversationMessage> draftedConversationMessages = [];

  // ScrollController _conversationsScrollController = new ScrollController();
  // Account sendingAccount = Account.getDefault();

  @override
  void initState() {
    /// creating the list manger
    print("_AccountAssistantConversationPageState: initState");
    listKeyManager = ConversationListKeyManager();
    print("_AccountAssistantConversationPageState: list key manager defined");
    print("_AccountAssistantConversationPageState: will add empty entity");
    LocalConversationsService.addEmptyEntityIdConversationMessageMap(
        widget.accountAssistant.accountAssistantId);
    print(
        "_AccountAssistantConversationPageState: will add text field listener");
    addMessageTextFieldListener();
    print(
        "_AccountAssistantConversationPageState: will load conversation messages");
    loadConversationsMessages();
    print("_AccountAssistantConversationPageState: will super init");
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
          if (notification.data["accountAssistantId"] ==
              widget.accountAssistant.accountAssistantId) {
            if (notification.data["subType"] ==
                "AddedAccountAssistantSentMessage") {
              listKeyManager.removeItem(notification.data["at"]);
              listKeyManager.insertItem(notification.data["at"]);
              scrollToBottom();
            } else if (notification.data["subType"] ==
                "AddedAccountAssistantReceivedMessage") {
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

  // readSendingAccount() async {
  //   sendingAccount = await AccountData().readAccount();
  // }

  // late AccountConnectedAccountAssistant connectedAccountAssistant;

  // getConnectedAccountAssistant() async {
  //   var response = (await ConnectAccountService.getConnectedAccountAssistant(
  //       widget.accountAssistant.accountAssistantId));
  //   setState(() {
  //     connectedAccountAssistant = response.connectedAccountAssistant;
  //   });
  //   startStreamingConversationMessages();
  // }

  // startStreamingConversationMessages() async {
  //   print("startStreamingConversationMessages");
  //   var getLast24ProductNConversationMessagesResponse =
  //       await MessageConversationService.getLast24ProductNConversationMessages(
  //           1,
  //           MessageEntity.ENTITY_ACCOUNT_ASSISTANT,
  //           connectedAccountAssistant,
  //           AccountConnectedAccount.getDefault());

  //   for (int index = 0;
  //       index <
  //           getLast24ProductNConversationMessagesResponse
  //               .conversationMessages.length;
  //       index++) {
  //     setState(() {
  //       conversationMessages.add(getLast24ProductNConversationMessagesResponse
  //           .conversationMessages[index]);
  //     });
  //     // _accountConversationsListKey.currentState!.insertItem(index);
  //   }
  // }

  loadConversationsMessages() async {
    Timer(Duration(microseconds: 100), () {
      for (int index =
              LocalConversationsService.getEntityIdConversationMessageMapLength(
                  widget.accountAssistant.accountAssistantId);
          index >= 0;
          index--) {
        print("inserting for index $index");
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

  messageValidator(String message) {
    print(
        "_AccountAssistantConversationPageState: messageValidator: ${message} is ${isURL(message)}");
    setState(() {
      isMessageURL = isURL(message);
    });
  }

  static notifyBrowserPageValidatedURL(String validatedURL) {
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalAssistantConversation",
        {"subType": "validatedURL", "url": validatedURL}));
  }

  sendActionableMessage() {
    print("_AccountAssistantConversationPageState: sendActionableMessage");
    var typedMessage = accountAssistantMessageTextFieldController.text;
    accountAssistantMessageTextFieldController.clear();
    print(
        "_AccountAssistantConversationPageState: typedMessage: $typedMessage");
    if (isMessageURL) {
      // TODO(verma8@): send the url to browser tab
      notifyBrowserPageValidatedURL(typedMessage);
      print("will do send the url to browser page: ${typedMessage}");
    } else {
      LocalConversationsService.sendActionableMessageToAccountAssistant(
          widget.accountAssistant,
          SpaceKnowledgeAction.ASK_QUESTION,
          typedMessage);
    }
  }

  final ScrollController _listScrollController = new ScrollController();

  var isAccountConnected = false;
  var actionLabelText = "";

  // Messaging Params
  // var listeningSpeedMessages = false;
  // var sendingSpeedMessages = false;

  bool isMessagingInputClosed = false;
  bool isSuggestedDomainsClosed = true;

  final accountAssistantMessageTextFieldController = TextEditingController();
  List<String> suggestedDomains = [];

  Map<SpaceKnowledgeDomain, List<RankedAnswer>>
      spaceKnowledgeDomainsActionAskQuestionMaps = {};

  String buildAppBarLabelText() {
    String trimmedAssistantName =
        widget.accountAssistant.accountAssistantName.trim();
    if (trimmedAssistantName.isNotEmpty) {
      String assistantNameUC = trimmedAssistantName[0].toUpperCase();
      String assistantNameNew = trimmedAssistantName.substring(
          1, widget.accountAssistant.accountAssistantName.trim().length);
      return "${assistantNameUC}${assistantNameNew}";
    }
    return widget.accountAssistant.accountAssistantName;
  }

  @override
  Widget build(BuildContext context) {
    print("_AccountAssistantConversationPageState: will build");
    String appBarLabelText = buildAppBarLabelText();
    print("_AccountAssistantConversationPageState: will build Sliver List");
    SliverAnimatedList sliverAnimatedList = SliverAnimatedList(
        key: listKeyManager.getListKey(),
        initialItemCount:
            LocalConversationsService.getEntityIdConversationMessageMapLength(
                widget.accountAssistant.accountAssistantId),
        itemBuilder:
            (BuildContext context, int index, Animation<double> animation) {
          print(
              "_AccountAssistantConversationPageState: will build animated list");
          if (index >=
              LocalConversationsService.getEntityIdConversationMessageMapLength(
                  widget.accountAssistant.accountAssistantId)) {
            return SizedBox();
          }
          var message =
              LocalConversationsService.getEntityIdConversationMessageAt(
                  widget.accountAssistant.accountAssistantId, index);
          if (message.isMessageEntityAccountAssistant) {
            if (message.isMessageSent) {
              return AccountAssistantConversationsMessagesSentListItem(
                      message.accountAssistantSentMessage)
                  .buildAccountAssistantConversationsSentMessage(context);
            } else {
              return AccountAssistantConversationsMessagesReceivedListItem(
                      message.accountAssistantReceivedMessage,
                      widget.accountAssistant)
                  .buildAccountAssistantConversationsReceivedMessage(context);
            }
          } else {
            return SizedBox();
          }
        });

    print(
        "_AccountAssistantConversationPageState: will build messaging text field");
    AccountAssistantMessageTextField accountAssistantMessageTextField =
        AccountAssistantMessageTextField(
      hintText: "Message ${widget.accountAssistant.accountAssistantName}",
      messageTextFieldController: accountAssistantMessageTextFieldController,
      sendMessageButtonOnPressed: () {
        print(
            "_AccountAssistantConversationPageState: Send Actionable message");
        sendActionableMessage();
      },
      messageTextFieldReadOnly: messageTextFieldReadOnly,
      isSendButtonEnabled: isSendButtonEnabled && isMessageURL,
      isSuggestedDomainsClosed: isSuggestedDomainsClosed,
      suggestedKnowledgeDomains:
          spaceKnowledgeDomainsActionAskQuestionMaps.keys.toList(),
      isMessagingInputClosed: isMessagingInputClosed,
      messagingInputToggleOnPressed: () {
        toggleMessagingInput();
      },
      suggestedDomainsToggleOnPressed: (spaceKnowledgeDomain) {
        toggleSuggestedDomains(spaceKnowledgeDomain);
      },
      validateMessageText: messageValidator,
    );

    print(
        "_AccountAssistantConversationPageState: will build text field aligned");
    Widget textFieldAlign = Align(
      alignment: FractionalOffset.bottomCenter,
      child: Container(
          child: Stack(
        children: [accountAssistantMessageTextField],
      )),
    );
    print("_AccountAssistantConversationPageState: will return Scaffold");
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
                  labelHeroTag: widget.accountAssistant.accountAssistantId,
                  actionLabelText:
                      "#${widget.accountAssistant.accountAssistantNameCode}",
                  isBackEnabled: true,
                  trailingButtonCallback: () {},
                  onStretchTriggerCallback: () {},
                  isActionEnabled: true,
                ),
                sliverAnimatedList,
              ],
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     child: ListView.builder(
          //       itemCount: draftedConversationMessages.length,
          //       itemBuilder: (_, int index) {
          //         var message = draftedConversationMessages[index];

          //         if (message.isMessageEntityAccountAssistant) {
          //           if (message.isMessageSent) {
          //             return AccountAssistantConversationsMessagesSentListItem(
          //                     message.accountAssistantSentMessage)
          //                 .buildAccountAssistantConversationsSentMessage(
          //                     context);
          //           } else {
          //             return AccountAssistantConversationsMessagesReceivedListItem(
          //                     message.accountAssistantReceivedMessage,
          //                     widget.accountAssistant)
          //                 .buildAccountAssistantConversationsReceivedMessage(
          //                     context);
          //           }
          //         } else {
          //           return SizedBox();
          //         }
          //       },
          //     ),
          //   ),
          // ),
          textFieldAlign,
        ],
      ),
    );
  }

  toggleMessagingInput() {
    if (isMessagingInputClosed) {
      setState(() {
        isMessagingInputClosed = false;
        isSuggestedDomainsClosed = true;
      });
    } else {
      setState(() {
        isMessagingInputClosed = false;
        isSuggestedDomainsClosed = false;
      });
    }
  }

  toggleSuggestedDomains(spaceKnowledgeDomain) {
    print("toggleSuggestedDomains");
    setState(() {
      conversationMessages[0].accountAssistantReceivedMessage.message =
          spaceKnowledgeDomainsActionAskQuestionMaps[spaceKnowledgeDomain]!
              .first
              .answer;
    });
  }

// sendMessageToAccountAssistant() async {
//   var typedMessage = accountAssistantMessageTextFieldController.text.trim();
//   setState(() {
//     accountAssistantMessageTextFieldController.clear();
//     var draftedSentConversationMessage =
//         draftAccountAssistantSentConversationMessage(typedMessage);
//     draftedConversationMessages.insert(0, draftedSentConversationMessage);
//   });
//   // ASK QUESTION IS HARD CODED FOR NOW
//   MessageForAccountAssistantSent messageForAccountAssistantSent =
//       await SendAccountMessageService.sendMessageToAccountAssistant(
//           connectedAccountAssistant,
//           SpaceKnowledgeAction.ASK_QUESTION,
//           typedMessage);
//   if (messageForAccountAssistantSent.isSent) {
//     if (draftedConversationMessages[0].hasAccountAssistantSentMessage()) {
//       var draftedSentMessage = draftedConversationMessages[0];
//       draftedSentMessage
//               .accountAssistantSentMessage.accountAssistantSentMessageId =
//           messageForAccountAssistantSent.accountAssistantSentMessageId;
//       draftedSentMessage.accountAssistantSentMessage.sentAt =
//           messageForAccountAssistantSent.sentAt;
//       draftedSentMessage.accountAssistantSentMessage.receivedAt =
//           messageForAccountAssistantSent.receivedAt;
//       setState(() {
//         draftedConversationMessages.removeAt(0);
//         conversationMessages.insert(0, draftedSentMessage);
//       });
//     }
//   }
//   print("sendMessageToAccountAssistant: $messageForAccountAssistantSent");
// }

// ConversationMessage draftAccountAssistantSentConversationMessage(
//     String typedMessage) {
//   return ConversationMessage(
//     isMessageEntityAccountAssistant: true,
//     isMessageSent: true,
//     accountAssistantSentMessage: AccountAssistantSentMessage(
//         accountAssistantConnectionId:
//             connectedAccountAssistant.accountAssistantConnectionId,
//         accountAssistantId: connectedAccountAssistant.accountAssistantId,
//         accountAssistantSentMessageId: "",
//         message: typedMessage,
//         sentAt: Timestamp.fromDateTime(DateTime.now()),
//         messageSpace: 0,
//         messageSpaceAction: 0),
//   );
// }

//   handleListeningMessages(LocalNotification message) async {
//     print("handleListeningMessages: ${message.data}");
//     if (message.data['service'] == "NotifyAccountService") {
//       if (message.data['rpc'] == "NewReceivedMessageFromAccountAssistant") {
//         if (message.data['account_assistant_id'] ==
//             connectedAccountAssistant.accountAssistantId) {
//           var accountAssistantReceivedMessageId =
//               message.data['account_assistant_received_message_id'];
//           var listenForReceivedAccountAssistantMessagesResponse =
//               await ReceiveAccountMessageService
//                   .listenForReceivedAccountAssistantMessages(
//                       connectedAccountAssistant,
//                       accountAssistantReceivedMessageId);
//
//           var foundDomainRankedAnswers = [];
//
//           spaceKnowledgeDomainsActionAskQuestionMaps = {};
//
//           for (Any messageSource
//               in listenForReceivedAccountAssistantMessagesResponse
//                   .messageSource) {
//             var packedDomainRankedAnswers =
//                 DomainRankedAnswers().createEmptyInstance();
//             var domainRankedAnswers =
//                 messageSource.unpackInto(DomainRankedAnswers());
//             print(domainRankedAnswers
//                 .spaceKnowledgeDomain.spaceKnowledgeDomainName);
//             print(domainRankedAnswers.rankedAnswers);
//             if (domainRankedAnswers.rankedAnswers.length > 0) {
//               spaceKnowledgeDomainsActionAskQuestionMaps[domainRankedAnswers
//                   .spaceKnowledgeDomain] = domainRankedAnswers.rankedAnswers;
//
//               var suggestedDomainName = domainRankedAnswers
//                   .spaceKnowledgeDomain.spaceKnowledgeDomainName;
//               suggestedDomains.add(suggestedDomainName);
//               foundDomainRankedAnswers.add(domainRankedAnswers);
//             }
//           }
//
//           var messageText = "";
//           if (spaceKnowledgeDomainsActionAskQuestionMaps.keys.toList().length >
//               0) {
//             SpaceKnowledgeDomain firstSpaceKnowledgeDomain =
//                 spaceKnowledgeDomainsActionAskQuestionMaps.keys.toList().first;
//             messageText = spaceKnowledgeDomainsActionAskQuestionMaps[
//                     firstSpaceKnowledgeDomain]!
//                 .first
//                 .answer;
//           } else {
//             messageText = "No answers were found";
//           }
//           print("found domain answers: $foundDomainRankedAnswers");
//
//           var receivedConversationMessage = ConversationMessage(
//             isMessageEntityAccountAssistant: true,
//             isMessageSent: false,
//             accountAssistantReceivedMessage: AccountAssistantReceivedMessage(
//               accountAssistantReceivedMessageId:
//                   accountAssistantReceivedMessageId,
//               accountAssistantId: connectedAccountAssistant.accountAssistantId,
//               receivedAt:
//                   listenForReceivedAccountAssistantMessagesResponse.receivedAt,
//               accountAssistantConnectionId:
//                   connectedAccountAssistant.accountAssistantConnectionId,
//               message: messageText,
//             ),
//           );
//           setState(() {
//             conversationMessages.insert(0, receivedConversationMessage);
//           });
//         }
//       }
//     }
//   }
// }
}
