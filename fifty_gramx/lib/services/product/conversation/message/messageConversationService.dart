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
import 'package:eapp_dart_domain/ethos/elint/services/product/conversation/message/message_conversation.pbgrpc.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/identity/account/connect_account.pb.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:grpc/grpc.dart';

class MessageConversationService {
  // Client declarations here
  static MessageConversationServiceClient? _serviceClient;

  MessageConversationService._();

  // getting the client on the very first call
  static Future<MessageConversationServiceClient> get serviceClient async =>
      _serviceClient ??= MessageConversationServiceClient(
          await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

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
