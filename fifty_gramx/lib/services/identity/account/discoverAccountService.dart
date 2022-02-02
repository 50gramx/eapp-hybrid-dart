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
import 'package:fifty_gramx/protos/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/access_account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/discover_account.pbgrpc.dart';

class DiscoverAccountService {
  // Client declarations here
  static DiscoverAccountServiceClient? _serviceClient;

  DiscoverAccountService._();

  // getting the client on the very first call
  static Future<DiscoverAccountServiceClient> get serviceClient async =>
      _serviceClient ??= DiscoverAccountServiceClient(
          await IdentityCommonChannel.identityChannel);

  void dispose() {
    print("DiscoverAccountService:dispose");
  }

  // Service declarations here
  static Future<GetAccountByIdResponse> getAccountById(String accountId) async {
    var request = GetAccountByIdRequest()..accountId = accountId;
    return await (await serviceClient).getAccountById(request);
  }

  static Future<ResponseMeta> isAccountBillingActive(String accountId) async {
    var request = await AccountData().readAccountServicesAccessAuthDetails();
    return await (await serviceClient).isAccountBillingActive(request);
  }

  static Future<Stream<AreAccountsExistingWithMobileResponse>>
      areAccountsExistingWithMobile(List<AccountMobile> accountMobiles) async {
    var request = AreAccountsExistingWithMobileRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..accountMobiles.addAll(accountMobiles);
    return (await serviceClient).areAccountsExistingWithMobile(request);
  }
}
