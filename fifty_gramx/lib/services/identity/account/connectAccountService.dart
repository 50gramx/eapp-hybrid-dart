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
import 'package:eapp_dart_domain/ethos/elint/entities/generic.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/identity/account/connect_account.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/accountData.dart';

class ConnectAccountService {
  // Client declarations here
  static ConnectAccountServiceClient? _serviceClient;

  ConnectAccountService._();

  // getting the client on the very first call
  static Future<ConnectAccountServiceClient> get serviceClient async =>
      _serviceClient ??= ConnectAccountServiceClient(
          await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  void dispose() {}

  // Service declarations here
  static Future<GetAccountSelfConnectedAccountAssistantResponse>
      getAccountSelfConnectedAccountAssistant() async {
    return await (await serviceClient).getAccountSelfConnectedAccountAssistant(
        await AccountData().readAccountServicesAccessAuthDetails());
  }

  static Future<ConnectedAccounts> getAllConnectedAccounts() async {
    return await (await serviceClient).getAllConnectedAccounts(
        await AccountData().readAccountServicesAccessAuthDetails());
  }

  static Future<ConnectedAccountAssistants>
      getAllConnectedAccountAssistants() async {
    return await (await serviceClient).getAllConnectedAccountAssistants(
        await AccountData().readAccountServicesAccessAuthDetails());
  }

  static Future<GetConnectedAccountResponse> getConnectedAccount(
      String accountId) async {
    var request = GetConnectedAccountRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..accountId = accountId;
    return await (await serviceClient).getConnectedAccount(request);
  }

  static Future<GetConnectedAccountAssistantResponse>
      getConnectedAccountAssistant(String accountAssistantId) async {
    var request = GetConnectedAccountAssistantRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..accountAssistantId = accountAssistantId;
    return await (await serviceClient).getConnectedAccountAssistant(request);
  }

  static Future<ParseAccountMobilesResponse> parseAccountMobiles(
      List<String> connectingAccountMobileNumbers) async {
    var accessAuth =
        (await AccountData().readAccountServicesAccessAuthDetails());

    var request = ParseAccountMobilesRequest()
      ..accessAuthDetails = accessAuth
      ..connectingAccountMobileNumbers.addAll(connectingAccountMobileNumbers);
    return await (await serviceClient).parseAccountMobiles(request);
  }

  // warning: verify and remove if static, if this stream is subscribed more than once
  static Stream<ConnectedAssistantsWithBelongingEntity>
      getAllConnectedAssistantsWithBelongingEntityStream() async* {
    var getAllConnectedAssistantsWithBelongingEntityStream =
        (await serviceClient).getAllConnectedAssistantsWithBelongingEntity(
            await AccountData().readAccountServicesAccessAuthDetails());
    await for (var connectedAssistantWithBelongingEntity
        in getAllConnectedAssistantsWithBelongingEntityStream) {
      yield connectedAssistantWithBelongingEntity;
    }
  }

  // warning: verify and remove if static, if this stream is subscribed more than once
  static Future<Stream<ConnectedAssistantsWithBelongingEntity>>
      getAllConnectedAssistantsWithBelongingEntity() async {
    return (await serviceClient).getAllConnectedAssistantsWithBelongingEntity(
        await AccountData().readAccountServicesAccessAuthDetails());
  }

  static Future<SyncAccountConnectionsResponse> syncAccountConnections(
      AccountMobile connectingAccountMobile) async {
    var request = SyncAccountConnectionsRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..connectingAccountMobile = connectingAccountMobile;
    return await (await serviceClient).syncAccountConnections(request);
  }

  static Future<ResponseMeta> toggleAccountConnectAccountInterest(
      AccountConnectedAccount connectedAccount) async {
    var request = ToggleAccountConnectAccountInterestRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..connectedAccount = connectedAccount;
    return await (await serviceClient)
        .toggleAccountConnectAccountInterest(request);
  }
}
