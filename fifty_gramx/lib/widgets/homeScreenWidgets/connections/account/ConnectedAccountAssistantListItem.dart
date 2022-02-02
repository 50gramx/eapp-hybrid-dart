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
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/connect_account.pb.dart';
import 'package:fifty_gramx/widgets/components/IconButton/Entity/AccountAssistantIconButton.dart';
import 'package:fifty_gramx/widgets/components/IconButton/Entity/AccountIconButton.dart';
import 'package:fifty_gramx/widgets/components/IconButton/Entity/AccountMetaIconButton.dart';
import 'package:fifty_gramx/widgets/components/Text/Entity/AccountAssistantText.dart';
import 'package:fifty_gramx/widgets/components/Text/Entity/AccountMetaAssistantText.dart';
import 'package:fifty_gramx/widgets/components/Text/Title/listItemSubtitleText.dart';
import 'package:fifty_gramx/widgets/components/Text/Title/listItemTitleText.dart';
import 'package:fifty_gramx/widgets/components/listItem/connections/listItem/ConnectedAssistantsListItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';

/// A ListItem that contains data to display a heading.
class ConnectedAccountAssistantListItem extends StatelessWidget {
  final AccountConnectedAccountAssistant connectedAccountAssistant;
  final AccountAssistantMeta accountAssistantMeta;
  final VoidCallback pushAccountAssistantConversation;

  ConnectedAccountAssistantListItem(this.connectedAccountAssistant,
      this.accountAssistantMeta, this.pushAccountAssistantConversation);

  @override
  Widget build(BuildContext context) {
    var centerTitleText;
    var centerSubtitleText;

    centerTitleText = ListItemTitleTextWidget(
        titleText:
            "${accountAssistantMeta.accountAssistantName[0].toUpperCase()}${accountAssistantMeta.accountAssistantName.substring(1, accountAssistantMeta.accountAssistantName.length)}");

    centerSubtitleText = ListItemSubtitleTextWidget(
        subtitleText:
            "Connected since ${DateFormat.yMMMMd('en_US').format(connectedAccountAssistant.connectedAt.toDateTime())}",
        disableNeu: true,
        fontWeight: FontWeight.w400);
    return Neumorphic(
      style: NeumorphicStyle(
        color: AppColors.backgroundPrimary(context),
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        // disableDepth: true,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        border: NeumorphicBorder(
            color: AppColors.backgroundSecondary(context), width: 0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Theme(
                data: ThemeData(
                  highlightColor: AppColors.backgroundPrimary(context),
                ),
                child: ListTile(
                  onTap: () {
                    pushAccountAssistantConversation();
                  },
                  title: centerTitleText,
                  subtitle: centerSubtitleText,
                  isThreeLine: false,
                  enableFeedback: true,
                  dense: true,
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                ),
              ),
            ],
          )),
    );
  }
}
