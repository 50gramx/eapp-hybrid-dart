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

import 'package:eapp_dart_domain/ethos/elint/collars/DC499999994.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/generic.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/product/space_product_domain/create_space_product_domain.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/spaceProductData.dart';

class CreateSpaceProductDomainService {
  // Client declarations here
  static CreateSpaceProductDomainServiceClient? _serviceClient;

  CreateSpaceProductDomainService._();

  // getting the client on the very first call
  static Future<CreateSpaceProductDomainServiceClient>
      get serviceClient async =>
          _serviceClient ??= CreateSpaceProductDomainServiceClient(
              await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  void dispose() {
    print("CreateSpaceProductDomainService:dispose");
  }

  // Service declarations here
  static Future<ResponseMeta> createDC499999994SPD(
    String name,
    String description,
    bool isIsolated,
  ) async {
    var auth =
        await SpaceProductData().readSpaceProductServicesAccessAuthDetails();
    var collar = DC499999994();
    var request = CreateDC499999994SPDRequest()
      ..auth = auth
      ..name = name
      ..description = description
      ..isIsolated = isIsolated
      ..dc499999994 = collar;
    return await (await serviceClient).createDC499999994(request);
  }
}
