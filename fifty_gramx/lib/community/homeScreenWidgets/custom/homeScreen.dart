import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/bottom/adaptiveBottomNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/bottom/tab/bottomNavigationTab.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/LeftNavigationBarSectionalItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/adaptiveLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/tab/LeftNavigationTab.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/connections/connectionsHomePage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/conversationsHomePage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/spaces/spacesHomePage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/web/webPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/EthosPodConfigurationPage.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/appFlow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// Contains our different pages flows and bottom navigation menu for
/// alternating between them.
///
/// It's called Screen — not Page — to avoid confusion, this one displays
/// Pages inside it.
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // EthosAppFlowBob();
  }

  setStatusBarTheme() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: NeumorphicTheme.isUsingDark(context)
          ? AppColors.gray900
          : AppColors.white,
      statusBarBrightness: NeumorphicTheme.isUsingDark(context)
          ? Brightness.light
          : Brightness.dark,
      statusBarIconBrightness: NeumorphicTheme.isUsingDark(context)
          ? Brightness.light
          : Brightness.dark,
    ));
  }

  final List<AppFlow> appFlows = [
    AppFlow(
      index: 0,
      title: 'Conversations',
      code: 50,
      iconData: FeatherIcons.messageCircle,
      mainColor: AppColors.lightNeuPrimaryBackground,
      navigatorKey: GlobalKey<NavigatorState>(),
      firstPage:
          ConversationsHomePage(index: 1, containingFlowTitle: 'Conversations'),
    ),
    AppFlow(
      index: 1,
      title: 'Spaces',
      code: 50,
      iconData: FeatherIcons.hexagon,
      mainColor: AppColors.lightNeuPrimaryBackground,
      navigatorKey: GlobalKey<NavigatorState>(),
      firstPage: SpacesHomePage(index: 1, containingFlowTitle: 'Spaces'),
    ),
    AppFlow(
      index: 2,
      title: 'Connections',
      code: 50,
      iconData: FeatherIcons.user,
      mainColor: AppColors.lightNeuPrimaryBackground,
      navigatorKey: GlobalKey<NavigatorState>(),
      firstPage: ConnectionsHomePage(index: 1),
    ),
    AppFlow(
      index: 3,
      title: 'Pods',
      code: 70,
      iconData: FeatherIcons.shield,
      mainColor: AppColors.lightNeuPrimaryBackground,
      navigatorKey: GlobalKey<NavigatorState>(),
      firstPage: EthosPodConfigurationPage(
        index: 1,
        containingFlowTitle: 'Pods',
      ),
    ),
    AppFlow(
      index: 4,
      title: 'Web',
      code: 50,
      iconData: FeatherIcons.shield,
      mainColor: AppColors.lightNeuPrimaryBackground,
      navigatorKey: GlobalKey<NavigatorState>(),
      firstPage: WebViewPage(index: 1, containingFlowTitle: 'Web'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var leftNavigationScaffold = AdaptiveLeftNavigationScaffold(
      navigationBarItems: appFlows
          .map(
            (flow) => LeftNavigationTab(
              leftNavigationBarSectionalItem: LeftNavigationBarSectionalItem(
                label: flow.title,
                code: flow.code,
                icon: Icon(flow.iconData,
                    color: AppColors.contentInversePrimary(context)),
              ),
              navigatorKey: flow.navigatorKey,
              initialPageBuilder: (context) {
                setStatusBarTheme();
                return flow.firstPage;
                if (flow.index == 0) {
                  return ConversationsHomePage(
                      index: 1, containingFlowTitle: flow.title);
                } else if (flow.index == 1) {
                  return SpacesHomePage(
                      index: 1, containingFlowTitle: flow.title);
                } else if (flow.index == 2) {
                  return ConnectionsHomePage(index: 1);
                } else if (flow.index == 3) {
                  return EthosPodConfigurationPage(
                    index: 1,
                    containingFlowTitle: flow.title,
                  );
                } else {
                  return WebViewPage(index: 1, containingFlowTitle: flow.title);
                }
              },
            ),
          )
          .toList(),
    );

    if (kIsWeb) {
      return leftNavigationScaffold;
    } else if (Platform.isAndroid || Platform.isIOS) {
      print("HomeScreen found mobile platform");
      return AdaptiveBottomNavigationScaffold(
        navigationBarItems: appFlows
            .map(
              (flow) => BottomNavigationTab(
                bottomNavigationBarItem: BottomNavigationBarItem(
                  label: flow.title,
                  icon: Icon(
                    flow.iconData,
                  ),
                ),
                navigatorKey: flow.navigatorKey,
                initialPageBuilder: (context) {
                  setStatusBarTheme();
                  return flow.firstPage;
                },
              ),
            )
            .toList(),
      );
    } else if (Platform.isMacOS || Platform.isWindows || Platform.isLinux) {
      print("HomeScreen found desktop platform");
      return leftNavigationScaffold;
    } else {
      return SizedBox();
    }
  }
}
