import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeuSliderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.backgroundPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
          width: 2,
        ),
      ),
      child: NeumorphicSlider(height: 24, min: 10, max: 100),
    );
  }
}
