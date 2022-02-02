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

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/widgets/components/IconButton/DomainSpaceIconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class KnowledgeIconButton implements DomainSpaceIconButton {
  final SpaceKnowledgeDomain spaceKnowledgeDomain;

  KnowledgeIconButton(this.spaceKnowledgeDomain);

  @override
  Widget buildKnowledgeDomainSpaceIconButton(BuildContext context) =>
      SizedBox();

  @override
  Widget buildProductDomainSpaceIconButton(BuildContext context) {
    return IconButton(
      icon: Icon(
        // TODO: Implement Space Admin Picture with this icon
        FeatherIcons.user,
        size: 16,
      ),
      color: AppColors.lightNeuSecondary,
      onPressed: () {},
    );
  }

  @override
  Widget buildServiceDomainSpaceIconButton(BuildContext context) => SizedBox();
}
