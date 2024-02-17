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
import 'package:eapp_dart_domain/ethos/elint/services/product/knowledge/space_knowledge_domain/discover_space_knowledge_domain.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/services/product/knowledge/domain/accessSpaceKnowledgeDomainService.dart';

class DiscoverSpaceKnowledgeDomainService {
  // Client declarations here
  static DiscoverSpaceKnowledgeDomainServiceClient? _serviceClient;

  DiscoverSpaceKnowledgeDomainService._();

  // getting the client on the very first call
  static Future<DiscoverSpaceKnowledgeDomainServiceClient>
      get serviceClient async =>
          _serviceClient ??= DiscoverSpaceKnowledgeDomainServiceClient(
              await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

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
