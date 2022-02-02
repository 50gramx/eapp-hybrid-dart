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
import 'package:fifty_gramx/data/spaceData.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge/access_space_knowledge.pbgrpc.dart';

class AccessSpaceKnowledgeService {
  // Client declarations here
  static AccessSpaceKnowledgeServiceClient? _serviceClient;

  AccessSpaceKnowledgeService._();

  // getting the client on the very first call
  static Future<AccessSpaceKnowledgeServiceClient> get serviceClient async =>
      _serviceClient ??= AccessSpaceKnowledgeServiceClient(
          await KnowledgeCommonChannel.knowledgeChannel);

  void dispose() {
    print("AccessSpaceKnowledgeService:dispose");
  }

  // Service declarations here
  static Future<SpaceKnowledgeAccessTokenResponse>
      spaceKnowledgeAccessToken() async {
    var request = await SpaceData().readSpaceServicesAccessAuthDetails();
    return await (await serviceClient).spaceKnowledgeAccessToken(request);
  }

  static Future<ValidateSpaceKnowledgeServicesResponse>
      validateSpaceKnowledgeServices(
          SpaceKnowledgeServicesAccessAuthDetails
              spaceKnowledgeServicesAccessAuthDetails) async {
    return await (await serviceClient).validateSpaceKnowledgeServices(
        spaceKnowledgeServicesAccessAuthDetails);
  }
}
