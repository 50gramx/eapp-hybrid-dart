import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class FreeTierBenefitsCardItem extends StatelessWidget {
  const FreeTierBenefitsCardItem({
    Key? key,
    required this.tierBenefitTitle,
    required this.tierBenefitFeatureName,
    required this.tierBenefitSpaceName,
    required this.tierMetaText,
    this.tierNumber = 0,
  }) : super(key: key);

  final String tierBenefitTitle;
  final String tierBenefitFeatureName;
  final String tierBenefitSpaceName;
  final String tierMetaText;
  final int tierNumber;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.backgroundPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundTertiary(context),
          width: 2,
        ),
      ),
      margin: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 16),
      child: Container(
        width: 220,
        padding: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Neumorphic(
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    shape: NeumorphicShape.concave,
                    depth: -5,
                    boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                    color: AppColors.backgroundInverseSecondary(context),
                    border: NeumorphicBorder(
                      isEnabled: true,
                      color: AppColors.backgroundPrimary(context),
                      width: 2,
                    ),
                  ),
                  margin: EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                      child: RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          text: tierBenefitSpaceName,
                          style: TextStyle(
                              color: AppColors.contentInversePrimary(context),
                              fontSize: 12,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              height: 1.14285714),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 4),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$tierBenefitTitle ",
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Montserrat",
                          color: AppColors.contentPrimary(context),
                          fontWeight: FontWeight.w700,
                          height: 1.14285714),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 4, 8, 8),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: tierBenefitFeatureName,
                      style: TextStyle(
                          color: AppColors.contentPrimary(context),
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w900,
                          height: 1.14285714),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text: tierMetaText,
                  style: TextStyle(
                      color: AppColors.contentPrimary(context),
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w500,
                      height: 1.14285714),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}