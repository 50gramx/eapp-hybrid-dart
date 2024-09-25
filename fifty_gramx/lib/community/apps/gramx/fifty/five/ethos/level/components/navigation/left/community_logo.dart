import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CommunityLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        padding: EdgeInsets.only(top: 8),
        child: NeumorphicText(
          "Ethosverse",
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(
                topRight: Radius.circular(24),
                bottomRight: Radius.circular(24))),
            color: AppColors.backgroundSecondary(context),
            depth: 2,
            disableDepth: false,
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundInverseTertiary(context),
              width: 0.3,
            ),
          ),
          textAlign: TextAlign.left,
          textStyle: NeumorphicTextStyle(
              fontSize: 18,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w800,
              height: 1.25),
        ),
      ),
    );
  }
}
