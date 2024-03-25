import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildHomePageSocialProofSection(BuildContext context) {
  return Container(
      height: 0.7 * MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 16, right: 16),
      child: Row(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Social Proof',
                        style: TextStyle(
                            color: AppColors.contentPrimary(context),
                            fontSize: 48,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                            height: 1.14285714),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Join Thousands of Professionals Trusting 50GRAMx Galaxy',
                      ),
                    ]),
              )),
          Expanded(
            flex: 6,
            child: Neumorphic(
              margin: EdgeInsets.all(20),
              style: NeumorphicStyle(
                lightSource: NeumorphicTheme.isUsingDark(context)
                    ? LightSource.bottomRight
                    : LightSource.topLeft,
                shadowLightColor: NeumorphicTheme.isUsingDark(context)
                    ? AppColors.gray600
                    : AppColors.backgroundSecondary(context),
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.stadium(),
                color: AppColors.backgroundPrimary(context),
                border: NeumorphicBorder(
                  isEnabled: true,
                  color: AppColors.backgroundPrimary(context),
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Social Proof',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Join Thousands of Professionals Trusting 50GRAMx Galaxy',
                    ),
                    // Social Proof Carousel can be implemented here
                  ],
                ),
              ),
            ),
          ),
        ],
      ));
}
