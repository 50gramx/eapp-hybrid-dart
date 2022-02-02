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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class AccountConversationListItem extends StatelessWidget {
  @override
  const AccountConversationListItem(
      {Key? key,
      required this.account,
      required this.pushAccountConversation,
      required this.accountConnectedAccount})
      : super(key: key);

  final Account account;
  final AccountConnectedAccount accountConnectedAccount;
  final VoidCallback pushAccountConversation;

  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(24)),
          color: AppColors.lightNeuPrimary,
        ),
        child: Column(
          children: [
            ListTile(
              onTap: () {
                pushAccountConversation();
              },
              leading: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(36)),
                  color: AppColors.lightNeuPrimaryBackground,
                ),
                child: IconButton(
                  icon: Icon(
                    FeatherIcons.user,
                    size: 16,
                  ),
                  color: AppColors.lightNeuSecondary,
                  onPressed: () {},
                ),
              ),
              title: Text(
                "${account.accountFirstName} ${account.accountLastName}",
                style: TextStyle(
                    color: AppColors.lightNeuSecondary,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.25),
              ),
              subtitle: Text(
                "last account message will be here",
                style: TextStyle(
                    color: AppColors.gray600,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 1.42857143),
              ),
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 64.0, right: 16.0),
                    height: 1,
                    child: Divider(
                      color: AppColors.dividerColor,
                      thickness: 1,
                    )),
              ),
            ]),
          ],
        ));
  }
}
