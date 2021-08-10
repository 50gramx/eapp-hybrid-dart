import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SecondaryActionNeuButton extends StatelessWidget {
  @override
  const SecondaryActionNeuButton({Key? key, required this.buttonTitle})
      : super(key: key);

  final String buttonTitle;

  Widget build(BuildContext context) {
    return NeumorphicButton(
        provideHapticFeedback: true,
        onPressed: () {},
        style: NeumorphicStyle(
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: AppColors.baseColor(context),
        ),
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.all(4.0),
        child: Text(
          buttonTitle,
          style: AppTextStyle.themeSecondaryButtonTextStyle(context),
        ));
  }
}
