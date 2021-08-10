import 'package:contacts_service/contacts_service.dart';
import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/widgets/components/Text/Entity/AbstractEntityAssistantText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AccountContactText implements AbstractEntityAssistantText {
  final Contact contact;

  AccountContactText(this.contact);

  @override
  Widget buildAccountContactTitleText(BuildContext context) {
    return Row(
      children: [
        NeumorphicText(
          contact.displayName != null ? contact.displayName! : contact.givenName!,
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
  Widget buildAccountContactSubtitleText(BuildContext context) {
    return NeumorphicText(
      "",
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
  Widget buildAccountAssistantTitleText(BuildContext context) => SizedBox();

  @override
  Widget buildAccountAssistantSubtitleText(BuildContext context) =>
      SizedBox();

  @override
  Widget buildAccountMetaAssistantTitleText(BuildContext context) => SizedBox();

  @override
  Widget buildAccountMetaAssistantSubtitleText(BuildContext context) =>
      SizedBox();
}
