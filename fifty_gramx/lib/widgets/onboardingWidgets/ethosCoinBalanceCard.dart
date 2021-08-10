import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/components/Text/Form/FormInfoText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EthosCoinBalanceCard extends StatelessWidget {
  const EthosCoinBalanceCard({
    Key? key,
    required this.addingXEthosCoin,
    required this.ethosCoinPrice,
  }) : super(key: key);

  final String addingXEthosCoin;
  final String ethosCoinPrice;

  @override
  Widget build(BuildContext context) {

    final Shader linearGradient = LinearGradient(
        colors: [AppColors.darkWarning, AppColors.darkPositive]
    ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

    return Column(children: [
      Neumorphic(
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
            color: AppColors.backgroundPrimary(context),
            width: 2,
          ),
        ),
        margin: EdgeInsets.only(top: 4, left: 4, right: 4, bottom: 4),
        child: Column(
          children: [
            Container(
                padding:
                EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 4),
                decoration: BoxDecoration(
                    color: AppColors.backgroundPrimary(context),
                    borderRadius: BorderRadius.circular(24)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "New Balance",
                            style: TextStyle(
                                color: AppColors.contentSecondary(context),
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                height: 1.14285714),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$addingXEthosCoin",
                            style: TextStyle(
                                foreground: Paint()..shader = linearGradient,
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                                height: 1.14285714),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Container(
                padding:
                EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 16),
                decoration: BoxDecoration(
                    color: AppColors.backgroundPrimary(context),
                    borderRadius: BorderRadius.circular(24)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "EthosCoin Price ",
                            style: TextStyle(
                                color: AppColors.contentSecondary(context),
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                height: 1.14285714),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "$ethosCoinPrice",
                            style: TextStyle(
                                color: AppColors.contentSecondary(context),
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                                height: 1.14285714),
                          ),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
      SizedBox(
        height: 16,
      )
    ]);
  }
}