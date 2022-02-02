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
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ListItemTitleTextWidget extends StatelessWidget {
  final String titleText;
  final bool disableNeu;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;

  const ListItemTitleTextWidget({Key? key, required this.titleText, this.disableNeu = false, this.fontSize: 16, this.fontWeight = FontWeight.w600, this.textColor = Colors.transparent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color formattedTextColor;
    if (textColor == Colors.transparent) {
      formattedTextColor = AppColors.contentPrimary(context);
    } else {
      formattedTextColor = textColor;
    }

    return Row(
      children: [
        !disableNeu ? Flexible(
          child: NeumorphicText(
            titleText,
            style: NeumorphicStyle(
              color: formattedTextColor,
              lightSource: NeumorphicTheme.isUsingDark(context)
                  ? LightSource.bottomRight
                  : LightSource.topLeft,
              shadowLightColor: NeumorphicTheme.isUsingDark(context)
                  ? AppColors.gray600
                  : AppColors.backgroundSecondary(context),
              border: NeumorphicBorder(
                  color: AppColors.backgroundPrimary(context), width: 0.25),
            ),
            textAlign: TextAlign.start,
            textStyle: NeumorphicTextStyle(
                fontFamily: "Montserrat",
                fontSize: fontSize,
                fontWeight: fontWeight,
                height: 1.25),
          ),
        ) : Flexible(
          child: Text(titleText,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: formattedTextColor,
              fontFamily: "Montserrat",
              fontSize: fontSize,
              fontWeight: fontWeight,
              height: 1.25,
          ),),
        ),
      ],
    );
  }

}