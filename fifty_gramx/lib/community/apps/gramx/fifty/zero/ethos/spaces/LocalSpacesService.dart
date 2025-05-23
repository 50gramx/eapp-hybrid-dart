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

import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/space_product_domain.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/space_service_domain.pb.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:fifty_gramx/services/product/knowledge/space/discoverSpaceKnowledgeService.dart';
import 'package:fifty_gramx/services/product/product/space/discoverSpaceProductService.dart';
import 'package:fifty_gramx/services/product/service/space/discoverSpaceServiceService.dart';

class LocalSpacesService {
  LocalSpacesService._();

  static List<SpaceKnowledgeDomain> mySpaceKnowledgeDomains = [];
  static List<SpaceServiceDomain> mySpaceServiceDomains = [];
  static List<SpaceProductDomain> mySpaceProductDomains = [];

  void dispose() {}

  static getMySpaceKnowledgeDomains() async {
    var getSpaceKnowledgeDomainsResponse =
        await DiscoverSpaceKnowledgeService.getSpaceKnowledgeDomains();
    mySpaceKnowledgeDomains =
        getSpaceKnowledgeDomainsResponse.spaceKnowledgeDomains;
    for (int index = 0; index < mySpaceKnowledgeDomains.length; index++) {
      notifyAddedSpaceKnowledgeDomain(index);
    }
  }

  static getMySpaceServiceDomains() async {
    var getSpaceServiceDomainsResponse =
        await DiscoverSpaceServiceService.getSpaceServiceDomains();
    mySpaceServiceDomains = getSpaceServiceDomainsResponse.spaceServiceDomains;
    for (int index = 0; index < mySpaceServiceDomains.length; index++) {
      notifyAddedSpaceServiceDomain(index);
    }
  }

  static getMySpaceProductDomains() async {
    var getSpaceProductDomainsResponse =
        await DiscoverSpaceProductService.getSpaceProductDomains();
    mySpaceProductDomains = getSpaceProductDomainsResponse.spaceProductDomains;
    print("mySpaceProductDomains: ${mySpaceProductDomains}");
    for (int index = 0; index < mySpaceProductDomains.length; index++) {
      notifyAddedSpaceProductDomain(index);
    }
  }

  static notifyAddedSpaceKnowledgeDomain(int index) {
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalSpacesService",
        {"subType": "AddedSpaceKnowledgeDomain", "at": index}));
  }

  static notifyAddedSpaceServiceDomain(int index) {
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalSpacesService",
        {"subType": "AddedSpaceServiceDomain", "at": index}));
  }

  static notifyAddedSpaceProductDomain(int index) {
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalSpacesService",
        {"subType": "AddedSpaceProductDomain", "at": index}));
  }
}
