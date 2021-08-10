import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/components/Container/NeuContainer.dart';
import 'package:fifty_gramx/widgets/components/Text/Title/listItemDisabledText.dart';
import 'package:fifty_gramx/widgets/components/Text/Title/listItemTitleText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SelectorConfigurationItem extends StatelessWidget {

  final String titleText;
  final String subtitleText;
  final VoidCallback selectorCallback;

  const SelectorConfigurationItem({Key? key, required this.titleText, required this.subtitleText, required this.selectorCallback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: ListItemTitleTextWidget(titleText: titleText, disableNeu: true, fontSize: 18, fontWeight: FontWeight.w500,)),
            ListItemSubtitleTextWidget(subtitleText: subtitleText, disableNeu: true, fontSize: 18, fontWeight: FontWeight.w500,),
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: CircleAvatar(
                radius: 12,
                child: Icon(
                  FeatherIcons.chevronRight,
                  size: 20,
                  color: AppColors.contentPrimary(context),
                ),
                backgroundColor: AppColors.backgroundPrimary(context),
              ),
            ),
          ],
        ),
      onPressed: () {
        selectorCallback();
      },

    );
  }

}