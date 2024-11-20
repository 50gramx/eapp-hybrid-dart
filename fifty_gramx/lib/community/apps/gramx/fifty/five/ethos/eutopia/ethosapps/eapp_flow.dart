import 'package:fifty_gramx/community/apps/gramx/eighty/eight/ethos/connect/BotPressConversationsPage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/eutopia_home_page.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/two/ethos/pay/EthosCoinConfigurationPage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/browser/RegistrationForms.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/connections/connectionsHomePage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/conversationsHomePage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/spaces/spacesHomePage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/web/webPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/bp/ai/coming_soon.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/entities/AddEntityPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods-gpu-cli/gpu_cli_page.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods-gpu-manage/gpu_manage_page.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods-gpu-pricing/pods_gpu_pricing_page.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods-gpu-template/gpu_template_page.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/EthosPodConfigurationPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/MachineConfigurationPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/pages/deployment_manage_page.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/pages/deployments_home_page.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/gs/weather/coming_soon.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/appFlow.dart';
import 'package:fifty_gramx/community/onboarding/getStartedWidget.dart';
import 'package:fifty_gramx/community/onboarding/startScreen.dart';
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
  AppFlow getAppFlow(int communityCode, String title,
      {String orgName = "ethos",
      String collarNameCode = "DC5000000000",
      String pageNameCode = "EAIP-1001",
      String domainIdentifier = "",
      Widget firstPage = const SizedBox(),
      Map<String, String> pageIdentifiers = const {}}) {
    print("getAppFlow: $communityCode, $title");
    int index = 99;
    String appTitle;
    String appName = title;

    IconData iconData = FeatherIcons.activity;
    Color defaultMainColor = AppColors.lightNeuPrimaryBackground;

    if (communityCode == 50 && title == 'identity') {
      index = 1;
      appTitle = "Identity";
      iconData = FeatherIcons.user;
      firstPage = WebViewPage(index: 1, containingFlowTitle: appTitle);
    } else if (communityCode == 50 && title == 'get_started') {
      index = 5002;
      appTitle = "Get Started";
      iconData = FeatherIcons.logIn;
      firstPage = GetStartedWidget();
    } else if (communityCode == 50 && title == 'site') {
      index = 5003;
      appTitle = "Ethos Site";
      iconData = FeatherIcons.logIn;
      firstPage = StartScreen();
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
      firstPage = SpacesHomePage(
        index: index,
        containingFlowTitle: appTitle,
        focusPaneShift: (t) {},
      );
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
      if (collarNameCode == "DC499999999") {
        if (pageNameCode == "EAIP1001") {
          appTitle = "Deployments ${domainIdentifier.substring(0, 5)}";
          appName = "Deployments ${domainIdentifier.substring(0, 5)}";
          iconData = FeatherIcons.heart;
          index = AppFlowManager.instance.reservePageIndex();
          firstPage = DC499999999EAIP1001(
            domainId: domainIdentifier,
          );
        } else if (pageNameCode == "EAIP1002") {
          appTitle = "Deployment Pods ${domainIdentifier.substring(0, 5)}";
          appName = "Deployments Pods ${domainIdentifier.substring(0, 5)}";
          iconData = FeatherIcons.box;
          index = AppFlowManager.instance.reservePageIndex();
          firstPage = DC499999999EAIP1002(
            domainId: domainIdentifier,
            pageIdentifiers: pageIdentifiers,
          );
        }
      }

      // firstPage = EthosPodsLandingPage(index: index, containingFlowTitle: appTitle);
    } else if (communityCode == 55 && title == 'eutopia') {
      index = 55101;
      appTitle = "eUtopia";
      iconData = FeatherIcons.box;
      firstPage = CarbonApp();
      // firstPage = EthosPodsLandingPage(index: index, containingFlowTitle: appTitle);
    } else if (communityCode == 70 && title == 'nodes') {
      index = 70101;
      appTitle = "Nodes";
      iconData = FeatherIcons.monitor;
      firstPage = MachineConfigurationPage();
      // firstPage = EthosPodsLandingPage(index: index, containingFlowTitle: appTitle);
    } else if (communityCode == 70 && title == 'pods-gpu-pricing') {
      index = 70091;
      appTitle = "GPU Cloud Pricing";
      iconData = FeatherIcons.cpu;
      firstPage = GPUDetailsColumn();
      // firstPage = EthosPodsLandingPage(index: index, containingFlowTitle: appTitle);
    } else if (communityCode == 70 && title == 'pods-gpu-template') {
      index = 70092;
      appTitle = "GPU Cloud Template";
      iconData = FeatherIcons.hexagon;
      firstPage = PodCreationPage();
    } else if (communityCode == 70 && title == 'pods-gpu-cli') {
      index = 70093;
      appTitle = "GPU CLI";
      iconData = FeatherIcons.terminal;
      firstPage = GPUCLIPage(
        host: "13.200.238.161",
        port: 30022,
        username: "root",
        password: "root",
      );
    } else if (communityCode == 70 && title == 'pods-gpu-manage') {
      index = 70094;
      appTitle = "Manage GPU Pods";
      iconData = FeatherIcons.cloud;
      firstPage = PodListPage();
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
      // firstPage = BrowsePage(index: index);
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
      communityCode: communityCode,
      orgName: orgName,
      appName: appName,
      code: communityCode,
      collarNameCode: collarNameCode,
      pageNameCode: pageNameCode,
      identifier: domainIdentifier,
      pageIdentifiers: pageIdentifiers,
      iconData: iconData,
      mainColor: defaultMainColor,
      navigatorKey: GlobalKey<NavigatorState>(),
      firstPage: firstPage,
    );
  }
}
