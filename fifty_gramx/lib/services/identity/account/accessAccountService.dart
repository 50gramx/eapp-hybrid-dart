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
import 'package:eapp_dart_domain/ethos/elint/services/product/identity/account/access_account.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';

class AccessAccountService {
  // Client declarations here
  static AccessAccountServiceClient? _serviceClient;

  AccessAccountService._();

  // getting the client on the very first call
  static Future<AccessAccountServiceClient> get serviceClient async =>
      _serviceClient ??= AccessAccountServiceClient(
          await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  // Service declarations here
  static Future<ValidateAccountResponse> validateAccount(
      String accountMobileCountryCode, String accountMobileNumber) async {
    // create the request here
    var request = ValidateAccountRequest()
      ..accountMobileCountryCode = accountMobileCountryCode
      ..accountMobileNumber = accountMobileNumber
      ..requestedAt = Timestamp.fromDateTime(DateTime.now());
    // pass the request to server here
    return (await serviceClient).validateAccount(request);
  }

  static Future<VerifyAccountResponse> verifyAccount(
      AccountAccessAuthDetails accountAccessAuthDetails,
      bool resendCode,
      TemporaryTokenDetails verificationCodeTokenDetails,
      String verificationCode,
      AccountDeviceDetails accountDeviceDetails) async {
    var request = VerifyAccountRequest()
      ..accountAccessAuthDetails = accountAccessAuthDetails
      ..resendCode = resendCode
      ..requestedAt = Timestamp.fromDateTime(DateTime.now())
      ..verificationCodeTokenDetails = verificationCodeTokenDetails
      ..verificationCode = verificationCode
      ..accountDeviceDetails = accountDeviceDetails;
    return (await serviceClient).verifyAccount(request);
  }

  static Future<ValidateAccountServicesResponse> validateAccountServices(
      AccountServicesAccessAuthDetails accountServicesAccessAuthDetails) async {
    return (await serviceClient)
        .validateAccountServices(accountServicesAccessAuthDetails);
  }

  static Future<ReAccountAccessTokenResponse> reAccountAccessToken(
      AccountServicesAccessAuthDetails accountServiceAccessAuthDetails) async {
    var request = ReAccountAccessTokenRequest()
      ..accountServiceAccessAuthDetails = accountServiceAccessAuthDetails;
    return (await serviceClient).reAccountAccessToken(request);
  }
}
