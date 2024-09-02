import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// Configuration class for the How Helps section
class HowHelpsSectionConfig {
  final String headline;
  final List<String> points;
  final String visual;

  HowHelpsSectionConfig({
    required this.headline,
    required this.points,
    required this.visual,
  });

  // Method to build the How Helps section widget
  Widget buildHowHelpsSection(BuildContext context) {
    return Neumorphic(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              headline,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: AppColors.contentPrimary(context),
              ),
            ),
            SizedBox(height: 20),
            ...points.map((point) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.check_circle,
                          color: AppColors.contentPrimary(context), size: 20),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          point,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: AppColors.contentSecondary(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            SizedBox(height: 20),
            Image.asset(
              visual,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
