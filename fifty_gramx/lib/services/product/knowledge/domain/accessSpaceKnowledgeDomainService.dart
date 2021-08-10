import 'package:fifty_gramx/channels/knowledgeCommonChannel.dart';
import 'package:fifty_gramx/data/spaceKnowledgeData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge_domain/access_space_knowledge_domain.pbgrpc.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge_domain/create_space_knowledge_domain.pbgrpc.dart';

class AccessSpaceKnowledgeDomainService {
  // Client declarations here
  static AccessSpaceKnowledgeDomainServiceClient? _serviceClient;

  AccessSpaceKnowledgeDomainService._();

  // getting the client on the very first call
  static Future<AccessSpaceKnowledgeDomainServiceClient>
      get serviceClient async =>
          _serviceClient ??= AccessSpaceKnowledgeDomainServiceClient(
              await KnowledgeCommonChannel.knowledgeChannel);

  void dispose() {
    print("AccessSpaceKnowledgeDomainService:dispose");
  }

  // Service declarations here
  static Future<SpaceKnowledgeDomainAccessTokenResponse>
  spaceKnowledgeDomainAccessToken(
          SpaceKnowledgeDomain spaceKnowledgeDomain) async {
    var request = SpaceKnowledgeDomainAccessTokenRequest()
      ..spaceKnowledgeServicesAccessAuthDetails = await SpaceKnowledgeData()
          .readSpaceKnowledgeServicesAccessAuthDetails()
      ..spaceKnowledgeDomain = spaceKnowledgeDomain;
    return await (await serviceClient).spaceKnowledgeDomainAccessToken(request);
  }
}
