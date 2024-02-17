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

import 'package:eapp_dart_domain/ethos/elint/services/product/identity/space/access_space.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/accountData.dart';

class AccessSpaceService {
  // Client declarations here
  static AccessSpaceServiceClient? _serviceClient;

  AccessSpaceService._();

  // getting the client on the very first call
  static Future<AccessSpaceServiceClient> get serviceClient async =>
      _serviceClient ??= AccessSpaceServiceClient(
          await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  void dispose() {
    print("AccessSpaceService:dispose");
  }

  // Service declarations here
  static Future<SpaceAccessTokenResponse> spaceAccessToken() async {
    var request = await AccountData().readAccountServicesAccessAuthDetails();
    return await (await serviceClient).spaceAccessToken(request);
  }

  static Future<ValidateSpaceServicesResponse> validateSpaceServices(
      SpaceServicesAccessAuthDetails spaceServicesAccessAuthDetails) async {
    return await (await serviceClient)
        .validateSpaceServices(spaceServicesAccessAuthDetails);
  }
}
