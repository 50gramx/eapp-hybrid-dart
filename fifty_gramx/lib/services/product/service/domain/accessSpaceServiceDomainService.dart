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

import 'package:eapp_dart_domain/ethos/elint/entities/space_service_domain.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/service/space_service_domain/access_space_service_domain.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/spaceServiceData.dart';

class AccessSpaceServiceDomainService {
  // Client declarations here
  static AccessSpaceServiceDomainServiceClient? _serviceClient;

  AccessSpaceServiceDomainService._();

  // getting the client on the very first call
  static Future<AccessSpaceServiceDomainServiceClient>
      get serviceClient async =>
          _serviceClient ??= AccessSpaceServiceDomainServiceClient(
              await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  void dispose() {
    print("AccessSpaceServiceDomainService:dispose");
  }

  // Service declarations here
  static Future<SpaceServiceDomainAccessTokenResponse>
      spaceServiceDomainAccessToken(
          SpaceServiceDomain spaceServiceDomain) async {
    var request = SpaceServiceDomainAccessTokenRequest()
      ..spaceServiceServicesAccessAuthDetails =
          await SpaceServiceData().readSpaceServiceServicesAccessAuthDetails()
      ..spaceServiceDomain = spaceServiceDomain;
    return await (await serviceClient).spaceServiceDomainAccessToken(request);
  }
}
