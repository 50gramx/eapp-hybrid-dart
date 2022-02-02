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
import 'package:fifty_gramx/widgets/components/Container/NeuContainer.dart';
import 'package:fifty_gramx/widgets/components/Text/Title/listItemDisabledText.dart';
import 'package:fifty_gramx/widgets/components/Text/Title/listItemTitleText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SwitchConfigurationItem extends StatelessWidget {

  final String titleText;
  final bool switchValue;
  final Function(bool) switchOnChanged;

  const SwitchConfigurationItem({Key? key, required this.titleText, required this.switchValue, required this.switchOnChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeuContainer(
        containerChild: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: ListItemTitleTextWidget(titleText: titleText, disableNeu: true, fontSize: 18, fontWeight: FontWeight.w500,)),
            NeumorphicSwitch(
              height: 28,
              value: switchValue,
              onChanged: (value) {
                switchOnChanged(value);
              },
              style: NeumorphicSwitchStyle(
                lightSource: NeumorphicTheme.isUsingDark(context)
                    ? LightSource.bottomRight
                    : LightSource.topLeft,
                activeTrackColor: AppColors.contentInversePrimary(context),
                inactiveTrackColor: AppColors.backgroundPrimary(context),
                inactiveThumbColor: AppColors.contentInversePrimary(context),
                activeThumbColor: AppColors.contentPrimary(context),
                thumbShape: NeumorphicShape.flat,
                trackBorder: NeumorphicBorder(
                  isEnabled: true,
                  color: AppColors.backgroundPrimary(context),
                  width: 2,
                ),
                thumbBorder: NeumorphicBorder(
                  isEnabled: true,
                  color: AppColors.backgroundPrimary(context),
                  width: 0.5,
                ),
              ),
            ),
          ],
        )
    );
  }

}