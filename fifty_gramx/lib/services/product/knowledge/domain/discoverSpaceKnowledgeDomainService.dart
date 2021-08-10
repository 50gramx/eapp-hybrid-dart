import 'package:fifty_gramx/channels/knowledgeCommonChannel.dart';
import 'package:fifty_gramx/data/spaceKnowledgeData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge_domain/create_space_knowledge_domain.pbgrpc.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge_domain/discover_space_knowledge_domain.pbgrpc.dart';
import 'package:fifty_gramx/services/product/knowledge/domain/accessSpaceKnowledgeDomainService.dart';
import 'package:fifty_gramx/services/product/knowledge/space/accessSpaceKnowledgeService.dart';

class DiscoverSpaceKnowledgeDomainService {
  // Client declarations here
  static DiscoverSpaceKnowledgeDomainServiceClient? _serviceClient;

  DiscoverSpaceKnowledgeDomainService._();

  // getting the client on the very first call
  static Future<DiscoverSpaceKnowledgeDomainServiceClient>
      get serviceClient async =>
          _serviceClient ??= DiscoverSpaceKnowledgeDomainServiceClient(
              await KnowledgeCommonChannel.knowledgeChannel);

  void dispose() {
    print("DiscoverSpaceKnowledgeDomainService:dispose");
  }

  // Service declarations here
  static Future<PageCountResponse> getPageCount(
      SpaceKnowledgeDomain spaceKnowledgeDomain) async {
    var request = (await AccessSpaceKnowledgeDomainService
            .spaceKnowledgeDomainAccessToken(spaceKnowledgeDomain))
        .spaceKnowledgeDomainServicesAccessAuthDetails;
    return await (await serviceClient).getPageCount(request);
  }

  static Future<GetAllDomainFilesResponse> getAllDomainFiles(
      SpaceKnowledgeDomain spaceKnowledgeDomain) async {
    var request = (await AccessSpaceKnowledgeDomainService
            .spaceKnowledgeDomainAccessToken(spaceKnowledgeDomain))
        .spaceKnowledgeDomainServicesAccessAuthDetails;
    return await (await serviceClient).getAllDomainFiles(request);
  }
}
