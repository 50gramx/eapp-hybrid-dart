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

import 'package:fifty_gramx/channels/identityCommonChannel.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/access_account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account_assistant/discover_account_assistant.pbgrpc.dart';

class DiscoverAccountAssistantService {
  // Client declarations here
  static DiscoverAccountAssistantServiceClient? _serviceClient;

  DiscoverAccountAssistantService._();

  // getting the client on the very first call
  static Future<DiscoverAccountAssistantServiceClient>
      get serviceClient async =>
          _serviceClient ??= DiscoverAccountAssistantServiceClient(
              await IdentityCommonChannel.identityChannel);

  void dispose() {
    print("DiscoverAccountService:dispose");
  }

  // Service declarations here
  static Future<AccountAssistant> getAccountAssistantByAccount(
      Account account) async {
    return await (await serviceClient).getAccountAssistantByAccount(account);
  }

  static Future<GetAccountAssistantMetaByAccountAssistantIdResponse>
      getAccountAssistantMetaByAccountAssistantId(
          String accountAssistantId) async {
    var request = GetAccountAssistantMetaByAccountAssistantIdRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..accountAssistantId = accountAssistantId;
    return await (await serviceClient)
        .getAccountAssistantMetaByAccountAssistantId(request);
  }

  static Future<GetAccountAssistantByIdResponse> getAccountAssistantById(
      String accountAssistantId) async {
    var request = GetAccountAssistantByIdRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..accountAssistantId = accountAssistantId;
    return await (await serviceClient).getAccountAssistantById(request);
  }
}
