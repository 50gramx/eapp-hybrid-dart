import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/top/adaptiveTopNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/top/tab/TopNavigationBarSectionalItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/top/tab/topNavigationTab.dart';
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
class WebScreen extends StatefulWidget {
  @override
  _WebScreenState createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  @override
  void initState() {
    super.initState();
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
      title: 'Identity',
      code: 50,
      iconData: FeatherIcons.user,
      mainColor: AppColors.lightNeuPrimaryBackground,
      navigatorKey: GlobalKey<NavigatorState>(),
      firstPage:
          ConversationsHomePage(index: 1, containingFlowTitle: 'Identity'),
    ),
    AppFlow(
      index: 1,
      title: 'Pay',
      code: 52,
      iconData: FeatherIcons.dollarSign,
      mainColor: AppColors.lightNeuPrimaryBackground,
      navigatorKey: GlobalKey<NavigatorState>(),
      firstPage: SpacesHomePage(index: 1, containingFlowTitle: 'Pay'),
    ),
    AppFlow(
      index: 2,
      title: 'Pods',
      code: 70,
      iconData: FeatherIcons.cloud,
      mainColor: AppColors.lightNeuPrimaryBackground,
      navigatorKey: GlobalKey<NavigatorState>(),
      firstPage: ConnectionsHomePage(index: 1),
    )
  ];

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return AdaptiveTopNavigationScaffold(
        navigationBarItems: appFlows
            .map(
              (flow) => TopNavigationTab(
                topNavigationBarSectionalItem: TopNavigationBarSectionalItem(
                  label: flow.title,
                  code: flow.code,
                  icon: Icon(flow.iconData,
                      color: AppColors.contentInversePrimary(context)),
                ),
                navigatorKey: flow.navigatorKey,
                initialPageBuilder: (context) {
                  setStatusBarTheme();
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
                    return WebViewPage(
                        index: 1, containingFlowTitle: flow.title);
                  }
                },
              ),
            )
            .toList(),
      );
    } else {
      return SizedBox();
    }
  }
}
