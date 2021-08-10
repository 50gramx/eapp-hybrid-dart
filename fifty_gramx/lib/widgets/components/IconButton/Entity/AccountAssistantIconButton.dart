import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/widgets/components/IconButton/ConnectedEntityIconButton.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AccountAssistantIconButton implements ConnectedEntityIconButton {
  final AccountAssistant connectedAccountAssistant;

  AccountAssistantIconButton(this.connectedAccountAssistant);

  @override
  Widget buildConnectedContactIconButton(BuildContext context) => SizedBox();

  @override
  Widget buildConnectedAccountIconButton(BuildContext context) => SizedBox();


  @override
  Widget buildConnectedAccountAssistantIconButton(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        color: AppColors.backgroundPrimary(context),
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        border: NeumorphicBorder(
            color: AppColors.backgroundPrimary(context), width: 0.5),
        boxShape:
        NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
      ),
      padding: const EdgeInsets.all(1),
      child: NeumorphicButton(
        provideHapticFeedback: true,
        onPressed: () {
          print("entity toggle pressed");
        },
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          shape: NeumorphicShape.convex,
          boxShape:
          NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: AppColors.backgroundPrimary(context),
        ),
        padding: const EdgeInsets.all(2),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: AppColors.backgroundPrimary(context),
          child: NeumorphicText(
            "${connectedAccountAssistant.accountAssistantNameCode < 10 ? "0${connectedAccountAssistant.accountAssistantNameCode}" : "${connectedAccountAssistant.accountAssistantNameCode}"}",
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
          ),
        ),
      ),
    );
  }

  @override
  Widget buildConnectedAccountMetaIconButton(BuildContext context) =>
      SizedBox();

  @override
  Widget buildConnectedOrganizationIconButton(BuildContext context) =>
      SizedBox();
}
