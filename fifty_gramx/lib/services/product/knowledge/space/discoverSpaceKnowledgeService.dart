import 'package:fifty_gramx/channels/knowledgeCommonChannel.dart';
import 'package:fifty_gramx/data/spaceKnowledgeData.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge/discover_space_knowledge.pbgrpc.dart';

class DiscoverSpaceKnowledgeService {
  // Client declarations here
  static DiscoverSpaceKnowledgeServiceClient? _serviceClient;

  DiscoverSpaceKnowledgeService._();

  // getting the client on the very first call
  static Future<DiscoverSpaceKnowledgeServiceClient> get serviceClient async =>
      _serviceClient ??= DiscoverSpaceKnowledgeServiceClient(
          await KnowledgeCommonChannel.knowledgeChannel);

  void dispose() {
    print("DiscoverSpaceKnowledgeService:dispose");
  }

  // Service declarations here
  static Future<GetSpaceKnowledgeDomainsResponse> getSpaceKnowledgeDomains() async {
    var request = await SpaceKnowledgeData().readSpaceKnowledgeServicesAccessAuthDetails();
    return await (await serviceClient).getSpaceKnowledgeDomains(request);
  }

}
