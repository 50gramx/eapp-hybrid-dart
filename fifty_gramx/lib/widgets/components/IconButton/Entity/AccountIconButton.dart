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
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/widgets/components/IconButton/ConnectedEntityIconButton.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AccountIconButton implements ConnectedEntityIconButton {
  final Account connectedAccount;
  final AccountConnectedAccount accountConnectedAccount;
  final VoidCallback toggleAccountInterest;


  AccountIconButton(this.connectedAccount, this.accountConnectedAccount, this.toggleAccountInterest);


  @override
  Widget buildConnectedContactIconButton(BuildContext context) => SizedBox();



  String getInitials(String contactName) => contactName.isNotEmpty
      ? contactName.trim().split(' ').map((l) => l[0]).take(2).join()
      : '';

  IconData getConnectionStatus(AccountConnectedAccount connectedAccount) {
    if (connectedAccount.accountInterestedInConnection) {
      if (connectedAccount.connectedAccountInterestedInConnection) {
        return FeatherIcons.gitCommit;
      } else {
        return FeatherIcons.userMinus;
      }
    } else {
      if (connectedAccount.connectedAccountInterestedInConnection) {
        return FeatherIcons.userPlus;
      } else {
        return FeatherIcons.userCheck;
      }
    }
  }

  @override
  Widget buildConnectedAccountIconButton(BuildContext context) {

    var neuText = NeumorphicText(
      "",
      style: NeumorphicStyle(
        color: AppColors.contentPrimary(context),
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        border: NeumorphicBorder(
            color: AppColors.backgroundPrimary(context), width: 0.5),
      ),
      textAlign: TextAlign.start,
      textStyle: NeumorphicTextStyle(
          fontFamily: "Montserrat",
          fontSize: 18,
          fontWeight: FontWeight.w800,
          height: 1.25),
    );
    return NeumorphicButton(
      provideHapticFeedback: true,
      onPressed: () {
        toggleAccountInterest();
      },
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape:
        NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.backgroundPrimary(context),
      ),
      padding: const EdgeInsets.all(2),
      child: CircleAvatar(
        radius: 20,
        backgroundColor: AppColors.backgroundPrimary(context),
        child: Icon(
            getConnectionStatus(accountConnectedAccount),
          color: AppColors.contentPrimary(context),
          size: 16,
        ),
      ),
    );
  }

  @override
  Widget buildConnectedAccountAssistantIconButton(BuildContext context) =>
      SizedBox();

  @override
  Widget buildConnectedAccountMetaIconButton(BuildContext context) =>
      SizedBox();

  @override
  Widget buildConnectedOrganizationIconButton(BuildContext context) =>
      SizedBox();
}
