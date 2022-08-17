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

import 'dart:convert';

import 'package:fifty_gramx/channels/identityCommonChannel.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/access_account.pbgrpc.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class AccessAccountService {
  // Client declarations here
  static AccessAccountServiceClient? _serviceClient;
  static String webServiceUrl = "http://127.0.0.1:8000/identity/access-account";

  AccessAccountService._();

  static Uri getWebServiceUri(String serviceUrl) {
    return Uri.parse(webServiceUrl + serviceUrl);
  }

  // getting the client on the very first call
  static Future<AccessAccountServiceClient> get serviceClient async =>
      _serviceClient ??= AccessAccountServiceClient(
          await IdentityCommonChannel.identityChannel);

  // Service declarations here
  static Future<ValidateAccountResponse> validateAccount(
      String accountMobileCountryCode, String accountMobileNumber) async {
    // create the request here
    var request = ValidateAccountRequest()
      ..accountMobileCountryCode = accountMobileCountryCode
      ..accountMobileNumber = accountMobileNumber
      ..requestedAt = Timestamp.fromDateTime(DateTime.now());
    // pass the request to server here
    if (kIsWeb) {
      var response = await http.post(getWebServiceUri('/validate-account'),
          body: jsonEncode(request.toProto3Json()));
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        return ValidateAccountResponse.create()
          ..mergeFromProto3Json(jsonDecode(response.body)['data']);
      } else {
        return ValidateAccountResponse.getDefault();
      }
    } else {
      return (await serviceClient).validateAccount(request);
    }
  }

  static Future<VerifyAccountResponse> verifyAccount(
      AccountAccessAuthDetails accountAccessAuthDetails,
      bool resendCode,
      TemporaryTokenDetails verificationCodeTokenDetails,
      String verificationCode,
      AccountDeviceDetails accountDeviceDetails) async {
    var client =
        AccessAccountServiceClient(await IdentityCommonChannel.identityChannel);
    var request = VerifyAccountRequest()
      ..accountAccessAuthDetails = accountAccessAuthDetails
      ..resendCode = resendCode
      ..requestedAt = Timestamp.fromDateTime(DateTime.now())
      ..verificationCodeTokenDetails = verificationCodeTokenDetails
      ..verificationCode = verificationCode
      ..accountDeviceDetails = accountDeviceDetails;
    return await client.verifyAccount(request);
  }

  static Future<ValidateAccountServicesResponse> validateAccountServices(
      AccountServicesAccessAuthDetails accountServicesAccessAuthDetails) async {
    var client =
        AccessAccountServiceClient(await IdentityCommonChannel.identityChannel);
    return await client
        .validateAccountServices(accountServicesAccessAuthDetails);
  }

  static Future<ReAccountAccessTokenResponse> reAccountAccessToken(
      AccountServicesAccessAuthDetails accountServiceAccessAuthDetails) async {
    var client =
        AccessAccountServiceClient(await IdentityCommonChannel.identityChannel);
    var request = ReAccountAccessTokenRequest()
      ..accountServiceAccessAuthDetails = accountServiceAccessAuthDetails;
    return await client.reAccountAccessToken(request);
  }
}
