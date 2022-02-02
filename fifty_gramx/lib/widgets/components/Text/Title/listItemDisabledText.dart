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

class ListItemSubtitleTextWidget extends StatelessWidget {
  final String subtitleText;
  final bool disableNeu;
  final double fontSize;
  final FontWeight fontWeight;

  const ListItemSubtitleTextWidget(
      {Key? key, required this.subtitleText, this.disableNeu = false, this.fontSize = 14.0, this.fontWeight = FontWeight.w800})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 40,
      ),
      child: !disableNeu
          ? NeumorphicText(
              subtitleText,
              style: NeumorphicStyle(
                color: AppColors.contentStateDisabled(context),
                lightSource: NeumorphicTheme.isUsingDark(context)
                    ? LightSource.bottomRight
                    : LightSource.topLeft,
                shadowLightColor: NeumorphicTheme.isUsingDark(context)
                    ? AppColors.gray600
                    : AppColors.backgroundSecondary(context),
                border: NeumorphicBorder(
                    color: AppColors.backgroundPrimary(context), width: 1),
              ),
              textAlign: TextAlign.start,
              textStyle: NeumorphicTextStyle(
                  fontFamily: "Montserrat",
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  height: 1.42857143),
            )
          : Text(subtitleText,
              style: TextStyle(
                  color: AppColors.contentStateDisabled(context),
                  fontFamily: "Montserrat",
                  fontSize: fontSize,
                  fontWeight: fontWeight,
                  height: 1.42857143)),
    );
  }
}
