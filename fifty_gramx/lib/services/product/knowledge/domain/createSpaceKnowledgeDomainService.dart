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

import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/knowledge/space_knowledge_domain/create_space_knowledge_domain.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/spaceKnowledgeData.dart';

class CreateSpaceKnowledgeDomainService {
  // Client declarations here
  static CreateSpaceKnowledgeDomainServiceClient? _serviceClient;

  CreateSpaceKnowledgeDomainService._();

  // getting the client on the very first call
  static Future<CreateSpaceKnowledgeDomainServiceClient>
      get serviceClient async =>
          _serviceClient ??= CreateSpaceKnowledgeDomainServiceClient(
              await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

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
