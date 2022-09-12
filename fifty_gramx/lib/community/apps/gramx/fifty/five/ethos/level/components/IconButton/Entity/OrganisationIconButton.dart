import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/organisation.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/IconButton/ConnectedEntityIconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class OrganisationIconButton implements ConnectedEntityIconButton {
  final Organisation connectedOrganization;

  OrganisationIconButton(this.connectedOrganization);

  @override
  Widget buildConnectedContactIconButton(BuildContext context) => SizedBox();

  @override
  Widget buildConnectedAccountIconButton(BuildContext context) => SizedBox();

  @override
  Widget buildConnectedAccountMetaIconButton(BuildContext context) =>
      SizedBox();

  @override
  Widget buildConnectedAccountAssistantIconButton(BuildContext context) =>
      SizedBox();

  @override
  Widget buildConnectedOrganisationIconButton(BuildContext context) {
    return IconButton(
      icon: Icon(
        // TODO: Implement Organization Picture with this icon
        FeatherIcons.user,
        size: 16,
      ),
      color: AppColors.lightNeuSecondary,
      onPressed: () {},
    );
  }
}
