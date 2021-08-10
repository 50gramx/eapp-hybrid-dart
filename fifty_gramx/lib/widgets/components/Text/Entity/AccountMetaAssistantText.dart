import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/widgets/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/widgets/components/Text/Entity/AbstractEntityAssistantText.dart';
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
