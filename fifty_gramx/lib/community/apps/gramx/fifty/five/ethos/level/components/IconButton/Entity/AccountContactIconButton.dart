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

import 'package:contacts_service/contacts_service.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/IconButton/ConnectedEntityIconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AccountContactIconButton implements ConnectedEntityIconButton {
  final Contact contact;

  AccountContactIconButton(this.contact);

  @override
  Widget buildConnectedAccountAssistantIconButton(BuildContext context) =>
      SizedBox();

  @override
  Widget buildConnectedAccountIconButton(BuildContext context) => SizedBox();

  String getInitials(String contactName) => contactName.isNotEmpty
      ? contactName.trim().split(' ').map((l) => l[0]).take(2).join()
      : '';

  @override
  Widget buildConnectedContactIconButton(BuildContext context) {
    var contactIcon;
    if (contact.avatar == null ||
        (contact.displayName != null || contact.givenName != null)) {
      contactIcon = NeumorphicText(
        "${(contact.displayName != null ? getInitials(contact.displayName!) : getInitials(contact.givenName!)).toUpperCase()}",
        style: NeumorphicStyle(
          color: AppColors.contentSecondary(context),
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
      );
    } else {
      contactIcon = ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          "https://pbs.twimg.com/profile_images/1398518722948603906/py8p-c-l_400x400.jpg",
          height: 42.0,
          width: 42.0,
        ),
      );
    }

    return Neumorphic(
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
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
      ),
      padding: const EdgeInsets.all(1),
      child: NeumorphicButton(
        provideHapticFeedback: true,
        onPressed: () {
          print("entity toggle pressed");
        },
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          shape: NeumorphicShape.convex,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: AppColors.backgroundPrimary(context),
        ),
        padding: const EdgeInsets.all(0),
        child: CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.backgroundPrimary(context),
          child: contactIcon,
        ),
      ),
    );
  }

  @override
  Widget buildConnectedAccountMetaIconButton(BuildContext context) =>
      SizedBox();

  @override
  Widget buildConnectedOrganisationIconButton(BuildContext context) =>
      SizedBox();
}
