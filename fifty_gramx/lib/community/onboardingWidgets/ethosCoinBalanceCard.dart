import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';

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
    final Shader linearGradient =
        LinearGradient(colors: [AppColors.darkWarning, AppColors.darkPositive])
            .createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

    double taxes = int.parse(ethosCoinPrice) * 0.18;
    double fees = int.parse(ethosCoinPrice) * 0.007;
    double totalToPay = int.parse(ethosCoinPrice) + taxes + fees;

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
                    EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 2),
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
                            text: "Total Credits",
                            style: TextStyle(
                                color: AppColors.contentPrimary(context),
                                fontSize: 16,
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
                            text:
                                "${NumberFormat.simpleCurrency(locale: "en_IN", decimalDigits: 0).format(int.parse(ethosCoinPrice))}",
                            style: TextStyle(
                                color: AppColors.positive(context),
                                fontSize: 24,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                                height: 1.14285714),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                color: AppColors.backgroundTertiary(context),
              ),
            ),
            Container(
                padding:
                    EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 4),
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
                            text: "GST charges",
                            style: TextStyle(
                                color: AppColors.contentPrimary(context),
                                fontSize: 12,
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
                            text:
                                "${NumberFormat.simpleCurrency(locale: "en_IN", decimalDigits: 0).format(taxes)}",
                            style: TextStyle(
                                color: AppColors.contentPrimary(context),
                                fontSize: 12,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                height: 1.14285714),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Container(
                padding:
                    EdgeInsets.only(top: 2, left: 16, right: 16, bottom: 4),
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
                            text: "Pulse fee",
                            style: TextStyle(
                                color: AppColors.contentPrimary(context),
                                fontSize: 12,
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
                            text:
                                "${NumberFormat.simpleCurrency(locale: "en_IN", decimalDigits: 0).format(fees)}",
                            style: TextStyle(
                                color: AppColors.contentPrimary(context),
                                fontSize: 12,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w400,
                                height: 1.14285714),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(
                color: AppColors.backgroundTertiary(context),
              ),
            ),
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
                            text: "To Pay",
                            style: TextStyle(
                                color: AppColors.contentPrimary(context),
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                                height: 1.14285714),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "${NumberFormat.simpleCurrency(locale: "en_IN", decimalDigits: 0).format(totalToPay)}",
                            style: TextStyle(
                                color: AppColors.contentPrimary(context),
                                fontSize: 16,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600,
                                height: 1.14285714),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
      SizedBox(
        height: 16,
      )
    ]);
  }
}
