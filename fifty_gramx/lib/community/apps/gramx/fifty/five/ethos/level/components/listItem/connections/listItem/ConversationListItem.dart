import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Title/listItemSubtitleText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Title/listItemTitleText.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// A ListItem that contains data to display a heading.
class ConversationListItemWidget extends StatelessWidget {
  final Widget senderIconButton;
  final String senderName;
  final String lastMessage;
  final VoidCallback pushContactConversation;

  ConversationListItemWidget(
      {Key? key,
      required this.senderIconButton,
      required this.senderName,
      required this.lastMessage,
      required this.pushContactConversation});

  @override
  Widget build(BuildContext context) {
    var listItemTitleText = ListItemTitleTextWidget(titleText: senderName);
    var listItemSubtitleText =
        ListItemSubtitleTextWidget(subtitleText: lastMessage);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
        child: Theme(
          data: ThemeData(
            highlightColor: AppColors.backgroundPrimary(context),
          ),
          child: ListTile(
            onTap: () {
              if (kDebugMode) {
                print("Tapped inside ConversationListItemWidget!");
              }
              pushContactConversation();
            },
            leading: senderIconButton,
            title: listItemTitleText,
            subtitle: listItemSubtitleText,
            isThreeLine: false,
            enableFeedback: true,
            dense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
          ),
        ),
      ),
    );
  }
}
