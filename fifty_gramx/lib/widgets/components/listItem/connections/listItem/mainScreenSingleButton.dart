/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/widgets/components/listItem/compact/artworknone/chevronWithLabelTrailing.dart';
import 'package:fifty_gramx/widgets/components/listItem/standard/artworksmall/labelWIthSupportParaWithIconTrailing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MainScreenSingleButtonWidget extends StatefulWidget {
  const MainScreenSingleButtonWidget({Key? key, required this.cardTitle, required this.buttonOnPressed, this.isSecondary = false})
      : super(key: key);

  final String cardTitle;
  final bool isSecondary;
  final VoidCallback buttonOnPressed;

  @override
  State<MainScreenSingleButtonWidget> createState() =>
      _MainScreenSingleButtonWidgetState();
}

class _MainScreenSingleButtonWidgetState extends State<MainScreenSingleButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
        child: NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: () {
            widget.buttonOnPressed();
          },
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: widget.isSecondary ? AppColors.backgroundSecondary(context) : AppColors.backgroundPrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundPrimary(context),
              width: 2,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),

          child: Row(
            children: [
              Expanded(
                child: NeumorphicText(
                  widget.cardTitle,
                  style: NeumorphicStyle(
                    color: AppColors.contentPrimary(context),
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    border: NeumorphicBorder(
                        color: AppColors.backgroundPrimary(context),
                        width: 0.25
                    ),
                  ),
                  textAlign: TextAlign.start,
                  textStyle: NeumorphicTextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 1.25
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 0, 8),
                child: Icon(
                  Icons.chevron_right_outlined,
                  size: 24,
                ),
              ),
            ],
          ),));
  }
}
