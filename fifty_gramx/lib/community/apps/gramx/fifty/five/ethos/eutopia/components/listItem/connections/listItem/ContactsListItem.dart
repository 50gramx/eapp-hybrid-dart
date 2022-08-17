import 'package:contacts_service/contacts_service.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/account/send_account_message.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/connect_account.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/IconButton/Entity/AccountContactIconButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/IconButton/Entity/AccountIconButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/IconButton/Entity/AccountMetaIconButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Text/Entity/AccountAssistantText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Text/Entity/AccountContactText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/Text/Entity/AccountMetaAssistantText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/listItem/connections/listItem/ConnectedAssistantsListItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/listItem/conversations/messages/conversationsMessagesListItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

/// A ListItem that contains data to display a heading.
class ContactListItemWidget extends StatelessWidget {
  final Contact contact;
  final VoidCallback pushContactConversation;

  ContactListItemWidget(
      {Key? key, required this.contact, required this.pushContactConversation});

  @override
  Widget build(BuildContext context) {

    var accountContactText =
    AccountContactText(contact);


    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          color: AppColors.backgroundPrimary(context),
        ),
        child: Column(
          children: [
            ListTile(
              onTap: () {
                pushContactConversation();
              },
              leading: AccountContactIconButton(contact).buildConnectedContactIconButton(context),
              title: accountContactText.buildAccountContactTitleText(context),
              subtitle: accountContactText.buildAccountContactSubtitleText(context),
              isThreeLine: false,
              enableFeedback: true,
              dense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
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
