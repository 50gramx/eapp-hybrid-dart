import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/IconButton/DomainSpaceIconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class KnowledgeIconButton implements DomainSpaceIconButton {
  final SpaceKnowledgeDomain spaceKnowledgeDomain;

  KnowledgeIconButton(this.spaceKnowledgeDomain);

  @override
  Widget buildKnowledgeDomainSpaceIconButton(BuildContext context) =>
      SizedBox();

  @override
  Widget buildProductDomainSpaceIconButton(BuildContext context) => SizedBox();

  @override
  Widget buildServiceDomainSpaceIconButton(BuildContext context) {
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
}
