import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Entity/AbstractEntityAssistantText.dart';
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
