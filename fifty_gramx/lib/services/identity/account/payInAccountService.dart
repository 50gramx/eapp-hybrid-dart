import 'package:fifty_gramx/channels/identityCommonChannel.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/galaxy.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/pay_in_account.pbgrpc.dart';

class PayInAccountService {
  // Client declarations here
  static PayInAccountServiceClient? _serviceClient;

  PayInAccountService._();

  // getting the client on the very first call
  static Future<PayInAccountServiceClient> get serviceClient async =>
      _serviceClient ??= PayInAccountServiceClient(
          await IdentityCommonChannel.identityChannel);

  void dispose() {
    print("PayInAccountService:dispose");
  }

  // Service declarations here
  static Future<ResponseMeta> confirmAccountOpenGalaxyPlayStoreSubscription(
      String googlePlayPurchaseToken,
      OpenGalaxyTierEnum openGalaxyTierEnum) async {
    var request = ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..googlePlayPurchaseToken = googlePlayPurchaseToken
      ..openGalaxyTierEnum = openGalaxyTierEnum;
    return await (await serviceClient)
        .confirmAccountOpenGalaxyPlayStoreSubscription(request);
  }

  static Future<ResponseMeta> confirmAccountEthosCoinBalanceAddition(
      String googlePlayPurchaseToken, AddEthosCoinEnum addEthosCoinEnum) async {
    var request = ConfirmAccountEthosCoinBalanceAdditionRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..addEthosCoinEnum = addEthosCoinEnum
      ..googlePlayPurchaseToken = googlePlayPurchaseToken;
    return await (await serviceClient)
        .confirmAccountEthosCoinBalanceAddition(request);
  }

  static Future<AccountEthosCoinBalanceResponse>
      accountEthosCoinBalance() async {
    return await (await serviceClient).accountEthosCoinBalance(
        await AccountData().readAccountServicesAccessAuthDetails());
  }

  static Future<ResponseMeta>
      isTierBenefitsRemainingForClosedDomainLaunchPerMonth() async {
    return await (await serviceClient)
        .isTierBenefitsRemainingForClosedDomainLaunchPerMonth(
            await AccountData().readAccountServicesAccessAuthDetails());
  }
}
