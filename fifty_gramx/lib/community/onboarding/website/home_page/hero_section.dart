import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/cta_button.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildHomePageHeroSection(BuildContext context, bool signedIn) {
  return Container(
    height: 0.7 * MediaQuery.of(context).size.height,
    padding: EdgeInsets.only(bottom: 32),
    child: Align(
        alignment: Alignment.center,
        child: Neumorphic(
            style: NeumorphicStyle(
              lightSource: NeumorphicTheme.isUsingDark(context)
                  ? LightSource.bottomRight
                  : LightSource.topLeft,
              shadowLightColor: NeumorphicTheme.isUsingDark(context)
                  ? AppColors.gray600
                  : AppColors.backgroundSecondary(context),
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(
                  bottomLeft: Radius.circular(300),
                  bottomRight: Radius.circular(300))),
              color: AppColors.backgroundPrimary(context),
              border: NeumorphicBorder(
                isEnabled: true,
                color: AppColors.backgroundPrimary(context),
                width: 2,
              ),
              depth: -8,
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 0.7 * MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 32, left: 16, right: 16, bottom: 4),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text:
                                        "Unlock Professional Excellence with 50GRAMx Galaxy",
                                    style: TextStyle(
                                        color:
                                            AppColors.contentPrimary(context),
                                        fontSize: 48,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w900,
                                        height: 1.14285714),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 0.7 * MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16, right: 16, top: 4, bottom: 16),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  text:
                                      "Welcome to Your Personalized Cyber-Physical Universe",
                                  style: TextStyle(
                                      color:
                                          AppColors.contentSecondary(context),
                                      fontSize: 22,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w400,
                                      height: 1.14285714),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    buildGetStartedButton(context, signedIn)
                  ]),
            ))),
  );
}
