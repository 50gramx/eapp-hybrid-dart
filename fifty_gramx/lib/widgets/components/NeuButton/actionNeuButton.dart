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

class ActionNeuButton extends StatefulWidget {
  @override
  const ActionNeuButton({
    Key? key,
    required this.buttonTitle,
    required this.buttonActionOnPressed,
    final this.isPrimaryButton = false,
    final this.isPrimaryButtonDisabled = false,
    final this.noBorder = false,
  }) : super(key: key);

  final String buttonTitle;
  final VoidCallback buttonActionOnPressed;
  final bool isPrimaryButton;
  final bool isPrimaryButtonDisabled;
  final bool noBorder;

  @override
  State<ActionNeuButton> createState() => _ActionNeuButtonState();

}

class _ActionNeuButtonState extends State<ActionNeuButton> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
        provideHapticFeedback: true,
        onPressed: () {
          widget.buttonActionOnPressed();
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
          color: widget.isPrimaryButton
              ? (widget.isPrimaryButtonDisabled ? AppColors.contentStateDisabled(context) : AppColors.contentPrimary(context))
              : AppColors.backgroundSecondary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundPrimary(context),
            width: widget.noBorder ? 0 : 2,
          ),
        ),
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
        child: Text(
          widget.buttonTitle,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: widget.isPrimaryButton
                  ? AppColors.contentInversePrimary(context)
                  : AppColors.contentPrimary(context),
              fontSize: 18,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w700),
        ));
  }
}