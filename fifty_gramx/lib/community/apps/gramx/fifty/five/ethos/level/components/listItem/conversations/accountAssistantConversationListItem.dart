import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountAssistantConversationListItem extends StatelessWidget {
  @override
  const AccountAssistantConversationListItem(
      {Key? key,
      required this.accountAssistant,
      required this.pushAssistantConversation,
      required this.accountConnectedAccountAssistant})
      : super(key: key);

  final AccountAssistant accountAssistant;
  final AccountConnectedAccountAssistant accountConnectedAccountAssistant;
  final VoidCallback pushAssistantConversation;

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
                pushAssistantConversation();
              },
              leading: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(36)),
                  color: AppColors.lightNeuPrimaryBackground,
                ),
                child: TextButton(
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(fontSize: 16),
                      primary: AppColors.lightNeuSecondary),
                  child: Text("${accountAssistant.accountAssistantNameCode}"),
                  onPressed: () {},
                ),
              ),
              title: Text(
                accountAssistant.accountAssistantName,
                style: TextStyle(
                    color: AppColors.lightNeuSecondary,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    height: 1.25),
              ),
              subtitle: Text(
                "Hey!",
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
