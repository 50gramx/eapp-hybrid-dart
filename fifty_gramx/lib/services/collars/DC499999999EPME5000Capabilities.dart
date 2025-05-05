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

import 'package:eapp_dart_domain/ethos/elint/collars/DC499999999.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/collars/DC499999999_caps.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/services/product/service/domain/accessSpaceServiceDomainService.dart';
import 'package:fifty_gramx/services/product/service/space/discoverSpaceServiceService.dart';

class DC499999999EPME5000Capabilities {
  // Client declarations here
  static DC499999999EPME5000CapabilitiesClient? _capsClient;

  DC499999999EPME5000Capabilities._();

  // getting the client on the very first call
  static Future<DC499999999EPME5000CapabilitiesClient> get capsClient async =>
      _capsClient ??= DC499999999EPME5000CapabilitiesClient(
          await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  void dispose() {
    print("DC499999999EPME5000Capabilities:dispose");
  }

  // Service declarations here
  static Future<List<DC499999999>> list(String domainId) async {
    print("DC499999999EPME5000Capabilities:list");
    var spaceServiceDomain =
        (await DiscoverSpaceServiceService.getSpaceServiceDomainById(domainId))
            .spaceServiceDomain;
    print("DC499999999EPME5000Capabilities:list, getting auth");
    var auth =
        (await AccessSpaceServiceDomainService.spaceServiceDomainAccessToken(
                spaceServiceDomain))
            .spaceServiceDomainServicesAccessAuthDetails;
    print("DC499999999EPME5000Capabilities:list, got auth");
    var response = await (await capsClient).list(auth);
    var c = response.collars;
    // print("DC499999999EPME5000Capabilities:list, got collars, ${c}");
    return c;
  }

  static Future<Deployment> get(String domainId, String collarId) async {
    print("DC499999999EPME5000Capabilities:get");
    var spaceServiceDomain =
        (await DiscoverSpaceServiceService.getSpaceServiceDomainById(domainId))
            .spaceServiceDomain;
    print("DC499999999EPME5000Capabilities:get, getting auth");
    var auth =
        (await AccessSpaceServiceDomainService.spaceServiceDomainAccessToken(
                spaceServiceDomain))
            .spaceServiceDomainServicesAccessAuthDetails;
    var req = SSDAuthWithCollarID(auth: auth, collarId: collarId);
    var response = await (await capsClient).get(req);
    var d = response;
    print("DC499999999EPME5000Capabilities:get, got deployment, ${d}");
    return d;
  }
}
