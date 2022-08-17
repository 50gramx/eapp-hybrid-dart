import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PasswordTextField extends StatelessWidget {
  @override
  const PasswordTextField({
    Key? key,
    required this.hintText,
    required this.nameTextFieldController,
    this.isTextFieldEnabled = true,
  }) : super(key: key);

  final hintText;
  final TextEditingController nameTextFieldController;
  final bool isTextFieldEnabled;

  Widget build(BuildContext context) {
    return Neumorphic(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.zero,
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
      ),
      child: TextField(
        maxLines: 1,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        enableSuggestions: false,
        autocorrect: false,
        enabled: isTextFieldEnabled,
        style: AppTextStyle.themeTitleTextStyle(context),
        controller: nameTextFieldController,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16),
          hintText: hintText,
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
