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

import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/account/receive_account_message.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/account/send_account_message.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/message_conversation.pb.dart';
import 'package:fifty_gramx/services/identity/account/connectAccountService.dart';
import 'package:fifty_gramx/services/identity/account/discoverAccountService.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/receiveAccountMessageService.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/sendAccountMessageService.dart';
import 'package:fifty_gramx/services/product/conversation/message/messageConversationService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/connections/LocalConnectionsService.dart';

/// Provides In-App Conversations Services
class LocalConversationsService {
  /// Singleton Instance Definition of the service
  LocalConversationsService._();

  /// List of entities (accounts, account assistants, etc.) with their last
  /// conversation messages. This is primarily used to reflect the last message
  /// in Conversations Screen
  static List<ConversedEntityWithLastConversationMessage>
      conversedEntityWithLastConversationMessages = [];

  /// Dict mapping of all the entities and all their conversation messages
  /// Entities includes, but not limited to accounts, account assistants
  static Map<String, List<ConversationMessage>> entityIdConversationMessageMap =
      {};

  /// returns true if entity id is present in the key for
  /// entityIdConversationMessageMap else false
  static bool isEntityIdConversationMessageMapExists(entityId) {
    if (entityIdConversationMessageMap[entityId] == null) {
      return false;
    } else {
      return true;
    }
  }

  /// adds an empty conversation message list for the key entityId if key
  /// doesn't exists
  static addEmptyEntityIdConversationMessageMap(entityId) {
    if (!isEntityIdConversationMessageMapExists(entityId)) {
      entityIdConversationMessageMap[entityId] = [];
    }
  }

  /// returns the length of list of conversation message for mapped entity id
  /// if exists, else adds the empty entity id messages map and returns 0
  static int getEntityIdConversationMessageMapLength(entityId) {
    if (isEntityIdConversationMessageMapExists(entityId)) {
      return entityIdConversationMessageMap[entityId]!.length;
    } else {
      addEmptyEntityIdConversationMessageMap(entityId);
      return 0;
    }
  }

  /// returns the ConversationMessage at index for the entity id mapped
  /// conversations if found, else returns the default ConversationMessage
  static ConversationMessage getEntityIdConversationMessageAt(entityId, at) {
    if (isEntityIdConversationMessageMapExists(entityId)) {
      if (getEntityIdConversationMessageMapLength(entityId) > at) {
        return entityIdConversationMessageMap[entityId]![at];
      } else {
        return ConversationMessage.getDefault();
      }
    } else {
      return ConversationMessage.getDefault();
    }
  }

  /// internal instance of LocalNotifications to update the entities and their
  /// conversations messages
  static Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  void dispose() {}

  /// fetches all the conversed entities, with their last message,
  /// notifies to localNotifications that the account/assistant has been added
  /// to conversation, loads all the conversations to particular index reflected
  /// by entity in conversedEntityWithLastConversationMessages,
  /// also starts listening to incoming messages
  static getMyConversations() async {
    var getConversedAccountAndAssistantsResponse =
        await MessageConversationService.getConversedAccountAndAssistants();
    conversedEntityWithLastConversationMessages =
        getConversedAccountAndAssistantsResponse
            .conversedEntityWithLastConversationMessage;
    for (int index = 0;
        index < conversedEntityWithLastConversationMessages.length;
        index++) {
      notifyAddedConversedEntityWithLastConversationMessage(index);
      loadEntityConversations(
          conversedEntityWithLastConversationMessages[index]);
    }
    _notificationsStream.listen((notification) {
      handleListeningMessages(notification);
    });
  }

  /// loads all the entity conversations to entityIdConversationMessageMap
  /// with entityId as the key to list of converstaion messages
  static loadEntityConversations(
      ConversedEntityWithLastConversationMessage
          conversedEntityWithLastConversationMessage) {
    String entityId;
    if (conversedEntityWithLastConversationMessage
        .lastConversationMessage.isMessageEntityAccountAssistant) {
      entityId = conversedEntityWithLastConversationMessage
          .conversedAccountAssistant.accountAssistantId;
      // creates an empty list, before adding the messages
      entityIdConversationMessageMap[entityId] = [];
      loadAccountAssistantConversations(
          conversedEntityWithLastConversationMessage.conversedAccountAssistant);
    } else {
      entityId =
          conversedEntityWithLastConversationMessage.conversedAccount.accountId;
      // creates an empty list, before adding the messages
      entityIdConversationMessageMap[entityId] = [];
      loadAccountConversations(
          conversedEntityWithLastConversationMessage.conversedAccount);
    }
  }

