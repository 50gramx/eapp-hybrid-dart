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
import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/conversation/message/account/send_account_message.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:grpc/grpc.dart';

class SendAccountMessageService {
  // Client declarations here
  static SendAccountMessageServiceClient? _serviceClient;

  SendAccountMessageService._();

  // basically getting the client on the very first call
  static Future<SendAccountMessageServiceClient> get serviceClient async =>
      _serviceClient ??= SendAccountMessageServiceClient(
          await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  // Service declarations here
  static Future<
          ResponseStream<
              SyncAccountConnectedAccountAssistantSentMessagesResponse>>
      syncAccountConnectedAccountAssistantSentMessages(
          AccountConnectedAccountAssistant
              accountConnectedAccountAssistant) async {
    var request = SyncAccountConnectedAccountAssistantSentMessagesRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..connectedAccountAssistant = accountConnectedAccountAssistant;

    return (await serviceClient)
        .syncAccountConnectedAccountAssistantSentMessages(request);
  }

  static Future<ResponseStream<SyncAccountConnectedAccountSentMessagesResponse>>
      syncAccountConnectedAccountSentMessages(
          AccountConnectedAccount accountConnectedAccount) async {
    var request = SyncAccountConnectedAccountSentMessagesRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..connectedAccount = accountConnectedAccount;

    return (await serviceClient)
        .syncAccountConnectedAccountSentMessages(request);
  }

  static Future<MessageForAccountSent> sendMessageToAccount(
      AccountConnectedAccount accountConnectedAccount, String message) async {
    var request = MessageForAccount()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..connectedAccount = accountConnectedAccount
      ..message = message;

    return (await serviceClient).sendMessageToAccount(request);
  }

  static Future<MessageForAccountAssistantSent> sendMessageToAccountAssistant(
      AccountConnectedAccountAssistant accountConnectedAccountAssistant,
      SpaceKnowledgeAction spaceKnowledgeAction,
      String message) async {
    var request = MessageForAccountAssistant()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..connectedAccountAssistant = accountConnectedAccountAssistant
      ..spaceKnowledgeAction = spaceKnowledgeAction
      ..message = message;

    return (await serviceClient).sendMessageToAccountAssistant(request);
  }

  static Future<AccountSentMessagesCountResponse>
      getAccountSentMessagesCount() async {
    var request = await AccountData().readAccountServicesAccessAuthDetails();
    return (await serviceClient).getAccountSentMessagesCount(request);
  }

  static Future<AccountAssistantSentMessagesCountResponse>
      getAccountAssistantSentMessagesCount() async {
    var request = await AccountData().readAccountServicesAccessAuthDetails();
    return (await serviceClient).getAccountAssistantSentMessagesCount(request);
  }
}
