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

import 'package:eapp_dart_domain/ethos/elint/collars/DC499999998.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/collars/DC499999999.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/generic.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/service/space_service_domain/create_space_service_domain.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/spaceServiceData.dart';

class CreateSpaceServiceDomainService {
  // Client declarations here
  static CreateSpaceServiceDomainServiceClient? _serviceClient;

  CreateSpaceServiceDomainService._();

  // getting the client on the very first call
  static Future<CreateSpaceServiceDomainServiceClient>
      get serviceClient async =>
          _serviceClient ??= CreateSpaceServiceDomainServiceClient(
              await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  void dispose() {
    print("CreateSpaceServiceDomainService:dispose");
  }

  // Service declarations here
  static Future<ResponseMeta> createDC499999998SSD(
    String name,
    String description,
    bool isIsolated,
  ) async {
    var auth =
        await SpaceServiceData().readSpaceServiceServicesAccessAuthDetails();
    var collar = DC499999998();
    var request = CreateDC499999998SSDRequest()
      ..auth = auth
      ..name = name
      ..description = description
      ..isIsolated = isIsolated
      ..dc499999998 = collar;
    return await (await serviceClient).createDC499999998(request);
  }

  // Service declarations here
  static Future<ResponseMeta> createDC499999999SpaceServiceDomain(
    String name,
    String description,
    bool isIsolated,
    Deployment deployment,
  ) async {
    var auth =
        await SpaceServiceData().readSpaceServiceServicesAccessAuthDetails();
    var collar = DC499999999(deployment: deployment);
    var request = CreateDC499999999SSDRequest()
      ..auth = auth
      ..name = name
      ..description = description
      ..isIsolated = isIsolated
      ..dc499999999 = collar;
    return await (await serviceClient).createDC499999999(request);
  }
}
