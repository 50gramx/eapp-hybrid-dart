import 'dart:convert';

import 'package:fifty_gramx/channels/identityCommonChannel.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/access_account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/create_account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/create_account.pbgrpc.dart';
import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;

class CreateAccountService {
  // Client declarations here
  static CreateAccountServiceClient? _serviceClient;
  static String webServiceUrl = "http://127.0.0.1:8000/identity/create-account";

  static Uri getWebServiceUri(String serviceUrl) {
    return Uri.parse(webServiceUrl + serviceUrl);
  }

  CreateAccountService._();

  // getting the client on the very first call
  static Future<CreateAccountServiceClient> get serviceClient async =>
      _serviceClient ??= CreateAccountServiceClient(
          await IdentityCommonChannel.identityChannel);

  // TODO: Auth update in all services

  // Service declarations here
  static Future<ValidateAccountWithMobileResponse> validateAccountWithMobile(
    String accountMobileCountryCode,
    String accountMobileNumber,
  ) async {
    var request = ValidateAccountWithMobileRequest()
      ..accountMobileCountryCode = accountMobileCountryCode
      ..accountMobileNumber = accountMobileNumber
      ..requestedAt = Timestamp.fromDateTime(DateTime.now());
    if (kIsWeb) {
      var response = await http.post(
          getWebServiceUri('/validate-account-with-mobile'),
          body: jsonEncode(request.toProto3Json()));
      if (response.statusCode == 200) {
        // If the server did return a 200 OK response,
        // then parse the JSON.
        return ValidateAccountWithMobileResponse.create()
          ..mergeFromProto3Json(jsonDecode(response.body)['data']);
      } else {
        return ValidateAccountWithMobileResponse.getDefault();
      }
    } else {
      return await (await serviceClient).validateAccountWithMobile(request);
    }
  }

  static Future<VerificationAccountResponse> verificationAccount(
    AccountCreationAuthDetails accountCreationAuthDetails,
    bool resendCode,
    String verificationCode,
    TemporaryTokenDetails verificationCodeTokenDetails,
  ) async {
    var request = VerificationAccountRequest()
      ..accountCreationAuthDetails = accountCreationAuthDetails
      ..resendCode = resendCode
      ..verificationCode = verificationCode
      ..verificationCodeTokenDetails = verificationCodeTokenDetails
      ..requestedAt = Timestamp.fromDateTime(DateTime.now());
    return await (await serviceClient).verificationAccount(request);
  }

  static Future<CaptureAccountMetaDetailsResponse> captureAccountMetaDetails(
    AccountCreationAuthDetails accountCreationAuthDetails,
    String accountFirstName,
    String accountLastName,
    Timestamp accountBirthAt,
    AccountGender accountGender,
    AccountDeviceDetails accountDeviceDetails,
    String accountAssistantName,
  ) async {
    var request = CaptureAccountMetaDetailsRequest()
      ..accountCreationAuthDetails = accountCreationAuthDetails
      ..accountFirstName = accountFirstName
      ..accountLastName = accountLastName
      ..accountBirthAt = accountBirthAt
      ..accountGender = accountGender
      ..accountDeviceDetails = accountDeviceDetails
      ..accountAssistantName = accountAssistantName
      ..requestedAt = Timestamp.fromDateTime(DateTime.now());
    return await (await serviceClient).captureAccountMetaDetails(request);
  }
}
