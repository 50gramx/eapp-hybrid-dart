import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ActionNeuChip extends StatelessWidget {
  @override
  const ActionNeuChip({
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
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
          width: 1,
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
            shape: NeumorphicShape.convex,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.backgroundSecondary(context),
          ),
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Container(
                height: 24,
                width: 24,
                child: Neumorphic(
                  style: NeumorphicStyle(
                    depth: -6,
                  ),
                  child: CircleAvatar(
                    backgroundColor: chipIconBackgroundColor,
                    child: Text(
                      "$chipAvatarText",
                      style: TextStyle(
                          color: AppColors.contentInversePrimary(context),
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
                      text: " $chipTitle",
                      style: TextStyle(
                          color: AppColors.contentPrimary(context),
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
