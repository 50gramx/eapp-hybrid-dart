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
import 'package:fifty_gramx/widgets/homeScreenWidgets/connections/LocalConnectionsService.dart';

class LocalConversationsService {
  LocalConversationsService._();

  static List<ConversedEntityWithLastConversationMessage>
      conversedEntityWithLastConversationMessages = [];
  static Map<String, List<ConversationMessage>> entityIdConversationMessageMap =
      {};

  static Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  void dispose() {}

  static getMyConversations() async {
    print("getMyConversations:start");
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
    print("getMyConversations:end");
  }

  static loadEntityConversations(
      ConversedEntityWithLastConversationMessage
          conversedEntityWithLastConversationMessage) {
    String entityId;
    if (conversedEntityWithLastConversationMessage
        .lastConversationMessage.isMessageEntityAccountAssistant) {
      entityId = conversedEntityWithLastConversationMessage
          .conversedAccountAssistant.accountAssistantId;
      entityIdConversationMessageMap[entityId] = [];
      loadAccountAssistantConversations(
          conversedEntityWithLastConversationMessage.conversedAccountAssistant);
    } else {
      entityId =
          conversedEntityWithLastConversationMessage.conversedAccount.accountId;
      entityIdConversationMessageMap[entityId] = [];
      loadAccountConversations(
          conversedEntityWithLastConversationMessage.conversedAccount);
    }
  }

  static loadAccountAssistantConversations(
      AccountAssistant accountAssistant) async {
    AccountConnectedAccountAssistant connectedAccountAssistant =
        AccountConnectedAccountAssistant.getDefault();
    if (LocalConnectionsService.inverseConnectedAccountAssistantMap
        .containsKey(accountAssistant)) {
      connectedAccountAssistant = LocalConnectionsService
          .inverseConnectedAccountAssistantMap[accountAssistant]!;
    } else {
      connectedAccountAssistant =
          (await ConnectAccountService.getConnectedAccountAssistant(
                  accountAssistant.accountAssistantId))
              .connectedAccountAssistant;
    }
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

  static loadAccountConversations(Account account) async {
    AccountConnectedAccount connectedAccount =
        AccountConnectedAccount.getDefault();
    if (LocalConnectionsService.inverseConnectedAccountMap
        .containsKey(account)) {
      connectedAccount =
          LocalConnectionsService.inverseConnectedAccountMap[account]!;
    } else {
      connectedAccount =
          (await ConnectAccountService.getConnectedAccount(account.accountId))
              .connectedAccount;
    }
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

  static handleListeningMessages(LocalNotification message) async {
    print("received new notification");
    if (message.data['service'] == "NotifyAccountService") {
      if (message.data['rpc'] == "NewReceivedMessageFromAccount") {
        var listenForReceivedAccountMessagesResponse =
            await ReceiveAccountMessageService
                .listenForReceivedAccountMessages();
        if (listenForReceivedAccountMessagesResponse.responseMeta.metaDone) {
          for (MessageFromAccount messageFromAccount
              in listenForReceivedAccountMessagesResponse.messagesFromAccount) {
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
    var accountAssistantMeta = AccountAssistantMeta(
        accountAssistantId: accountAssistant.accountAssistantId,
        accountAssistantName: accountAssistant.accountAssistantName,
        accountAssistantNameCode: accountAssistant.accountAssistantNameCode,
        accountId: accountAssistant.account.accountId);

    var connectedAccountAssistant = LocalConnectionsService
        .inverseConnectedAccountAssistantMap[accountAssistantMeta]!;

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

    // warn: need to check if conversations doesn't exists
    var conversationsMessagesIndex = entityIdConversationMessageMap[
            connectedAccountAssistant.accountAssistantId]!
        .length;

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
    int accountAssistantIndex =
        findConversedAccountAssistantWithLastConversationMessagesUsingAccountAssistantId(
            accountAssistantId);
    if (accountAssistantIndex > -1) {
      AccountAssistantSentMessage lastSentMessage =
          entityIdConversationMessageMap[accountAssistantIndex]![messageIndex]
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
          entityIdConversationMessageMap[accountAssistantIndex]![messageIndex]
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

  static int findConversedAccountWithLastConversationMessagesUsingAccountId(
      String accountId) {
    // Find the index of person. If not found, index = -1
    final index = conversedEntityWithLastConversationMessages.indexWhere(
        (element) => element.conversedAccount.accountId == accountId);
    if (index >= 0) {
      return index;
    } else {
      return -1;
    }
  }

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
    print("LocalConversationsService:notifyAddedAccountSentMessage");
    updateConversedAccountWithLastConversationSentMessages(accountId, index);
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalConversationsService", {
      "subType": "AddedAccountSentMessage",
      "accountId": accountId,
      "at": index
    }));
  }

  static notifyAddedAccountReceivedMessage(String accountId, int index) {
    print("LocalConversationsService:notifyAddedAccountReceivedMessage");
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
