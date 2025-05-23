import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class DomainSelectionNeuChip extends StatelessWidget {
  @override
  const DomainSelectionNeuChip({
    Key? key,
    required this.chipAvatarText,
    required this.chipTitle,
    required this.chipIconBackgroundColor,
    required this.buttonActionOnPressed,
  }) : super(key: key);

  final String chipAvatarText;
  final Color chipIconBackgroundColor;
  final String chipTitle;
  final VoidCallback buttonActionOnPressed;

  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundSecondary(context),
          width: 2,
        ),
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
      ),
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
      child: NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: () {
            buttonActionOnPressed();
          },
          style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.backgroundInverseSecondary(context),
          ),
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Container(
                height: 24,
                width: 24,
                child: Neumorphic(
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    depth: -5,
                    color: AppColors.backgroundInverseSecondary(context),
                  ),
                  child: CircleAvatar(
                    backgroundColor: chipIconBackgroundColor,
                    child: Text(
                      "X2",
                      style: TextStyle(
                          color: AppColors.contentPrimary(context),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                margin: EdgeInsets.zero,
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                // width: MediaQuery.of(context).size.width - 66 - 116,
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: "$chipAvatarText",
                      style: TextStyle(
                          color: AppColors.contentInversePrimary(context),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: " $chipTitle",
                      style: TextStyle(
                          color: AppColors.contentInversePrimary(context),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400),
                    )
                  ]),
                ),
              ),
              SizedBox(
                width: 8,
              ),
            ],
          )),
    );
  }
}
