import 'package:fifty_gramx/channels/knowledgeCommonChannel.dart';
import 'package:fifty_gramx/data/spaceKnowledgeData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge_domain/create_space_knowledge_domain.pbgrpc.dart';

class CreateSpaceKnowledgeDomainService {
  // Client declarations here
  static CreateSpaceKnowledgeDomainServiceClient? _serviceClient;

  CreateSpaceKnowledgeDomainService._();

  // getting the client on the very first call
  static Future<CreateSpaceKnowledgeDomainServiceClient>
      get serviceClient async =>
          _serviceClient ??= CreateSpaceKnowledgeDomainServiceClient(
              await KnowledgeCommonChannel.knowledgeChannel);

  void dispose() {
    print("CreateSpaceKnowledgeDomainService:dispose");
  }

  // Service declarations here
  static Future<CreateAccountWhiteSpaceKnowledgeDomainResponse>
      createAccountWhiteSpaceKnowledgeDomain() async {
    var request = await SpaceKnowledgeData()
        .readSpaceKnowledgeServicesAccessAuthDetails();
    return await (await serviceClient)
        .createAccountWhiteSpaceKnowledgeDomain(request);
  }

  static Future<CreateSpaceKnowledgeDomainResponse> createSpaceKnowledgeDomain(
      String spaceKnowledgeDomainName,
      String spaceKnowledgeDomainDescription,
      SpaceKnowledgeDomainCollarEnum spaceKnowledgeDomainCollarEnum,
      bool spaceKnowledgeDomainIsolated) async {
    var request = CreateSpaceKnowledgeDomainRequest()
      ..spaceKnowledgeServicesAccessAuthDetails = await SpaceKnowledgeData()
          .readSpaceKnowledgeServicesAccessAuthDetails()
      ..spaceKnowledgeDomainName = spaceKnowledgeDomainName
      ..spaceKnowledgeDomainDescription = spaceKnowledgeDomainDescription
      ..spaceKnowledgeDomainCollarEnum = spaceKnowledgeDomainCollarEnum
      ..spaceKnowledgeDomainIsolated = spaceKnowledgeDomainIsolated;
    return await (await serviceClient).createSpaceKnowledgeDomain(request);
  }
}
