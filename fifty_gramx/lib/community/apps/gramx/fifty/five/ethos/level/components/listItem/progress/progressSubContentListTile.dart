import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuChip.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormSubHeadingText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ProgressSubContentListTile extends StatelessWidget {
  @override
  const ProgressSubContentListTile({
    Key? key,
    required this.podMode,
    required this.selected,
    required this.totalAdjacent,
    required this.podType,
    required this.cpuCores,
    required this.memorySize,
    required this.netSpeed,
    required this.sharingCapacity,
    required this.freeStorage,
    required this.freeFrequentStorage,
    required this.freeArchiveStorage,
    required this.podPrice,
    required this.podSelectedCallback,
  }) : super(key: key);

  final int podMode;
  final int selected;
  final int totalAdjacent;
  final String podType;
  final int cpuCores;
  final double memorySize;
  final int netSpeed;
  final int sharingCapacity;
  final bool freeStorage;
  final String freeFrequentStorage;
  final String freeArchiveStorage;
  final int podPrice;
  final VoidCallback podSelectedCallback;

  Widget build(BuildContext context) {
    Color modeColor;
    Color avatarBackgroundColor;
    String podPricingCycle;

    if (podMode == 0) {
      modeColor = NeumorphicTheme.isUsingDark(context)
          ? AppColors.contentInverseTertiary(context)
          : AppColors.backgroundInverseTertiary(context);
      podPricingCycle = "Pod Monthly Price";
    } else if (podMode == 1) {
      modeColor = NeumorphicTheme.isUsingDark(context)
          ? AppColors.contentInverseSecondary(context)
          : AppColors.backgroundInverseSecondary(context);
      podPricingCycle = "Pod Monthly Price";
    } else if (podMode == 2) {
      modeColor = AppColors.platinum(context);
      podPricingCycle = "Pod Yearly Price";
    } else {
      modeColor = AppColors.blue(context);
      podPricingCycle = "Pod Monthly Price";
    }

    var opacity = (10 - totalAdjacent) + selected;
    avatarBackgroundColor = modeColor.withOpacity(opacity / 10);
    var labelValueColor = AppColors.contentOnColor(context);
    var bannerColor = NeumorphicTheme.isUsingDark(context)
        ? AppColors.backgroundInversePrimary(context)
        : AppColors.backgroundPrimary(context);

    return Neumorphic(
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
      ),
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.fromLTRB(0, 6, 0, 6),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: avatarBackgroundColor,
          ),
          child: ListTile(
              contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              minVerticalPadding: 0,
              title: Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  color: bannerColor,
                  border: Border.all(color: avatarBackgroundColor, width: 2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Center(
                  child: Text(
                    "X2 $podType",
                    style: TextStyle(
                        color: avatarBackgroundColor,
                        fontSize: 22,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              subtitle: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      child: RichText(
                        text: TextSpan(
                          text: "Pod Pricing and Features",
                          style: TextStyle(
                              color: labelValueColor,
                              fontSize: 12,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                              height: 1.14285714),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: FormSubHeadingText(podPricingCycle, "₹${podPrice}",
                            labelValueColor, labelValueColor)
                        .build(context),
                  ),
                  Container(
                    child: FormSubHeadingText("Pod Processing Cores",
                            "${cpuCores}x", labelValueColor, labelValueColor)
                        .build(context),
                  ),
                  Container(
                    child: FormSubHeadingText("Pod Memory Size",
                            "$memorySize GiB", labelValueColor, labelValueColor)
                        .build(context),
                  ),
                  Container(
                    child: FormSubHeadingText("Pod Network Speed",
                            "$netSpeed Gbps", labelValueColor, labelValueColor)
                        .build(context),
                  ),
                  Container(
                    child: FormSubHeadingText(
                            "Pod Sharing Capacity",
                            "$sharingCapacity ${sharingCapacity == 1 ? "Account" : "Accounts"}",
                            labelValueColor,
                            labelValueColor)
                        .build(context),
                  ),
                  Visibility(
                    visible: true,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                            child: RichText(
                              text: TextSpan(
                                text: "Storage Credits",
                                style: TextStyle(
                                    color: labelValueColor,
                                    fontSize: 12,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600,
                                    height: 1.14285714),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: FormSubHeadingText(
                                  "Free Frequent Storage Credits",
                                  "$freeArchiveStorage",
                                  labelValueColor,
                                  labelValueColor)
                              .build(context),
                        ),
                        Container(
                          child: FormSubHeadingText(
                                  "Free Archive Storage Credits",
                                  "$freeFrequentStorage",
                                  labelValueColor,
                                  labelValueColor)
                              .build(context),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                      child: Neumorphic(
                    style: NeumorphicStyle(
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color: avatarBackgroundColor,
                        width: 2,
                      ),
                      lightSource: NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor: NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(context),
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(24)),
                    ),
                    padding: const EdgeInsets.all(2),
                    margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                    child: NeumorphicButton(
                        provideHapticFeedback: true,
                        onPressed: () {podSelectedCallback();},
                        style: NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(24)),
                          lightSource: NeumorphicTheme.isUsingDark(context)
                              ? LightSource.bottomRight
                              : LightSource.topLeft,
                          color: bannerColor,
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: Center(
                          child: Text(
                            "Continue",
                            style: TextStyle(
                                color: avatarBackgroundColor,
                                fontSize: 14,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w600),
                          ),
                        )),
                  )),
                ],
              ))),
    );
  }
}
