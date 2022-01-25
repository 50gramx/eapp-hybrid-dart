import 'package:fifty_gramx/channels/identityCommonChannel.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/discover_account.pbgrpc.dart';

class DiscoverAccountService {
  // Client declarations here
  static DiscoverAccountServiceClient? _serviceClient;

  DiscoverAccountService._();

  // getting the client on the very first call
  static Future<DiscoverAccountServiceClient> get serviceClient async =>
      _serviceClient ??= DiscoverAccountServiceClient(
          await IdentityCommonChannel.identityChannel);

  void dispose() {}

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
