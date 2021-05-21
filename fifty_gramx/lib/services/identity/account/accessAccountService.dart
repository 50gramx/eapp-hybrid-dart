import 'package:fifty_gramx/common/identityCommonChannel.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/access_account.pbgrpc.dart';

class AccessAccountService {
  static Future<ValidateAccountResponse> validateAccount(
      String accountMobileNumber) async {
    var client =
        AccessAccountServiceClient(await IdentityCommonChannel.identityChannel);
    var request = ValidateAccountRequest()
      ..accountMobileNumber = accountMobileNumber;
    return await client.validateAccount(request);
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
      ..requestedAt = Timestamp()
      ..verificationCodeTokenDetails = verificationCodeTokenDetails
      ..verificationCode = verificationCode
      ..accountDeviceDetails = accountDeviceDetails;
    return await client.verifyAccount(request);
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
