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

import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:fifty_gramx/services/product/knowledge/space/discoverSpaceKnowledgeService.dart';

class LocalSpacesService {
  LocalSpacesService._();

  static List<SpaceKnowledgeDomain> mySpaceKnowledgeDomains = [];

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

  static notifyAddedSpaceKnowledgeDomain(int index) {
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalSpacesService",
        {"subType": "AddedSpaceKnowledgeDomain", "at": index}));
  }
}
