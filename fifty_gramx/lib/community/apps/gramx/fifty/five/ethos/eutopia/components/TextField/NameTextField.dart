import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NameTextField extends StatelessWidget {
  @override
  const NameTextField(
      {Key? key,
      required this.hintText,
      required this.nameTextFieldController,
      this.isTextFieldEnabled = true,
      this.isTwoLines = false,
      this.isThreeLines = false})
      : super(key: key);

  final hintText;
  final TextEditingController nameTextFieldController;
  final bool isTextFieldEnabled;
  final bool isTwoLines;
  final bool isThreeLines;

  Widget build(BuildContext context) {
    return Neumorphic(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: isThreeLines
          ? EdgeInsets.symmetric(vertical: 8)
          : (isTwoLines ? EdgeInsets.symmetric(vertical: 8) : EdgeInsets.zero),
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
        maxLines: isThreeLines ? 3 : (isTwoLines ? 2 : 1),
        keyboardType: TextInputType.name,
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
