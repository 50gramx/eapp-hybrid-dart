import 'package:fifty_gramx/community/apps/gramx/eighty/eight/ethos/connect/BotPressConversationsPage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Container/NeuContainer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/two/ethos/pay/EthosCoinConfigurationPage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/browser/GPUDetailsGrid.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/browser/GPUTemplate.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/browser/RegistrationForms.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/connections/connectionsHomePage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/domains/home_page.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/conversationsHomePage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/spaces/spacesHomePage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/web/webPage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/browser/tab.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/bp/ai/coming_soon.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/entities/AddEntityPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/EthosPodConfigurationPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/gs/weather/coming_soon.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/swiggy/instamart/coming_soon.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/appFlow.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class EappFlow {
  /// Creates an [AppFlow] instance for a given community.
  ///
  /// This method encapsulates the creation of an [AppFlow] instance, which represents the flow of an app within a specified community.
  /// The AppFlow is initialized with predefined values for index, title, icon, color, and the first page of the app flow.
  /// The community code is passed as a parameter to this method to ensure the AppFlow is associated with the correct community.
  ///
  /// Params:
  /// - [communityCode]: The code representing the community. This code is used to set the `code` field of the [AppFlow] instance.
  ///
  /// Returns:
  /// - An [AppFlow] instance with the specified `communityCode`, and other fields initialized to predefined values.
  ///
  /// Usage:
  /// ```dart
  /// final appFlow = _createAppFlow(communityCode);
  /// ```
  ///
  /// This method can be used whenever an [AppFlow] instance is needed for a community, ensuring a consistent setup for the app flow across different parts of the application.
  AppFlow getAppFlow(int communityCode, String title) {
    int index = 99;
    String appTitle;
    IconData iconData = FeatherIcons.activity;
    Color defaultMainColor = AppColors.lightNeuPrimaryBackground;
    Widget firstPage = SizedBox();

    if (communityCode == 50 && title == 'identity') {
      index = 1;
      appTitle = "Identity";
      iconData = FeatherIcons.user;
      firstPage = WebViewPage(index: 1, containingFlowTitle: appTitle);
    } else if (communityCode == 50 && title == 'domains') {
      index = 5001;
      appTitle = "Domains";
      iconData = FeatherIcons.globe;
      firstPage = HomePage(
        index: index,
        containingFlowTitle: appTitle,
      );
    } else if (communityCode == 50 && title == 'conversations') {
      index = 2;
      appTitle = "Conversations";
      iconData = FeatherIcons.messageCircle;
      firstPage = ConversationsHomePage(
        index: index,
        containingFlowTitle: appTitle,
      );
    } else if (communityCode == 50 && title == 'connections') {
      index = 3;
      appTitle = "Connections";
      iconData = FeatherIcons.users;
      firstPage = ConnectionsHomePage(index: index);
    } else if (communityCode == 50 && title == 'browser') {
      index = 5009;
      appTitle = "browser";
      iconData = FeatherIcons.users;
      firstPage =
          RegistrationAndGPUDetails(); //GPUTemplate();//RegistrationAndGPUDetails();//GPUDetailsGrid();//BrowserTab(url:'https://www.50gramx.com');
    } else if (communityCode == 50 && title == 'knowledge_spaces') {
      index = 4;
      appTitle = "Knowledge";
      iconData = FeatherIcons.shield;
      firstPage = SpacesHomePage(index: index, containingFlowTitle: appTitle);
    } else if (communityCode == 52 && title == 'pay') {
      index = 5;
      appTitle = "Pay";
      iconData = FeatherIcons.dollarSign;
      firstPage = EthosCoinConfigurationPage();
    } else if (communityCode == 70 && title == 'pods') {
      index = 6;
      appTitle = "Pods";
      iconData = FeatherIcons.box;
      firstPage = EthosPodConfigurationPage(
          index: index, containingFlowTitle: appTitle);
      // firstPage = EthosPodsLandingPage(index: index, containingFlowTitle: appTitle);
    } else if (communityCode == 70 && title == 'pods-gpu-pricing') {
      index = 70091;
      appTitle = "Ethos Pods GPU Pricing";
      iconData = FeatherIcons.box;
      firstPage = GPUDetailsColumn();
      // firstPage = EthosPodsLandingPage(index: index, containingFlowTitle: appTitle);
    } else if (communityCode == 70 && title == 'weather') {
      index = 7002;
      appTitle = "Weather";
      iconData = FeatherIcons.box;
      firstPage = WeatherHomePage(index: index, containingFlowTitle: appTitle);
    } else if (communityCode == 70 && title == 'ai') {
      index = 7003;
      appTitle = "Self AI";
      iconData = FeatherIcons.box;
      firstPage = BaibhavAIPage(index: index, containingFlowTitle: appTitle);
    } else if (communityCode == 70 && title == 'instamart') {
      index = 7009;
      appTitle = "Instamart";
      iconData = FeatherIcons.shoppingCart;
      firstPage = BrowsePage(index: index);
    } else if (communityCode == 70 && title == 'entities') {
      index = 7001;
      appTitle = "Entities";
      iconData = FeatherIcons.anchor;
      firstPage = AddEntityPage(index: index, containingFlowTitle: appTitle);
    } else if (communityCode == 88 && title == 'connect') {
      index = 7;
      appTitle = "Patel";
      iconData = FeatherIcons.messageCircle;
      firstPage = BotPressConversationsPage(
          index: index, containingFlowTitle: appTitle);
    } else {
      index = 999;
      appTitle = "50GRAMx Boundaries";
      iconData = FeatherIcons.watch;
      firstPage = SizedBox();
    }
    return AppFlow(
      index: index,
      title: appTitle == '' ? title : appTitle,
      code: communityCode,
      iconData: iconData,
      mainColor: defaultMainColor,
      navigatorKey: GlobalKey<NavigatorState>(),
      firstPage: firstPage,
    );
  }
}
