import 'package:fifty_gramx/channels/knowledgeCommonChannel.dart';
import 'package:fifty_gramx/data/spaceKnowledgeData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge_domain/create_space_knowledge_domain.pbgrpc.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge_domain_file/create_space_knowledge_domain_file.pbgrpc.dart';

class CreateSpaceKnowledgeDomainFileService {
  // Client declarations here
  static CreateSpaceKnowledgeDomainFileServiceClient? _serviceClient;

  CreateSpaceKnowledgeDomainFileService._();

  // getting the client on the very first call
  static Future<CreateSpaceKnowledgeDomainFileServiceClient>
      get serviceClient async =>
          _serviceClient ??= CreateSpaceKnowledgeDomainFileServiceClient(
              await KnowledgeCommonChannel.knowledgeChannel);

  void dispose() {
    print("CreateSpaceKnowledgeDomainFileService:dispose");
  }
}
