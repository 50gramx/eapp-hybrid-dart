import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildGalaxyLicencesPageHeroSection(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding:
                  EdgeInsets.only(top: 128, left: 16, right: 16, bottom: 64),
              child: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(
                  text: "Licences",
                  style: TextStyle(
                      color: AppColors.contentPrimary(context),
                      fontSize: 64,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      height: 1.14285714),
                ),
              ),
            ),
          )),
    ],
  );
}