  /// loads and stores the conversation messages for account assistant in last
  /// 24 hours in key/value in entityIdConversationMessageMap with key as
  /// accountAssistantId and value as list of ConversationMessages
  static loadAccountAssistantConversations(
      AccountAssistant accountAssistant) async {
    AccountConnectedAccountAssistant connectedAccountAssistant =
        AccountConnectedAccountAssistant.getDefault();

    // check if LocalConnectionsService has the connection
    if (LocalConnectionsService.inverseConnectedAccountAssistantMap
        .containsKey(accountAssistant)) {
      // TODO(founder): handle improbable null safety inconsistency
      // get the connected account assistant
      connectedAccountAssistant = LocalConnectionsService
          .inverseConnectedAccountAssistantMap[accountAssistant]!;
    } else {
      // LocalConnectionsService doesn't have connection, fetch it from Identity
      // TODO(founder): handle the inconsistency with LocalConnectionsService
      connectedAccountAssistant =
          (await ConnectAccountService.getConnectedAccountAssistant(
                  accountAssistant.accountAssistantId))
              .connectedAccountAssistant;
    }

    // fetch and store the conversation messages for last 24 hours as list to
    // the key of entityId in entityIdConversationMessageMap
    var getLast24ProductNConversationMessagesResponse =
        await MessageConversationService.getLast24ProductNConversationMessages(
            1,
            MessageEntity.ENTITY_ACCOUNT_ASSISTANT,
            connectedAccountAssistant,
            AccountConnectedAccount.getDefault());
    entityIdConversationMessageMap[accountAssistant.accountAssistantId] =
        getLast24ProductNConversationMessagesResponse
            .conversationMessages.reversed
            .toList();
  }

  /// loads and stores the conversation messages for account in last
  /// 24 hours in key/value in entityIdConversationMessageMap with key as
  /// accountId and value as list of ConversationMessages
  static loadAccountConversations(Account account) async {
    AccountConnectedAccount connectedAccount =
        AccountConnectedAccount.getDefault();

    // check if LocalConnectionsService has the connection
    if (LocalConnectionsService.inverseConnectedAccountMap
        .containsKey(account)) {
      // TODO(founder): handle improbable null safety inconsistency
      // get the connected account
      connectedAccount =
          LocalConnectionsService.inverseConnectedAccountMap[account]!;
    } else {
      // LocalConnectionsService doesn't have connection, fetch it from Identity
      // TODO(founder): handle the inconsistency with LocalConnectionsService
      connectedAccount =
          (await ConnectAccountService.getConnectedAccount(account.accountId))
              .connectedAccount;
    }

    // fetch and store the conversation messages for last 24 hours as list to
    // the key of entityId in entityIdConversationMessageMap
    var getLast24ProductNConversationMessagesResponse =
        await MessageConversationService.getLast24ProductNConversationMessages(
            1,
            MessageEntity.ENTITY_ACCOUNT,
            AccountConnectedAccountAssistant.getDefault(),
            connectedAccount);
    entityIdConversationMessageMap[account.accountId] =
        getLast24ProductNConversationMessagesResponse
            .conversationMessages.reversed
            .toList();
  }

  /// adds each received MessageFromAccount as ConversationMessage to
  /// entityIdConversationMessageMap and notifies about added message
  static handleReceivedMessagesFromAccount(
      List<MessageFromAccount> messagesFromAccount) {
    for (MessageFromAccount messageFromAccount in messagesFromAccount) {
      var receivedConversationMessage = ConversationMessage(
          isMessageEntityAccountAssistant: false,
          isMessageSent: false,
          accountReceivedMessage: AccountReceivedMessage(
              message: messageFromAccount.message,
              accountId: messageFromAccount.accountId,
              accountConnectionId:
                  messageFromAccount.connectedAccount.accountConnectionId,
              accountReceivedMessageId:
                  messageFromAccount.accountReceivedMessageId,
              receivedAt: Timestamp.fromDateTime(DateTime.now())));
      entityIdConversationMessageMap[
              messageFromAccount.connectedAccount.accountId]!
          .add(receivedConversationMessage);

      notifyAddedAccountReceivedMessage(
          messageFromAccount.connectedAccount.accountId,
          entityIdConversationMessageMap[
                      messageFromAccount.connectedAccount.accountId]!
                  .length -
              1);
    }
  }

