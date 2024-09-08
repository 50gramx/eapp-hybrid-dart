import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ChevronWithLabelTrailing extends StatelessWidget {
  @override
  const ChevronWithLabelTrailing(
      {Key? key,
      required this.labelText,
      this.isCustomColor = false,
      this.customColor = AppColors.white,
      this.isTrailingActive = false})
      : super(key: key);

  final String labelText;
  final bool isCustomColor;
  final Color customColor;
  final bool isTrailingActive;

  Widget build(BuildContext context) {
    Color boxColor = AppColors.backgroundPrimary(context);
    if (kDebugMode) {
      print("boxColor is primary");
    }
    if (isCustomColor) {
      if (kDebugMode) {
        print("boxColor is custom");
      }
      boxColor = customColor;
    }
    return Container(
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          color: boxColor,
        ),
        child: Column(
          children: [
            ListTile(
              dense: true,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
              title: NeumorphicText(
                labelText,
                style: NeumorphicStyle(
                  color: isCustomColor
                      ? AppColors.contentInversePrimary(context)
                      : AppColors.contentPrimary(context),
                  lightSource: NeumorphicTheme.isUsingDark(context)
                      ? LightSource.bottomRight
                      : LightSource.topLeft,
                  shadowLightColor: NeumorphicTheme.isUsingDark(context)
                      ? AppColors.gray600
                      : AppColors.backgroundSecondary(context),
                  border: NeumorphicBorder(color: boxColor, width: 0.25),
                ),
                textAlign: TextAlign.start,
                textStyle: NeumorphicTextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    height: 1.25),
              ),
              trailing: Visibility(
                visible: isTrailingActive,
                child: IconButton(
                  padding: EdgeInsets.fromLTRB(8, 12, 0, 8),
                  icon: Icon(
                    Icons.chevron_right_outlined,
                    size: 24,
                  ),
                  color: AppColors.lightNeuSecondary,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ));
  }
}

/*
Row(
        children: [
          Column(
            children: [
              Text("Label"),
              Text("Support Paragraph"),
            ],
          ),
          Column(
            children: [
              Text("Label"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                icon: Icon(Icons.chevron_right_outlined),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
 */
