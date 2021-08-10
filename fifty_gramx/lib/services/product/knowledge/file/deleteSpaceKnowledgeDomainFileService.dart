import 'package:fifty_gramx/channels/knowledgeCommonChannel.dart';
import 'package:fifty_gramx/data/spaceKnowledgeData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain_file.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge_domain/create_space_knowledge_domain.pbgrpc.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge_domain_file/create_space_knowledge_domain_file.pbgrpc.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge_domain_file/delete_space_knowledge_domain_file.pbgrpc.dart';
import 'package:fifty_gramx/services/product/knowledge/domain/accessSpaceKnowledgeDomainService.dart';

class DeleteSpaceKnowledgeDomainFileService {
  // Client declarations here
  static DeleteSpaceKnowledgeDomainFileServiceClient? _serviceClient;

  DeleteSpaceKnowledgeDomainFileService._();

  // getting the client on the very first call
  static Future<DeleteSpaceKnowledgeDomainFileServiceClient>
      get serviceClient async =>
          _serviceClient ??= DeleteSpaceKnowledgeDomainFileServiceClient(
              await KnowledgeCommonChannel.knowledgeChannel);

  void dispose() {
    print("DeleteSpaceKnowledgeDomainFileService:dispose");
  }

  // Service declarations here
  static Future<ResponseMeta> deleteSpaceKnowledgeDomainFile(
      SpaceKnowledgeDomain spaceKnowledgeDomain,
      SpaceKnowledgeDomainFile spaceKnowledgeDomainFile) async {
    var spaceKnowledgeDomainServicesAccessAuthDetails =
        (await AccessSpaceKnowledgeDomainService
                .spaceKnowledgeDomainAccessToken(spaceKnowledgeDomain))
            .spaceKnowledgeDomainServicesAccessAuthDetails;
    var request = DeleteSpaceKnowledgeDomainFileRequest()
      ..spaceKnowledgeDomainServicesAccessAuthDetails =
          spaceKnowledgeDomainServicesAccessAuthDetails
      ..spaceKnowledgeDomainFile = spaceKnowledgeDomainFile;
    return await (await serviceClient).deleteSpaceKnowledgeDomainFile(request);
  }
}
