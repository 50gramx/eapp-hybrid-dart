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
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PrimaryActionNeuButton extends StatelessWidget {
  @override
  const PrimaryActionNeuButton({Key? key, required this.buttonTitle})
      : super(key: key);

  final String buttonTitle;

  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.baseColor(context),
          width: 2,
        ),
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
      ),
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.all(4.0),
      child: NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: () {},
          style: NeumorphicStyle(
            shape: NeumorphicShape.convex,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.textColor(context),
          ),
          padding: const EdgeInsets.all(12.0),
          child: Text(
            buttonTitle,
            style: AppTextStyle.themePrimaryButtonTextStyle(context),
          )),
    );
  }
}
