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
import 'package:eapp_dart_domain/ethos/elint/services/product/conversation/message/account/receive_account_message.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:grpc/grpc.dart';

class ReceiveAccountMessageService {
  // Client declarations here
  static ReceiveAccountMessageServiceClient? _serviceClient;

  ReceiveAccountMessageService._();

  // getting the client on the very first call
  static Future<ReceiveAccountMessageServiceClient> get serviceClient async =>
      _serviceClient ??= ReceiveAccountMessageServiceClient(
          await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  // Service declarations here
  static Future<
          ResponseStream<
              SyncAccountConnectedAccountAssistantReceivedMessagesResponse>>
      syncAccountConnectedAccountAssistantReceivedMessages(
          AccountConnectedAccountAssistant
              accountConnectedAccountAssistant) async {
    var request = SyncAccountConnectedAccountAssistantReceivedMessagesRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..connectedAccountAssistant = accountConnectedAccountAssistant;

    return (await serviceClient)
        .syncAccountConnectedAccountAssistantReceivedMessages(request);
  }

  static Future<
          ResponseStream<SyncAccountConnectedAccountReceivedMessagesResponse>>
      syncAccountConnectedAccountReceivedMessages(
          AccountConnectedAccount accountConnectedAccount) async {
    var request = SyncAccountConnectedAccountReceivedMessagesRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..connectedAccount = accountConnectedAccount;

    return (await serviceClient)
        .syncAccountConnectedAccountReceivedMessages(request);
  }

  static Future<ListenForReceivedAccountAssistantMessagesResponse>
      listenForReceivedAccountAssistantMessages() async {
    var request = ListenForReceivedAccountAssistantMessagesRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails();
    return (await serviceClient)
        .listenForReceivedAccountAssistantMessages(request);
  }

  static Future<ListenForReceivedAccountMessagesResponse>
      listenForReceivedAccountMessages() async {
    var request = ListenForReceivedAccountMessagesRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails();
    return (await serviceClient).listenForReceivedAccountMessages(request);
  }

  static Future<ResponseStream<ListenForReceivedAccountSpeedMessagesResponse>>
      listenForReceivedAccountSpeedMessages() async {
    return (await serviceClient).listenForReceivedAccountSpeedMessages(
        await AccountData().readAccountServicesAccessAuthDetails());
  }

  static Future<AccountReceivedMessagesCountResponse>
      getAccountReceivedMessagesCount() async {
    var request = await AccountData().readAccountServicesAccessAuthDetails();
    return (await serviceClient).getAccountReceivedMessagesCount(request);
  }

  static Future<AccountAssistantReceivedMessagesCountResponse>
      getAccountAssistantReceivedMessagesCount() async {
    var request = await AccountData().readAccountServicesAccessAuthDetails();
    return (await serviceClient)
        .getAccountAssistantReceivedMessagesCount(request);
  }
}
