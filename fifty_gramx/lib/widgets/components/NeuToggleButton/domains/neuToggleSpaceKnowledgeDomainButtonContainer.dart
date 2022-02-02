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
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeuToggleSpaceKnowledgeDomainButtonContainer {
  final SpaceKnowledgeDomain spaceKnowledgeDomain;
  final bool isButtonDisabled;
  final bool isButtonSelected;
  final bool strikeThroughSecondaryTitle;

  NeuToggleSpaceKnowledgeDomainButtonContainer(
      {required this.spaceKnowledgeDomain,
      required this.isButtonDisabled,
      required this.isButtonSelected,
      this.strikeThroughSecondaryTitle = false});


  Widget build(BuildContext context) {
    return Neumorphic(
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundSecondary(context),
            width: 2,
          ),
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: AppColors.backgroundInverseSecondary(context),
        ),
        margin: EdgeInsets.only(left: 8, right: 8),
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: [
            Container(
              height: 24,
              width: 24,
              child: Neumorphic(
                style: NeumorphicStyle(
                  lightSource: NeumorphicTheme.isUsingDark(context)
                      ? LightSource.bottomRight
                      : LightSource.topLeft,
                  depth: -5,
                  color: AppColors.backgroundInverseSecondary(context),
                ),
                child: CircleAvatar(
                  backgroundColor: AppColors.warning(context),
                  child: Text(
                    "K1",
                    style: TextStyle(
                        color: AppColors.contentPrimary(context),
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
                    text: spaceKnowledgeDomain.spaceKnowledgeDomainName,
                    style: TextStyle(
                        color: AppColors.contentInversePrimary(context),
                        fontSize: 12,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600),
                  ),
                ]),
              ),
            ),
            SizedBox(
              width: 8,
            ),
          ],
        )
    );
  }
}
