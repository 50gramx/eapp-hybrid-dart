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
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class LabelWithSupportParaWithIconTrailing extends StatelessWidget {
  @override
  const LabelWithSupportParaWithIconTrailing(
      {Key? key,
      required this.labelText,
      required this.supportParaText})
      : super(key: key);

  final String labelText;
  final String supportParaText;


  String getInitials(String contactName) => contactName.length > 0
      ? contactName.trim().split(' ').map((l) => l[0]).take(2).join()
      : '';

  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          color: AppColors.backgroundPrimary(context),
        ),
        child: Column(
          children: [
            ListTile(
              dense: true,
              leading: Neumorphic(
                style: NeumorphicStyle(
                  color: AppColors.backgroundPrimary(context),
                  lightSource: NeumorphicTheme.isUsingDark(context)
                      ? LightSource.bottomRight
                      : LightSource.topLeft,
                  shadowLightColor: NeumorphicTheme.isUsingDark(context)
                      ? AppColors.gray600
                      : AppColors.backgroundSecondary(context),
                  border: NeumorphicBorder(
                      color: AppColors.backgroundPrimary(context), width: 0.5),
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                ),
                padding: const EdgeInsets.all(1),
                child: NeumorphicButton(
                  provideHapticFeedback: true,
                  onPressed: () {},
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    shape: NeumorphicShape.convex,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                    color: AppColors.backgroundPrimary(context),
                  ),
                  padding: const EdgeInsets.all(0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.backgroundPrimary(context),
                    child: NeumorphicText(
                      "00",
                      style: NeumorphicStyle(
                        color: AppColors.contentPrimary(context),
                        lightSource: NeumorphicTheme.isUsingDark(context)
                            ? LightSource.bottomRight
                            : LightSource.topLeft,
                        shadowLightColor: NeumorphicTheme.isUsingDark(context)
                            ? AppColors.gray600
                            : AppColors.backgroundSecondary(context),
                        border: NeumorphicBorder(
                            color: AppColors.backgroundPrimary(context), width: 0.5),
                      ),
                      textAlign: TextAlign.start,
                      textStyle: NeumorphicTextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          height: 1.25),
                    ),
                  ),
                ),
              ),
              title: NeumorphicText(
                labelText,
                style: NeumorphicStyle(
                  color: AppColors.contentPrimary(context),
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
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    height: 1.25),
              ),
              subtitle: NeumorphicText(
                supportParaText,
                style: NeumorphicStyle(
                  color: AppColors.contentTertiary(context),
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
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    height: 1.42857143),
              ),
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 64.0, right: 16.0),
                    height: 1,
                    child: Divider(
                      color: AppColors.backgroundTertiary(context),
                      thickness: 1,
                    )),
              ),
            ]),
          ],
        ));
  }
}
