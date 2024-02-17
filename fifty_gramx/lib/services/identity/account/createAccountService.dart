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
import 'package:eapp_dart_domain/ethos/elint/services/product/identity/account/create_account.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';

class CreateAccountService {
  // Client declarations here
  static CreateAccountServiceClient? _serviceClient;

  CreateAccountService._();

  // getting the client on the very first call
  static Future<CreateAccountServiceClient> get serviceClient async =>
      _serviceClient ??= CreateAccountServiceClient(
          await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

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
    return await (await serviceClient).validateAccountWithMobile(request);
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
