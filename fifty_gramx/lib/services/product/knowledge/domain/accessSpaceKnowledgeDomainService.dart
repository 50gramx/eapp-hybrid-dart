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
