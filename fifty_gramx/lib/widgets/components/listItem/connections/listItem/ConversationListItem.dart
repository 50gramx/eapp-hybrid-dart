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
import 'package:fifty_gramx/widgets/components/Text/Title/listItemSubtitleText.dart';
import 'package:fifty_gramx/widgets/components/Text/Title/listItemTitleText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// A ListItem that contains data to display a heading.
class ConversationListItemWidget extends StatelessWidget {
  final Widget senderIconButton;
  final String senderName;
  final String lastMessage;
  final VoidCallback pushContactConversation;

  ConversationListItemWidget(
      {Key? key, required this.senderIconButton, required this.senderName, required this.lastMessage, required this.pushContactConversation});

  @override
  Widget build(BuildContext context) {

    var listItemTitleText = ListItemTitleTextWidget(titleText: senderName);
    var listItemSubtitleText = ListItemSubtitleTextWidget(subtitleText: lastMessage);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
        child: Theme(
          data: ThemeData(
            highlightColor: AppColors.backgroundPrimary(context),
          ),
          child: ListTile(
            onTap: () {
              print("Tapped inside ConversationListItemWidget!");
              pushContactConversation();
            },
            leading: senderIconButton,
            title: listItemTitleText,
            subtitle: listItemSubtitleText,
            isThreeLine: false,
            enableFeedback: true,
            dense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
          ),
        ),
      ),
    );
  }
}
