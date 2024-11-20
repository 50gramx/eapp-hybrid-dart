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

import 'package:eapp_dart_domain/ethos/elint/services/product/service/space_service/discover_space_service.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/spaceServiceData.dart';

class DiscoverSpaceServiceService {
  // Client declarations here
  static DiscoverSpaceServiceServiceClient? _serviceClient;

  DiscoverSpaceServiceService._();

  // getting the client on the very first call
  static Future<DiscoverSpaceServiceServiceClient> get serviceClient async =>
      _serviceClient ??= DiscoverSpaceServiceServiceClient(
          await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  void dispose() {}

  // Service declarations here
  static Future<GetSpaceServiceDomainsResponse> getSpaceServiceDomains() async {
    var request =
        await SpaceServiceData().readSpaceServiceServicesAccessAuthDetails();
    return await (await serviceClient).getSpaceServiceDomains(request);
  }

  static Future<GetSpaceServiceDomainByIdResponse> getSpaceServiceDomainById(
      String domainId) async {
    var auth =
        await SpaceServiceData().readSpaceServiceServicesAccessAuthDetails();
    var request = GetSpaceServiceDomainByIdRequest(
        accessAuth: auth, spaceServiceDomainId: domainId);
    return await (await serviceClient).getSpaceServiceDomainById(request);
  }
}
