import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account_assistant.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/conversation/message/message_conversation.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/identity/account/connect_account.pb.dart';
import 'package:fifty_gramx/services/product/conversation/message/messageConversationService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/IconButton/Entity/AccountAssistantIconButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/IconButton/Entity/AccountIconButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Entity/AccountAssistantText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Entity/AccountMetaAssistantText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Title/listItemSubtitleText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Title/listItemTitleText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/connections/listItem/ConnectedAssistantsListItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// A ListItem that contains data to display a heading.
class AccountConnectedAccountAssistantListItem extends StatelessWidget
    implements ConnectedAssistantsListItem {
  final ConnectedAssistantWithBelongingEntity
      connectedAssistantWithBelongingEntity;
  final VoidCallback pushAccountAssistantConversation;

  AccountConnectedAccountAssistantListItem(
      this.connectedAssistantWithBelongingEntity,
      this.pushAccountAssistantConversation);

  @override
  Widget build(BuildContext context) {
    var leadingIconButton;
    var centerTitleText;
    var centerSubtitleText;

    var accountAssistant = connectedAssistantWithBelongingEntity.assistant
        .unpackInto(new AccountAssistant());

    //
    // leadingIconButton = AccountAssistantIconButton(accountAssistant)
    //     .buildConnectedAccountAssistantIconButton(context);

    // Configuring Widgets
    if (connectedAssistantWithBelongingEntity.isConnectedToBelongingEntity) {
      var connectedAccount = connectedAssistantWithBelongingEntity
          .belongingEntity
          .unpackInto(new Account());

      // warn: using default for time being
      leadingIconButton = AccountIconButton(
              connectedAccount, AccountConnectedAccount.getDefault(), () {})
          .buildConnectedAccountIconButton(context);

      var accountAssistantText =
          AccountAssistantText(accountAssistant, connectedAccount);
      centerTitleText = ListItemTitleTextWidget(
          titleText: connectedAccount.accountFirstName +
              " " +
              connectedAccount.accountLastName);

      centerSubtitleText = FutureBuilder<GetAccountLastMessageResponse>(
          future: MessageConversationService.getAccountLastMessage(
              connectedAccount.accountId),
          builder: (context, snap) {
            if (snap.connectionState == ConnectionState.waiting) {
              return ListItemSubtitleTextWidget(
                  subtitleText: "Say hello with speed messages",
                  disableNeu: true,
                  fontWeight: FontWeight.w400);
            } else {
              if (snap.hasData) {
                if (snap.data!.isMessageSent) {
                  return ListItemSubtitleTextWidget(
                      subtitleText: "${snap.data!.accountSentMessage.message}",
                      disableNeu: true,
                      fontWeight: FontWeight.w400);
                } else {
                  return ListItemSubtitleTextWidget(
                      subtitleText:
                          "${snap.data!.accountReceivedMessage.message}",
                      disableNeu: true,
                      fontWeight: FontWeight.w400);
                }
              } else {
                return ListItemSubtitleTextWidget(
                    subtitleText: "",
                    disableNeu: true,
                    fontWeight: FontWeight.w400);
              }
            }
          });
      // centerSubtitleText = ListItemSubtitleTextWidget(
      //     subtitleText: "Say hello with speed messages",
      //     disableNeu: true,
      //     fontWeight: FontWeight.w400);
      // centerSubtitleText =
      //     accountAssistantText.buildAccountAssistantSubtitleText(context);
    } else {
      var connectedAccountMeta = connectedAssistantWithBelongingEntity
          .belongingEntityMeta
          .unpackInto(new AccountMeta());
      var accountMetaAssistantText =
          AccountMetaAssistantText(accountAssistant, connectedAccountMeta);
      centerTitleText =
          accountMetaAssistantText.buildAccountMetaAssistantTitleText(context);
      centerSubtitleText = accountMetaAssistantText
          .buildAccountMetaAssistantSubtitleText(context);
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
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
                Theme(
                  data: ThemeData(
                    highlightColor: AppColors.backgroundPrimary(context),
                  ),
                  child: ListTile(
                    onTap: () {
                      pushAccountAssistantConversation();
                    },
                    leading: leadingIconButton,
                    title: centerTitleText,
                    subtitle: centerSubtitleText,
                    isThreeLine: false,
                    enableFeedback: true,
                    dense: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                  ),
                ),
              ],
            )),
      ),
    );
  }

  @override
  Widget buildAccountConnectedAccountAssistantConnection(BuildContext context) {
    // TODO: implement buildAccountConnectedAccountAssistantConnection
    throw UnimplementedError();
  }
}