  /// adds each received MessageFromAccountAssistant as ConversationMessage to
  /// entityIdConversationMessageMap and notifies about added message
  static handleReceivedMessagesFromAccountAssistant(
      List<MessageFromAccountAssistant> messagesFromAccountAssistant) {
    for (MessageFromAccountAssistant messageFromAccountAssistant
        in messagesFromAccountAssistant) {
      var receivedConversationMessage = ConversationMessage(
          isMessageEntityAccountAssistant: true,
          isMessageSent: false,
          accountAssistantReceivedMessage: AccountAssistantReceivedMessage(
              message: messageFromAccountAssistant.message,
              accountAssistantId: messageFromAccountAssistant
                  .connectedAccountAssistant.accountAssistantId,
              accountAssistantConnectionId: messageFromAccountAssistant
                  .connectedAccountAssistant.accountAssistantConnectionId,
              accountAssistantReceivedMessageId:
                  messageFromAccountAssistant.accountAssistantReceivedMessageId,
              messageSourceSpaceTypeId:
                  messageFromAccountAssistant.messageSourceSpaceTypeId,
              messageSourceSpaceId:
                  messageFromAccountAssistant.messageSourceSpaceId,
              messageSourceSpaceDomainId:
                  messageFromAccountAssistant.messageSourceSpaceDomainId,
              messageSourceSpaceDomainAction:
                  messageFromAccountAssistant.messageSourceSpaceDomainAction,
              messageSourceSpaceDomainActionContextId:
                  messageFromAccountAssistant
                      .messageSourceSpaceDomainActionContextId,
              receivedAt: Timestamp.fromDateTime(DateTime.now())));

      entityIdConversationMessageMap[messageFromAccountAssistant
              .connectedAccountAssistant.accountAssistantId]!
          .add(receivedConversationMessage);

      notifyAddedAccountAssistantReceivedMessage(
          messageFromAccountAssistant
              .connectedAccountAssistant.accountAssistantId,
          entityIdConversationMessageMap[messageFromAccountAssistant
                      .connectedAccountAssistant.accountAssistantId]!
                  .length -
              1);
    }
  }

  /// handler invoked inside localNotifications, which listens to new messages
  /// when the device receives a push notification based on metadata
  static handleListeningMessages(LocalNotification message) async {
    if (message.data['service'] == "NotifyAccountService") {
      if (message.data['rpc'] == "NewReceivedMessageFromAccount") {
        var listenForReceivedAccountMessagesResponse =
            await ReceiveAccountMessageService
                .listenForReceivedAccountMessages();
        if (listenForReceivedAccountMessagesResponse.responseMeta.metaDone) {
          handleReceivedMessagesFromAccount(
              listenForReceivedAccountMessagesResponse.messagesFromAccount);
        }
      } else if (message.data['rpc'] ==
          "NewReceivedMessageFromAccountAssistant") {
        var listenForReceivedAccountAssistantMessagesResponse =
            await ReceiveAccountMessageService
                .listenForReceivedAccountAssistantMessages();
        if (listenForReceivedAccountAssistantMessagesResponse
            .responseMeta.metaDone) {
          handleReceivedMessagesFromAccountAssistant(
              listenForReceivedAccountAssistantMessagesResponse
                  .messagesFromAccountAssistant);
        }
      }
    }
  }

