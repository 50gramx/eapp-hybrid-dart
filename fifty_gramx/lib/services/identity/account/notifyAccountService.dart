import 'package:fifty_gramx/channels/identityCommonChannel.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/galaxy.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/notify_account.pbgrpc.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/pay_in_account.pbgrpc.dart';

class NotifyAccountService {
  // Client declarations here
  static NotifyAccountServiceClient? _serviceClient;

  NotifyAccountService._();

  // getting the client on the very first call
  static Future<NotifyAccountServiceClient> get serviceClient async =>
      _serviceClient ??= NotifyAccountServiceClient(
          await IdentityCommonChannel.identityChannel);

  void dispose() {
    print("NotifyAccountService:dispose");
  }

  // Service declarations here
  static Future<ResponseMeta> updateAccountDeviceDetails(
      AccountDeviceDetails accountDeviceDetails) async {
    var request = UpdateAccountDeviceDetailsRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..accountDeviceDetails = accountDeviceDetails;
    return await (await serviceClient)
        .updateAccountDeviceDetails(request);
  }
}
