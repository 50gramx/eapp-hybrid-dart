import 'package:fifty_gramx/channels/identityCommonChannel.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/space/access_space.pbgrpc.dart';

class AccessSpaceService {
  // Client declarations here
  static AccessSpaceServiceClient? _serviceClient;

  AccessSpaceService._();

  // getting the client on the very first call
  static Future<AccessSpaceServiceClient> get serviceClient async =>
      _serviceClient ??=
          AccessSpaceServiceClient(await IdentityCommonChannel.identityChannel);

  void dispose() {
    print("AccessSpaceService:dispose");
  }

  // Service declarations here
  static Future<SpaceAccessTokenResponse> spaceAccessToken() async {
    var request = await AccountData().readAccountServicesAccessAuthDetails();
    return await (await serviceClient).spaceAccessToken(request);
  }

  static Future<ValidateSpaceServicesResponse> validateSpaceServices(
      SpaceServicesAccessAuthDetails spaceServicesAccessAuthDetails) async {
    return await (await serviceClient)
        .validateSpaceServices(spaceServicesAccessAuthDetails);
  }
}
