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
import 'package:eapp_dart_domain/ethos/elint/collars/DC499999994_caps.pbgrpc.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/spaceKnowledgeData.dart';
import 'package:fifty_gramx/services/product/product/domain/accessSpaceProductDomainService.dart';
import 'package:fifty_gramx/services/product/product/space/discoverSpaceProductService.dart';

class DC499999994EPME5000Capabilities {
  // Client declarations here
  static DC499999994EPME5000CapabilitiesClient? _capsClient;

  DC499999994EPME5000Capabilities._();

  // getting the client on the very first call
  static Future<DC499999994EPME5000CapabilitiesClient> get capsClient async =>
      _capsClient ??= DC499999994EPME5000CapabilitiesClient(
          await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  void dispose() {
    print("DC499999994EPME5000Capabilities:dispose");
  }

  // Service declarations here
  static Future<ResponseMeta> create(
      String domainId, SkincareProduct sp) async {
    print("DC499999994EPME5000Capabilities:list");
    var spaceProductDomain =
        (await DiscoverSpaceProductService.getSpaceProductDomainById(domainId))
            .spaceProductDomain;
    print("DC499999994EPME5000Capabilities:list, getting auth");
    var auth =
        (await AccessSpaceProductDomainService.spaceProductDomainAccessToken(
                spaceProductDomain))
            .spaceProductDomainServicesAccessAuthDetails;
    print(
        "DC499999994EPME5000Capabilities:create, sk access, ${await SpaceKnowledgeData().readSpaceKnowledgeServicesAccessAuthDetails()}");
    var req = AuthWithSkincareProduct(
        spdAuth: auth,
        skincareProduct: sp,
        skAuth: await SpaceKnowledgeData()
            .readSpaceKnowledgeServicesAccessAuthDetails());
    var response = await (await capsClient).create(req);
    return response;
  }

  static Future<List<DC499999994>> list(String domainId) async {
    print("DC499999994EPME5000Capabilities:list");
    var spaceProductDomain =
        (await DiscoverSpaceProductService.getSpaceProductDomainById(domainId))
            .spaceProductDomain;
    print("DC499999994EPME5000Capabilities:list, getting auth");
    var auth =
        (await AccessSpaceProductDomainService.spaceProductDomainAccessToken(
                spaceProductDomain))
            .spaceProductDomainServicesAccessAuthDetails;
    print("DC499999994EPME5000Capabilities:list, got auth");
    var response = await (await capsClient).list(auth);
    var c = response.collars;
    // print("DC499999994EPME5000Capabilities:list, got collars, ${c}");
    return c;
  }

  static Future<DC499999994> get(String domainId, String collarId) async {
    print("DC499999994EPME5000Capabilities:get");
    var spaceProductDomain =
        (await DiscoverSpaceProductService.getSpaceProductDomainById(domainId))
            .spaceProductDomain;
    print("DC499999994EPME5000Capabilities:get, getting auth");
    var auth =
        (await AccessSpaceProductDomainService.spaceProductDomainAccessToken(
                spaceProductDomain))
            .spaceProductDomainServicesAccessAuthDetails;
    var req = SPDAuthWithCollarID(
        auth: auth,
        collarId: collarId,
        skAuth: await SpaceKnowledgeData()
            .readSpaceKnowledgeServicesAccessAuthDetails());
    var response = await (await capsClient).get(req);
    var d = response;
    print("DC499999994EPME5000Capabilities:get, got deployment, ${d}");
    return d;
  }
}
