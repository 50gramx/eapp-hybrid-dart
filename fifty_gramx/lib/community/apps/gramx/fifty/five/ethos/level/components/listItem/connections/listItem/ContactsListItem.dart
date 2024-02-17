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
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/IconButton/Entity/AccountContactIconButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Entity/AccountContactText.dart';
import 'package:flutter/material.dart';

/// A ListItem that contains data to display a heading.
class ContactListItemWidget extends StatelessWidget {
  final Contact contact;
  final VoidCallback pushContactConversation;

  ContactListItemWidget(
      {Key? key, required this.contact, required this.pushContactConversation});

  @override
  Widget build(BuildContext context) {
    var accountContactText = AccountContactText(contact);

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
              leading: AccountContactIconButton(contact)
                  .buildConnectedContactIconButton(context),
              title: accountContactText.buildAccountContactTitleText(context),
              subtitle:
                  accountContactText.buildAccountContactSubtitleText(context),
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