  static sendSpeedMessageToAccount(Account account, String message) async {
    var connectedAccount =
        LocalConnectionsService.inverseConnectedAccountMap[account]!;
    var draftMessage = ConversationMessage(
        isMessageEntityAccountAssistant: false,
        isMessageSent: true,
        accountSentMessage: AccountSentMessage(
          accountConnectionId: connectedAccount.accountConnectionId,
          accountId: connectedAccount.accountId,
          accountSentMessageId: "",
          message: message,
          sentAt: Timestamp.fromDateTime(DateTime.now()),
        ));

    // warn: need to check if conversations doesn't exists
    var conversationsMessagesIndex =
        entityIdConversationMessageMap[connectedAccount.accountId]!.length;

    entityIdConversationMessageMap[connectedAccount.accountId]!
        .insert(conversationsMessagesIndex, draftMessage);
    notifyAddedAccountSentMessage(connectedAccount.accountId,
        entityIdConversationMessageMap[connectedAccount.accountId]!.length - 1);

    var messageForAccountSent =
        await SendAccountMessageService.sendMessageToAccount(
            connectedAccount, message);
    if (messageForAccountSent.isSent) {
      entityIdConversationMessageMap[connectedAccount.accountId]![
              conversationsMessagesIndex]
          .accountSentMessage
          .accountSentMessageId = messageForAccountSent.accountSentMessageId;
      entityIdConversationMessageMap[connectedAccount.accountId]![
              conversationsMessagesIndex]
          .accountSentMessage
          .sentAt = messageForAccountSent.sentAt;
      entityIdConversationMessageMap[connectedAccount.accountId]![
              conversationsMessagesIndex]
          .accountSentMessage
          .receivedAt = messageForAccountSent.receivedAt;
    }
  }

  static sendActionableMessageToAccountAssistant(
      AccountAssistant accountAssistant,
      SpaceKnowledgeAction spaceKnowledgeAction,
      String message) async {
    print("sendActionableMessageToAccountAssistant");
    var accountAssistantMeta = AccountAssistantMeta(
        accountAssistantId: accountAssistant.accountAssistantId,
        accountAssistantName: accountAssistant.accountAssistantName,
        accountAssistantNameCode: accountAssistant.accountAssistantNameCode,
        accountId: accountAssistant.account.accountId);
    print("build assistant meta: $accountAssistantMeta");
    var connectedAccountAssistant = LocalConnectionsService
        .inverseConnectedAccountAssistantMap[accountAssistantMeta]!;
    print("connectedAccountAssistant: $connectedAccountAssistant");
    var draftMessage = ConversationMessage(
        isMessageEntityAccountAssistant: true,
        isMessageSent: true,
        accountAssistantSentMessage: AccountAssistantSentMessage(
          accountAssistantId:
              connectedAccountAssistant.accountAssistantConnectionId,
          accountAssistantConnectionId:
              connectedAccountAssistant.accountAssistantConnectionId,
          accountAssistantSentMessageId: "",
          message: message,
          sentAt: Timestamp.fromDateTime(DateTime.now()),
        ));
    print("draftMessage: $draftMessage");
    // warn: need to check if conversations doesn't exists
    var conversationsMessagesIndex = entityIdConversationMessageMap[
            connectedAccountAssistant.accountAssistantId]!
        .length;
    print("conversationsMessagesIndex: $conversationsMessagesIndex");
    entityIdConversationMessageMap[
            connectedAccountAssistant.accountAssistantId]!
        .insert(conversationsMessagesIndex, draftMessage);
    notifyAddedAccountAssistantSentMessage(
        connectedAccountAssistant.accountAssistantId,
        entityIdConversationMessageMap[
                    connectedAccountAssistant.accountAssistantId]!
                .length -
            1);
    var messageForAccountAssistantSent =
        await SendAccountMessageService.sendMessageToAccountAssistant(
            connectedAccountAssistant, spaceKnowledgeAction, message);
    print("messageForAccountAssistantSent: $messageForAccountAssistantSent");
    if (messageForAccountAssistantSent.isSent) {
      entityIdConversationMessageMap[connectedAccountAssistant
                  .accountAssistantId]![conversationsMessagesIndex]
              .accountAssistantSentMessage
              .accountAssistantSentMessageId =
          messageForAccountAssistantSent.accountAssistantSentMessageId;
      entityIdConversationMessageMap[connectedAccountAssistant
              .accountAssistantId]![conversationsMessagesIndex]
          .accountAssistantSentMessage
          .sentAt = messageForAccountAssistantSent.sentAt;
      entityIdConversationMessageMap[connectedAccountAssistant
              .accountAssistantId]![conversationsMessagesIndex]
          .accountAssistantSentMessage
          .receivedAt = messageForAccountAssistantSent.receivedAt;
    }
  }

