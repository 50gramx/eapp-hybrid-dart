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
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/widgets/components/Text/Entity/AbstractEntityAssistantText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AccountAssistantText implements AbstractEntityAssistantText {
  final Account connectedAccount;
  final AccountAssistant connectedAccountAssistant;

  AccountAssistantText(this.connectedAccountAssistant, this.connectedAccount);


  @override
  Widget buildAccountContactTitleText(BuildContext context) => SizedBox();

  @override
  Widget buildAccountContactSubtitleText(BuildContext context) =>
      SizedBox();

  @override
  Widget buildAccountAssistantTitleText(BuildContext context) {
    return Row(
      children: [
        NeumorphicText(
          connectedAccountAssistant.accountAssistantName,
          style: NeumorphicStyle(
            color: AppColors.contentPrimary(context),
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            border: NeumorphicBorder(
                color: AppColors.backgroundPrimary(context), width: 1),
          ),
          textAlign: TextAlign.start,
          textStyle: NeumorphicTextStyle(
              fontFamily: "Montserrat",
              fontSize: 16,
              fontWeight: FontWeight.w800,
              height: 1.25),
        ),
      ],
    );
  }

  @override
  Widget buildAccountAssistantSubtitleText(BuildContext context) {
    return NeumorphicText(
      "${connectedAccount.accountFirstName} "
          "${connectedAccount.accountLastName}",
      style: NeumorphicStyle(
        color: AppColors.contentTertiary(context),
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        border: NeumorphicBorder(
            color: AppColors.backgroundPrimary(context), width: 1),
      ),
      textAlign: TextAlign.start,
      textStyle: NeumorphicTextStyle(
          fontFamily: "Montserrat",
          fontSize: 14,
          fontWeight: FontWeight.w800,
          height: 1.42857143),
    );
  }

  @override
  Widget buildAccountMetaAssistantTitleText(BuildContext context) => SizedBox();

  @override
  Widget buildAccountMetaAssistantSubtitleText(BuildContext context) =>
      SizedBox();
}
