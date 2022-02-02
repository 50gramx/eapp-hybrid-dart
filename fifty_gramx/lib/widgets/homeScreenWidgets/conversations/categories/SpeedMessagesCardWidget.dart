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
import 'package:fifty_gramx/widgets/components/listItem/compact/artworknone/chevronWithLabelTrailing.dart';
import 'package:fifty_gramx/widgets/components/listItem/standard/artworksmall/labelWIthSupportParaWithIconTrailing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SpeedMessagesCardWidget extends StatefulWidget {
  const SpeedMessagesCardWidget({Key? key, required this.cardTitle})
      : super(key: key);

  final String cardTitle;

  @override
  State<SpeedMessagesCardWidget> createState() =>
      _SpeedMessagesCardWidgetState();
}

class _SpeedMessagesCardWidgetState extends State<SpeedMessagesCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Neumorphic(
          style: NeumorphicStyle(
            color: AppColors.backgroundPrimary(context),
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            border: NeumorphicBorder(
                color: AppColors.backgroundPrimary(context), width: 2),
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChevronWithLabelTrailing(
                  labelText: widget.cardTitle,
                  isTrailingActive: true,
                ),
              ],
            ),
          ),
        ));
  }
}
