import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account_assistant.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/conversation/message/message_conversation.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Title/listItemSubtitleText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Title/listItemTitleText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/messaging/AccountAssistantConversationPage.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/pushHorizontalPage.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/services/identity/account/connectAccountService.dart';
import 'package:fifty_gramx/services/identity/accountAssistant/discoverAccountAssistantService.dart';
import 'package:fifty_gramx/services/product/conversation/message/messageConversationService.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class AssistantConnectionWidget extends StatefulWidget {
  const AssistantConnectionWidget({Key? key}) : super(key: key);

  @override
  State<AssistantConnectionWidget> createState() =>
      _AssistantConnectionWidgetState();
}

class _AssistantConnectionWidgetState extends State<AssistantConnectionWidget> {
  var centerTitleText;
  var centerSubtitleText;
  var accountAssistant = AccountAssistant.getDefault();
  AccountConnectedAccountAssistant selfConnectedAccountAssistant =
      AccountConnectedAccountAssistant.getDefault();
  bool isAccountNotFound = true;

  @override
  Widget build(BuildContext context) {
    if (isAccountNotFound == true &&
        accountAssistant.accountAssistantId == "") {
      centerTitleText =
          ListItemTitleTextWidget(titleText: "No assistant found");
      centerSubtitleText =
          ListItemSubtitleTextWidget(subtitleText: "We couldn't identify you.");
    } else {
      centerTitleText = ListItemTitleTextWidget(
        titleText: accountAssistant.accountAssistantName,
        disableNeu: true,
        fontWeight: FontWeight.w600,
        fontSize: 18,
      );
      centerSubtitleText =
          FutureBuilder<GetAccountAssistantLastMessageResponse>(
              future: MessageConversationService.getAccountAssistantLastMessage(
                  accountAssistant.accountAssistantId),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return ListItemSubtitleTextWidget(
                      subtitleText: "Say hello with actionable messages",
                      disableNeu: true,
                      fontWeight: FontWeight.w400);
                } else {
                  if (snap.hasData) {
                    if (snap.data!.isMessageSent) {
                      return ListItemSubtitleTextWidget(
                          subtitleText:
                              "${snap.data!.accountAssistantSentMessage.message}",
                          disableNeu: true,
                          fontWeight: FontWeight.w400);
                    } else {
                      return ListItemSubtitleTextWidget(
                          subtitleText:
                              "${snap.data!.accountAssistantReceivedMessage.message}",
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
    }

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 32),
          child: Align(
            alignment: Alignment.centerLeft,
            child: NeumorphicText(
              "PINNED CONVERSATIONS",
              style: NeumorphicStyle(
                color: AppColors.contentTertiary(context),
                lightSource: NeumorphicTheme.isUsingDark(context)
                    ? LightSource.bottomRight
                    : LightSource.topLeft,
                shadowLightColor: NeumorphicTheme.isUsingDark(context)
                    ? AppColors.gray600
                    : AppColors.backgroundSecondary(context),
                border: NeumorphicBorder(
                    color: AppColors.backgroundPrimary(context), width: 0.25),
              ),
              textAlign: TextAlign.start,
              textStyle: NeumorphicTextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  height: 1.25),
            ),
          ),
        ),
        Visibility(
          visible: !isAccountNotFound,
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
                        AppPushPage().pushHorizontalPage(
                            context,
                            AccountAssistantConversationPage(
                              accountAssistant: accountAssistant,
                            ));
                        print("onTapped");
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
              ),
            ),
          ),
        ),
        Visibility(
          visible: isAccountNotFound,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Access your ",
                      style: TextStyle(
                          color: AppColors.contentTertiary(context),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          height: 1.14285714),
                    ),
                    TextSpan(
                      text: "I AM ",
                      style: TextStyle(
                          color: AppColors.warning(context),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          height: 1.14285714),
                    ),
                    TextSpan(
                      text: "in ",
                      style: TextStyle(
                          color: AppColors.contentTertiary(context),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          height: 1.14285714),
                    ),
                    TextSpan(
                      text: "Connections ",
                      style: TextStyle(
                          color: AppColors.warning(context),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          height: 1.14285714),
                    ),
                    TextSpan(
                      text: "to discover your assistant.",
                      style: TextStyle(
                          color: AppColors.contentTertiary(context),
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          height: 1.14285714),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    updateAccountAssistantDetails();
    super.initState();
  }

  updateAccountAssistantDetails() async {
    Account account = await AccountData().readAccount();
    if (account.accountId != "") {
      var assistant =
          await DiscoverAccountAssistantService.getAccountAssistantByAccount(
              account);
      AccountConnectedAccountAssistant connectedAccountAssistant =
          (await ConnectAccountService
                  .getAccountSelfConnectedAccountAssistant())
              .connectedAccountAssistant;
      setState(() {
        selfConnectedAccountAssistant = connectedAccountAssistant;
        accountAssistant = assistant;
        isAccountNotFound = false;
      });
    } else {
      setState(() {
        isAccountNotFound = true;
      });
    }
  }
}
