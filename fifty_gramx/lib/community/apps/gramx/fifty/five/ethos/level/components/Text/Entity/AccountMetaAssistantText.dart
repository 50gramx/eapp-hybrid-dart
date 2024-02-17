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

import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Entity/AbstractEntityAssistantText.dart';
import 'package:flutter/material.dart';

class AccountMetaAssistantText implements AbstractEntityAssistantText {
  final AccountMeta connectedAccountMeta;
  final AccountAssistant connectedAccountAssistant;

  AccountMetaAssistantText(
      this.connectedAccountAssistant, this.connectedAccountMeta);


  @override
  Widget buildAccountContactTitleText(BuildContext context) => SizedBox();

  @override
  Widget buildAccountContactSubtitleText(BuildContext context) =>
      SizedBox();


  @override
  Widget buildAccountAssistantTitleText(BuildContext context) => SizedBox();

  @override
  Widget buildAccountAssistantSubtitleText(BuildContext context) => SizedBox();

  @override
  Widget buildAccountMetaAssistantTitleText(BuildContext context) {
    return Text(
        "@${connectedAccountAssistant.accountAssistantName}"
        "#${connectedAccountAssistant.accountAssistantNameCode}",
        style: AppTextStyle.titleTextStyle);
  }

  @override
  Widget buildAccountMetaAssistantSubtitleText(BuildContext context) {
    return Text(
        "${connectedAccountMeta.accountFirstName} "
        "${connectedAccountMeta.accountLastName}",
        style: AppTextStyle.subTitleTextStyle);
  }
}
