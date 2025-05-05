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

import 'package:eapp_dart_domain/ethos/elint/entities/space_product_domain.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/product/space_product_domain/access_space_product_domain.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/spaceProductData.dart';

class AccessSpaceProductDomainService {
  // Client declarations here
  static AccessSpaceProductDomainServiceClient? _serviceClient;

  AccessSpaceProductDomainService._();

  // getting the client on the very first call
  static Future<AccessSpaceProductDomainServiceClient>
      get serviceClient async =>
          _serviceClient ??= AccessSpaceProductDomainServiceClient(
              await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  void dispose() {
    print("AccessSpaceProductDomainService:dispose");
  }

  // Service declarations here
  static Future<SpaceProductDomainAccessTokenResponse>
      spaceProductDomainAccessToken(
          SpaceProductDomain spaceProductDomain) async {
    var request = SpaceProductDomainAccessTokenRequest()
      ..spaceProductServicesAccessAuthDetails =
          await SpaceProductData().readSpaceProductServicesAccessAuthDetails()
      ..spaceProductDomain = spaceProductDomain;
    return await (await serviceClient).spaceProductDomainAccessToken(request);
  }
}
