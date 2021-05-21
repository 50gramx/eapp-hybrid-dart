import 'package:fifty_gramx/common/identityCommonChannel.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/create_account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/create_account.pbgrpc.dart';

class CreateAccountService {
  static Future<ValidateAccountWithMobileResponse> validateAccountWithMobile(
      String accountMobileNumber) async {
    var createAccountServiceClient =
        CreateAccountServiceClient(await IdentityCommonChannel.identityChannel);
    var request = ValidateAccountWithMobileRequest()
      ..accountMobileCountryCode = "+91"
      ..accountMobileNumber = accountMobileNumber
      ..requestedAt = Timestamp();
    return await createAccountServiceClient.validateAccountWithMobile(request);
  }
}