  static updateConversedAccountWithLastConversationSentMessages(
      String accountId, int messageIndex) async {
    print("updateConversedAccountWithLastConversationSentMessages");
    int accountIndex =
        findConversedAccountWithLastConversationMessagesUsingAccountId(
            accountId);
    AccountSentMessage lastSentMessage =
        entityIdConversationMessageMap[accountId]![messageIndex]
            .accountSentMessage;
    if (accountIndex > -1) {
      conversedEntityWithLastConversationMessages[accountIndex]
          .lastConversationMessage
          .isMessageSent = true;
      conversedEntityWithLastConversationMessages[accountIndex]
          .lastConversationMessage
          .accountSentMessage = lastSentMessage;
      if (accountIndex != 0) {
        pushConversedEntityToStart(accountIndex);
      }
    } else {
      print("accountIndex is negative!!");
      int newAccountIndex = conversedEntityWithLastConversationMessages.length;
      print("creating new conversed entity with last conversation messages");
      // Create new Conversed Entity With Last Conversation Messages
      ConversedEntityWithLastConversationMessage
          newConversedEntityWithLastConversationMessage =
          ConversedEntityWithLastConversationMessage(
        conversedAccount:
            (await DiscoverAccountService.getAccountById(accountId)).account,
        lastConversationMessage: ConversationMessage(
          isMessageSent: true,
          isMessageEntityAccountAssistant: false,
          accountSentMessage: lastSentMessage,
        ),
      );
      // add newConversedEntityWithLastConversationMessage at newAccountIndex
      print(
          "adding new conversed entity with last conversation messages at newAccountIndex");
      conversedEntityWithLastConversationMessages.insert(
          0, newConversedEntityWithLastConversationMessage);
      // notifyAddedConversedEntityWithLastConversationMessage(index);
    }
  }

  static updateConversedAccountWithLastConversationReceivedMessages(
      String accountId, int messageIndex) {
    print("updateConversedAccountWithLastConversationReceivedMessages");
    int accountIndex =
        findConversedAccountWithLastConversationMessagesUsingAccountId(
            accountId);
    if (accountIndex > -1) {
      AccountReceivedMessage lastReceivedMessage =
          entityIdConversationMessageMap[accountId]![messageIndex]
              .accountReceivedMessage;
      conversedEntityWithLastConversationMessages[accountIndex]
          .lastConversationMessage
          .isMessageSent = false;
      conversedEntityWithLastConversationMessages[accountIndex]
          .lastConversationMessage
          .accountReceivedMessage = lastReceivedMessage;
      if (accountIndex != 0) {
        pushConversedEntityToStart(accountIndex);
      }
    }
  }

  static updateConversedAccountAssistantWithLastConversationSentMessages(
      String accountAssistantId, int messageIndex) {
    print("updateConversedAccountAssistantWithLastConversationSentMessages");
    int accountAssistantIndex =
        findConversedAccountAssistantWithLastConversationMessagesUsingAccountAssistantId(
            accountAssistantId);
    print("messageIndex: $messageIndex");
    print("accountAssistantIndex: $accountAssistantIndex");
    print(
        "entityIdConversationMessageMap[accountAssistantId]: ${entityIdConversationMessageMap[accountAssistantId]}");
    if (accountAssistantIndex > -1) {
      AccountAssistantSentMessage lastSentMessage =
          entityIdConversationMessageMap[accountAssistantId]![messageIndex]
              .accountAssistantSentMessage;
      conversedEntityWithLastConversationMessages[accountAssistantIndex]
          .lastConversationMessage
          .isMessageSent = true;
      conversedEntityWithLastConversationMessages[accountAssistantIndex]
          .lastConversationMessage
          .accountAssistantSentMessage = lastSentMessage;
      if (accountAssistantIndex != 0) {
        pushConversedEntityToStart(accountAssistantIndex);
      }
    }
  }

