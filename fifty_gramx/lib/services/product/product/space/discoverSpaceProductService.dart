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

import 'package:eapp_dart_domain/ethos/elint/services/product/product/space_product/discover_space_product.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/spaceProductData.dart';

class DiscoverSpaceProductService {
  // Client declarations here
  static DiscoverSpaceProductServiceClient? _serviceClient;

  DiscoverSpaceProductService._();

  // getting the client on the very first call
  static Future<DiscoverSpaceProductServiceClient> get serviceClient async =>
      _serviceClient ??= DiscoverSpaceProductServiceClient(
          await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  void dispose() {}

  // Service declarations here
  static Future<GetSpaceProductDomainsResponse> getSpaceProductDomains() async {
    var request =
        await SpaceProductData().readSpaceProductServicesAccessAuthDetails();
    return await (await serviceClient).getSpaceProductDomains(request);
  }

  static Future<GetSpaceProductDomainByIdResponse> getSpaceProductDomainById(
      String domainId) async {
    var auth =
        await SpaceProductData().readSpaceProductServicesAccessAuthDetails();
    var request = GetSpaceProductDomainByIdRequest(
        accessAuth: auth, spaceProductDomainId: domainId);
    return await (await serviceClient).getSpaceProductDomainById(request);
  }
}
