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

import 'package:eapp_dart_domain/ethos/elint/services/product/service/space_service/access_space_service.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/spaceData.dart';

class AccessSpaceServiceService {
  // Client declarations here
  static AccessSpaceServiceServiceClient? _serviceClient;

  AccessSpaceServiceService._();

  // getting the client on the very first call
  static Future<AccessSpaceServiceServiceClient> get serviceClient async =>
      _serviceClient ??= AccessSpaceServiceServiceClient(
          await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  void dispose() {}

  // Service declarations here
  static Future<SpaceServicesAccessTokenResponse>
      spaceServiceAccessToken() async {
    var request = await SpaceData().readSpaceServicesAccessAuthDetails();
    return await (await serviceClient).spaceServiceAccessToken(request);
  }

  static Future<ValidateSpaceServiceServicesResponse>
      validateSpaceServiceServices(
          SpaceServiceServicesAccessAuthDetails
              spaceServiceServicesAccessAuthDetails) async {
    return await (await serviceClient)
        .validateSpaceServiceServices(spaceServiceServicesAccessAuthDetails);
  }
}
