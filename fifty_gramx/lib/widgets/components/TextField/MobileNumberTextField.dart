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
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MobileNumberTextField extends StatelessWidget {
  @override
  const MobileNumberTextField(
      {Key? key,
      required this.mobileNumberTextFieldController,
      required this.mobileNumberCountryCode,
      required this.isMobileNumberValidated})
      : super(key: key);

  final String mobileNumberCountryCode;
  final TextEditingController mobileNumberTextFieldController;
  final bool isMobileNumberValidated;

  Widget build(BuildContext context) {
    return Neumorphic(
        padding: const EdgeInsets.all(2),
        margin: EdgeInsets.symmetric(vertical: 8),
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundPrimary(context),
            width: 2,
          ),
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: AppColors.backgroundPrimary(context),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 16,
            ),
            Text(
              mobileNumberCountryCode,
              style: AppTextStyle.themeTitleTextStyle(context),
            ),
            Expanded(
              child: TextField(
                controller: mobileNumberTextFieldController,
                keyboardType: TextInputType.phone,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                  FilteringTextInputFormatter.digitsOnly
                ],
                style: AppTextStyle.themeTitleTextStyle(context),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(8, 0, 16, 0),
                  hintText: 'Mobile number',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
            Visibility(
              visible: isMobileNumberValidated,
              child: Icon(
                FeatherIcons.check,
                size: 20,
                color: AppColors.contentPositive(context),
              ),
            ),
            SizedBox(
              width: 16,
            ),
          ],
        ));
  }
}
