import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/IconButton/Entity/AccountIconButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Title/listItemSubtitleText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Title/listItemTitleText.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';

/// A ListItem that contains data to display a heading.
class AccountConnectedAccountListItem extends StatelessWidget {
  final AccountConnectedAccount connectedAccount;
  final Account account;
  final VoidCallback pushAccountConversation;
  final Function(AccountConnectedAccount) toggleAccountInterest;

  AccountConnectedAccountListItem(this.connectedAccount, this.account,
      this.pushAccountConversation, this.toggleAccountInterest);

  @override
  Widget build(BuildContext context) {
    var leadingIconButton;
    var centerTitleText;
    var centerSubtitleText;

    centerTitleText = ListItemTitleTextWidget(
        titleText:
            "${account.accountFirstName[0].toUpperCase()}${account.accountFirstName.substring(1, account.accountFirstName.length)} ${account.accountLastName[0].toUpperCase()}${account.accountLastName.substring(1, account.accountLastName.length)}");

    centerSubtitleText = ListItemSubtitleTextWidget(
        subtitleText:
            "Connected since ${DateFormat.yMMMMd('en_US').format(connectedAccount.connectedAt.toDateTime())}",
        disableNeu: true,
        fontWeight: FontWeight.w400);

    if (connectedAccount.accountInterestedInConnection &&
        connectedAccount.connectedAccountInterestedInConnection) {
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
                      pushAccountConversation();
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
    } else {
      leadingIconButton = AccountIconButton(account, connectedAccount, () {
        toggleAccountInterest(connectedAccount);
      }).buildConnectedAccountIconButton(context);

      var unconnectedAccountWidget = Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: Column(
              children: [
                Theme(
                  data: ThemeData(
                    highlightColor: AppColors.backgroundPrimary(context),
                  ),
                  child: ListTile(
                    onTap: () {
                      pushAccountConversation();
                    },
                    title: Neumorphic(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      style: NeumorphicStyle(
                        color: AppColors.backgroundPrimary(context),
                        lightSource: NeumorphicTheme.isUsingDark(context)
                            ? LightSource.bottomRight
                            : LightSource.topLeft,
                        shadowLightColor: NeumorphicTheme.isUsingDark(context)
                            ? AppColors.gray600
                            : AppColors.backgroundSecondary(context),
                        // disableDepth: true,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(24)),
                        border: NeumorphicBorder(
                            color: AppColors.backgroundSecondary(context),
                            width: 0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 4.0),
                            child: centerTitleText,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: centerSubtitleText,
                          )
                        ],
                      ),
                    ),
                    trailing: leadingIconButton,
                    isThreeLine: false,
                    enableFeedback: true,
                    dense: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  ),
                ),
              ],
            ),
          ));

      return unconnectedAccountWidget;
    }
  }
}
