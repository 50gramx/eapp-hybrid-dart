import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/cta_button.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/cube_widget.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildCTAButton(BuildContext context, bool signedIn) {
  return Align(
    alignment: Alignment.center,
    child: NeumorphicButton(
      provideHapticFeedback: true,
      onPressed: () {
        // getStartedButtonOnPressed(context, signedIn);
      },
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.contentPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
          width: 2,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.handshake_outlined,
            color: AppColors.contentInversePrimary(context),
            size: 24.0,
          ),
          SizedBox(width: 10), // Space between icon and text
          SizedBox(width: 10), // Space between image and text
          Text(
            "Rent Now",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.contentInversePrimary(context),
              fontSize: 24,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildSubCTAButton(BuildContext context, bool signedIn) {
  return Align(
    alignment: Alignment.center,
    child: NeumorphicButton(
      provideHapticFeedback: true,
      onPressed: () {
        // getStartedButtonOnPressed(context, signedIn);
      },
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.contentPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
          width: 2,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            FeatherIcons.dollarSign,
            color: AppColors.contentInversePrimary(context),
            size: 24.0,
          ),
          SizedBox(width: 10), // Space between icon and text
          Text(
            "Earn Now",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.contentInversePrimary(context),
              fontSize: 24,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildTitleText(BuildContext context) {
  return Text(
    "Unlock the Power of GPU with 50GRAMX",
    textAlign: TextAlign.start,
    style: TextStyle(
        color: AppColors.contentPrimary(context),
        fontSize: 36,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w700),
  );
}

Widget buildTaglineText(BuildContext context) {
  // WebsiteContent().taglineText,
  return Text(
    """Rent and Earn with High-Performance GPUs""",
    textAlign: TextAlign.start,
    style: TextStyle(
        color: AppColors.contentPrimary(context),
        fontSize: 18,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w300),
  );
}

Widget buildHomePageHeroSection(BuildContext context, bool signedIn) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 60.0, horizontal: 20.0),
    color: AppColors.backgroundPrimary(context),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        // Left side: Text and Call to Action
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildTitleText(context),
              SizedBox(height: 20.0),
              buildTaglineText(context),
              SizedBox(height: 40.0),
              Row(
                children: [
                  buildCTAButton(context, signedIn),
                  SizedBox(
                    height: 40.0,
                    width: 40.0,
                  ),
                  buildSubCTAButton(context, signedIn),
                ],
              ),
            ],
          ),
        ),
        // Right side: Image
        Visibility(
          visible: true,
          child: Expanded(
            flex: 1,
            child: CubeWidget(),
          ),
        )
      ],
    ),
  );
}

Widget buildImage(BuildContext context) {
  return Align(
    alignment: Alignment.centerRight,
    child: Image.asset(
      'lib/community/onboarding/website/home_page/assets/Designer-2.jpeg', // Update with your image asset path
      height: 400.0, // Adjust height as needed
      fit: BoxFit.contain,
    ),
  );
}
