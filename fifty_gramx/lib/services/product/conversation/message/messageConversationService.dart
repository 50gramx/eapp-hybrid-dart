import 'package:fifty_gramx/channels/conversationCommonChannel.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/message_conversation.pbgrpc.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/access_account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/connect_account.pb.dart';
import 'package:grpc/grpc.dart';

class MessageConversationService {
  // Client declarations here
  static MessageConversationServiceClient? _serviceClient;

  MessageConversationService._();

  // getting the client on the very first call
  static Future<MessageConversationServiceClient> get serviceClient async =>
      _serviceClient ??= MessageConversationServiceClient(
          await ConversationCommonChannel.conversationChannel);

  // Service declarations here
  static Future<ResponseStream<GetAccountAndAssistantConversationsResponse>>
      getAccountAndAssistantConversations(
          AccountConnectedAccountAssistant accountConnectedAccountAssistant,
          bool isAccountConnected,
          AccountConnectedAccount accountConnectedAccount) async {
    var request = GetAccountAndAssistantConversationsRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..connectedAccountAssistant = accountConnectedAccountAssistant
      ..isAccountConnected = isAccountConnected
      ..connectedAccount = accountConnectedAccount;

    return (await serviceClient).getAccountAndAssistantConversations(request);
  }

  static Future<GetLast24ProductNConversationMessagesResponse>
      getLast24ProductNConversationMessages(
          int productN,
          MessageEntity messageEntityEnum,
          AccountConnectedAccountAssistant accountConnectedAccountAssistant,
          AccountConnectedAccount accountConnectedAccount) async {
    var request = GetLast24ProductNConversationMessagesRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..productN = productN
      ..messageEntityEnum = messageEntityEnum
      ..connectedAccountAssistant = accountConnectedAccountAssistant
      ..connectedAccount = accountConnectedAccount;

    return (await serviceClient).getLast24ProductNConversationMessages(request);
  }

  static Future<GetAccountLastMessageResponse> getAccountLastMessage(
      String connectedAccountId) async {
    var request = GetAccountLastMessageRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..connectedAccountId = connectedAccountId;
    return (await serviceClient).getAccountLastMessage(request);
  }

  static Future<GetAccountAssistantLastMessageResponse>
      getAccountAssistantLastMessage(String connectedAccountAssistantId) async {
    var request = GetAccountAssistantLastMessageRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..connectedAccountAssistantId = connectedAccountAssistantId;
    return (await serviceClient).getAccountAssistantLastMessage(request);
  }

  static Future<GetConversedAccountAndAssistantsResponse>
      getConversedAccountAndAssistants() async {
    return (await serviceClient).getConversedAccountAndAssistants(
        await AccountData().readAccountServicesAccessAuthDetails());
  }

  // Service Helpers declarations here
  static Stream<List<AccountAndAssistantConversationsMessages>>
      getAccountAndAssistantConversationsStreamListMessages(
          ConnectedAssistantWithBelongingEntity
              connectedAssistantWithBelongingEntity) async* {
    var accountConnectedAccountAssistant = connectedAssistantWithBelongingEntity
        .connectedAssistant
        .unpackInto(new AccountConnectedAccountAssistant());
    var accountConnectedAccount;
    if (connectedAssistantWithBelongingEntity.isConnectedToBelongingEntity) {
      accountConnectedAccount = connectedAssistantWithBelongingEntity
          .connectedEntity
          .unpackInto(new AccountConnectedAccount());
    } else {
      accountConnectedAccount = AccountConnectedAccount.getDefault();
    }

    var getAccountAndAssistantConversationsStream =
        await MessageConversationService.getAccountAndAssistantConversations(
            accountConnectedAccountAssistant,
            connectedAssistantWithBelongingEntity.isConnectedToBelongingEntity,
            accountConnectedAccount);

    await for (var response in getAccountAndAssistantConversationsStream) {
      yield response.accountAndAssistantConversationsMessages;
    }
  }
}
