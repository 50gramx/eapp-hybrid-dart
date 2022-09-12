import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeuToggleIconButtonContainer {
  final IconData iconButtonData;

  NeuToggleIconButtonContainer(this.iconButtonData);

  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        disableDepth: false,
        boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(24)),
        color: AppColors.backgroundSecondary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundSecondary(context),
          width: 2,
        ),
      ),
      margin: EdgeInsets.only(right: 8, left: 8),
      child: CircleAvatar(
        backgroundColor: AppColors.backgroundSecondary(context),
        child: Icon(iconButtonData, color: AppColors.contentPrimary(context), size: 18,),
        radius: 16,
      ),
    );
  }
}
