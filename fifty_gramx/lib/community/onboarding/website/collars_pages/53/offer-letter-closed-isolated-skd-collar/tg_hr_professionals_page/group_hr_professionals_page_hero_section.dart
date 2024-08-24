import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildVinayak53GRAMxGroupHRProfessionalsPageHeroSection(
    BuildContext context) {
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
        disableDepth: true),
    child: Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 16),
        color: Colors.blue[200], // Customize color as needed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome HR Professionals!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Make Hiring Easier with Vinayak',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Efficiently analyze offer letters and streamline your hiring process with Vinayak. Save time, reduce errors, and make better hiring decisions.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );
}
