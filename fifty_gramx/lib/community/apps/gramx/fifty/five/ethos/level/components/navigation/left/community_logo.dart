import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CommunityLogo extends StatelessWidget {
  /**
   * Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          "50GRAMx",
          style: TextStyle(
            fontSize: 56,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            color: AppColors.contentPrimary(context),
          ),
        ),
      ),
   */
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 32, top: 18, right: 24),
        child: NeumorphicText(
          "evo",
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundPrimary(context),
            shape: NeumorphicShape.concave,
            color: AppColors.contentPrimary(context),
            depth: 2,
            disableDepth: false,
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundPrimary(context),
              width: 0.3,
            ),
          ),
          textAlign: TextAlign.left,
          textStyle: NeumorphicTextStyle(
              fontSize: 32,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
              height: 1.25),
        ),
      ),
    );
  }
}
