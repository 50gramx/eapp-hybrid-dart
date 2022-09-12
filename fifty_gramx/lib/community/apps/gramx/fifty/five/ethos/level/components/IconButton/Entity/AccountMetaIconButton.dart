import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/IconButton/ConnectedEntityIconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class AccountMetaIconButton implements ConnectedEntityIconButton {
  final AccountMeta connectedAccountMeta;

  AccountMetaIconButton(this.connectedAccountMeta);

  @override
  Widget buildConnectedContactIconButton(BuildContext context) => SizedBox();


  @override
  Widget buildConnectedAccountIconButton(BuildContext context) => SizedBox();

  @override
  Widget buildConnectedAccountMetaIconButton(BuildContext context) {
    return IconButton(
      icon: Icon(
        // TODO: Implement Account Picture with this icon
        FeatherIcons.user,
        size: 16,
      ),
      color: AppColors.lightNeuSecondary,
      onPressed: () {},
    );
  }


  @override
  Widget buildConnectedAccountAssistantIconButton(BuildContext context) =>
      SizedBox();


  @override
  Widget buildConnectedOrganisationIconButton(BuildContext context) =>
      SizedBox();
}