  static updateConversedAccountAssistantWithLastConversationReceivedMessages(
      String accountAssistantId, int messageIndex) {
    int accountAssistantIndex =
        findConversedAccountAssistantWithLastConversationMessagesUsingAccountAssistantId(
            accountAssistantId);
    if (accountAssistantIndex > -1) {
      AccountAssistantReceivedMessage lastSentMessage =
          entityIdConversationMessageMap[accountAssistantId]![messageIndex]
              .accountAssistantReceivedMessage;
      conversedEntityWithLastConversationMessages[accountAssistantIndex]
          .lastConversationMessage
          .isMessageSent = false;
      conversedEntityWithLastConversationMessages[accountAssistantIndex]
          .lastConversationMessage
          .accountAssistantReceivedMessage = lastSentMessage;
      if (accountAssistantIndex != 0) {
        pushConversedEntityToStart(accountAssistantIndex);
      }
    }
  }

  static pushConversedEntityToStart(int entityIndex) {
    ConversedEntityWithLastConversationMessage
        oldConversedEntityWithLastConversationMessage =
        conversedEntityWithLastConversationMessages[entityIndex];
    conversedEntityWithLastConversationMessages.removeAt(entityIndex);
    conversedEntityWithLastConversationMessages.insert(
        0, oldConversedEntityWithLastConversationMessage);
  }

  /// returns the index of accountId in the list of
  /// conversedEntityWithLastConversationMessages, else return -1
  static int findConversedAccountWithLastConversationMessagesUsingAccountId(
      String accountId) {
    // Find the index of account. If not found, index = -1
    final index = conversedEntityWithLastConversationMessages.indexWhere(
        (element) => element.conversedAccount.accountId == accountId);
    if (index >= 0) {
      return index;
    } else {
      return -1;
    }
  }

  /// returns the index of accountAssistantId in the list of
  /// conversedEntityWithLastConversationMessages, else return -1
  static int
      findConversedAccountAssistantWithLastConversationMessagesUsingAccountAssistantId(
          String accountAssistantId) {
    final index = conversedEntityWithLastConversationMessages.indexWhere(
        (element) =>
            element.conversedAccountAssistant.accountAssistantId ==
            accountAssistantId);
    if (index >= 0) {
      return index;
    } else {
      return -1;
    }
  }

  static notifyAddedConversedEntityWithLastConversationMessage(int index) {
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalConversationsService", {
      "subType": "AddedConversedEntityWithLastConversationMessage",
      "at": index
    }));
  }

  static notifyAddedAccountSentMessage(String accountId, int index) {
    updateConversedAccountWithLastConversationSentMessages(accountId, index);
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalConversationsService", {
      "subType": "AddedAccountSentMessage",
      "accountId": accountId,
      "at": index
    }));
  }

  static notifyAddedAccountReceivedMessage(String accountId, int index) {
    updateConversedAccountWithLastConversationReceivedMessages(
        accountId, index);
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalConversationsService", {
      "subType": "AddedAccountReceivedMessage",
      "accountId": accountId,
      "at": index
    }));
  }

  static notifyAddedAccountAssistantSentMessage(
      String accountAssistantId, int index) {
    updateConversedAccountAssistantWithLastConversationSentMessages(
        accountAssistantId, index);
    NotificationsBloc.instance
        .newNotification(LocalNotification("LocalConversationsService", {
      "subType": "AddedAccountAssistantSentMessage",
      "accountAssistantId": accountAssistantId,
      "at": index
    }));
  }

  static notifyAddedAccountAssistantReceivedMessage(
      String accountAssistantId, int index) {
    updateConversedAccountAssistantWithLastConversationReceivedMessages(
        accountAssistantId, index);
    NotificationsBloc.instance
        .newNotification(LocalNotification("LocalConversationsService", {
      "subType": "AddedAccountAssistantReceivedMessage",
      "accountAssistantId": accountAssistantId,
      "at": index
    }));
  }

// static notifyAddedConversedEntityWithLastConversationMessage(int index) {
//   NotificationsBloc.instance.newNotification(LocalNotification(
//       "LocalConversationsService", {
//     "subType": "AddedConversedEntityWithLastConversationMessage",
//     "at": index
//   }));
// }
}
