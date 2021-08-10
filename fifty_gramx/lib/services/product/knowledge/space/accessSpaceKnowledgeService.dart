import 'package:fifty_gramx/channels/knowledgeCommonChannel.dart';
import 'package:fifty_gramx/data/spaceData.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge/access_space_knowledge.pbgrpc.dart';

class AccessSpaceKnowledgeService {
  // Client declarations here
  static AccessSpaceKnowledgeServiceClient? _serviceClient;

  AccessSpaceKnowledgeService._();

  // getting the client on the very first call
  static Future<AccessSpaceKnowledgeServiceClient> get serviceClient async =>
      _serviceClient ??= AccessSpaceKnowledgeServiceClient(
          await KnowledgeCommonChannel.knowledgeChannel);

  void dispose() {
    print("AccessSpaceKnowledgeService:dispose");
  }

  // Service declarations here
  static Future<SpaceKnowledgeAccessTokenResponse>
      spaceKnowledgeAccessToken() async {
    var request = await SpaceData().readSpaceServicesAccessAuthDetails();
    return await (await serviceClient).spaceKnowledgeAccessToken(request);
  }

  static Future<ValidateSpaceKnowledgeServicesResponse>
      validateSpaceKnowledgeServices(
          SpaceKnowledgeServicesAccessAuthDetails
              spaceKnowledgeServicesAccessAuthDetails) async {
    return await (await serviceClient).validateSpaceKnowledgeServices(
        spaceKnowledgeServicesAccessAuthDetails);
  }
}
