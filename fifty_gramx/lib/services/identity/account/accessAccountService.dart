import 'package:fifty_gramx/common/identityCommonChannel.dart';
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
}
