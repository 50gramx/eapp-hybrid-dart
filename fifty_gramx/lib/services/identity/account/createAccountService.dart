import 'package:fifty_gramx/common/identityCommonChannel.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/create_account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/create_account.pbgrpc.dart';

class CreateAccountService {
  static Future<ValidateAccountWithMobileResponse> validateAccountWithMobile(
    String accountMobileNumber,
  ) async {
    var createAccountServiceClient =
        CreateAccountServiceClient(await IdentityCommonChannel.identityChannel);
    var request = ValidateAccountWithMobileRequest()
      ..accountMobileCountryCode = "+91"
      ..accountMobileNumber = accountMobileNumber
      ..requestedAt = Timestamp();
    return await createAccountServiceClient.validateAccountWithMobile(request);
  }

  static Future<VerificationAccountResponse> verificationAccount(
    AccountCreationAuthDetails accountCreationAuthDetails,
    bool resendCode,
    String verificationCode,
    TemporaryTokenDetails verificationCodeTokenDetails,
  ) async {
    var createAccountServiceClient =
        CreateAccountServiceClient(await IdentityCommonChannel.identityChannel);
    var request = VerificationAccountRequest()
      ..accountCreationAuthDetails = accountCreationAuthDetails
      ..resendCode = resendCode
      ..verificationCode = verificationCode
      ..verificationCodeTokenDetails = verificationCodeTokenDetails
      ..requestedAt = Timestamp();
    return await createAccountServiceClient.verificationAccount(request);
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
    var createAccountServiceClient =
        CreateAccountServiceClient(await IdentityCommonChannel.identityChannel);
    var request = CaptureAccountMetaDetailsRequest()
      ..accountCreationAuthDetails = accountCreationAuthDetails
      ..accountFirstName = accountFirstName
      ..accountLastName = accountLastName
      ..accountBirthAt = accountBirthAt
      ..accountGender = accountGender
      ..accountDeviceDetails = accountDeviceDetails
      ..accountAssistantName = accountAssistantName
      ..requestedAt = Timestamp();
    return await createAccountServiceClient.captureAccountMetaDetails(request);
  }
}
