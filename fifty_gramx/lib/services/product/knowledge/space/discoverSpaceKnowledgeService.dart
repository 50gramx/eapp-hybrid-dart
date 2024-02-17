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

import 'package:eapp_dart_domain/ethos/elint/services/product/knowledge/space_knowledge/discover_space_knowledge.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/spaceKnowledgeData.dart';

class DiscoverSpaceKnowledgeService {
  // Client declarations here
  static DiscoverSpaceKnowledgeServiceClient? _serviceClient;

  DiscoverSpaceKnowledgeService._();

  // getting the client on the very first call
  static Future<DiscoverSpaceKnowledgeServiceClient> get serviceClient async =>
      _serviceClient ??= DiscoverSpaceKnowledgeServiceClient(
          await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  void dispose() {
    print("DiscoverSpaceKnowledgeService:dispose");
  }

  // Service declarations here
  static Future<GetSpaceKnowledgeDomainsResponse>
      getSpaceKnowledgeDomains() async {
    var request = await SpaceKnowledgeData()
        .readSpaceKnowledgeServicesAccessAuthDetails();
    return await (await serviceClient).getSpaceKnowledgeDomains(request);
  }
}
