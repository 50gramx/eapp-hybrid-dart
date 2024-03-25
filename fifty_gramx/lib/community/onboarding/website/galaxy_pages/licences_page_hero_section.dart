import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildGalaxyLicencesPageHeroSection(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Align(
          alignment: Alignment.center,
          child: Container(
            width: 0.7 * MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 4),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Pricing",
                  style: TextStyle(
                      color: AppColors.contentPrimary(context),
                      fontSize: 48,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w900,
                      height: 1.14285714),
                ),
              ),
            ),
          )),
    ],
  );
}
