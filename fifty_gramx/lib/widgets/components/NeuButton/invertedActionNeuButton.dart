import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class InvertedActionNeuButton extends StatelessWidget {
  @override
  const InvertedActionNeuButton({Key? key, required this.buttonTitle})
      : super(key: key);

  final String buttonTitle;

  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.baseColor(context),
          width: 2,
        ),
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
      ),
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.all(4.0),
      child: NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: () {},
          style: NeumorphicStyle(
            shape: NeumorphicShape.convex,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.textColor(context),
          ),
          padding: const EdgeInsets.all(12.0),
          child: Text(
            buttonTitle,
            style: AppTextStyle.themePrimaryButtonTextStyle(context),
          )),
    );
  }
}
