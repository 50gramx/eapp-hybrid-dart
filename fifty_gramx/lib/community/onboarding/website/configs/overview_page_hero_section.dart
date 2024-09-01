import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HeroSectionConfig {
  final String title;
  final String subtitle;
  final String backgroundImage;
  final String buttonText;
  final VoidCallback buttonAction;

  HeroSectionConfig({
    required this.title,
    required this.subtitle,
    required this.backgroundImage,
    required this.buttonText,
    required this.buttonAction,
  });

  // Method to build the hero section widget
  Widget buildHeroSection(BuildContext context) {
    Widget defaultVariant = Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
        color: AppColors.backgroundPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
          width: 2,
        ),
        disableDepth: true,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: AppColors.contentPrimary(context),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 16.0,
                color: AppColors.contentSecondary(context),
              ),
            ),
            SizedBox(height: 20.0),
            NeumorphicButton(
              onPressed: () async {
                buttonAction();
              },
              style: NeumorphicStyle(
                color: AppColors.contentPrimary(context),
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                buttonText,
                style: TextStyle(
                  color: AppColors.contentInversePrimary(context),
                  fontSize: 16.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
    return defaultVariant;
  }
}
