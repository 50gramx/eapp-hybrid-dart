/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

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
