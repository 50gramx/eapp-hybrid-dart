import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
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
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
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
  /// internal instance of LocalNotifications
  static Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  @override
  void initState() {
    super.initState();
    // EthosAppFlowBob();
    _notificationsStream.listen((notification) {
      handleListeningMessages(notification);
    });
  }

  /// handler invoked inside localNotifications, which listens to new messages
  /// when the device receives a push notification based on metadata
  handleListeningMessages(LocalNotification message) async {
    if (message.type == "EthosAppFlowBob") {
      if (message.data["subType"] == "Loaded eApp") {
        print("loaded new app: ${navigationBarItems.length}");
        handleLoadedEApp();
      }
    }
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

  /*
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
  * */
  final List<AppFlow> appFlows = [
    AppFlow(
      index: 1,
      title: 'Identity',
      code: 50,
      iconData: FeatherIcons.shield,
      mainColor: AppColors.lightNeuPrimaryBackground,
      navigatorKey: GlobalKey<NavigatorState>(),
      firstPage: WebViewPage(index: 1, containingFlowTitle: 'Ethos Identity'),
    ),
  ];

  List<LeftNavigationTab> navigationBarItems = [];

  handleLoadedEApp() {
    print("handleLoadedEApp");
    navigationBarItems = [];
    EthosAppFlowBob.communityAppFlow.keys.forEach((appFlow) {
      EthosAppFlowBob.communityAppFlow[appFlow]?.forEach((flow) {
        navigationBarItems.add(LeftNavigationTab(
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
          },
        ));
      });
    });
    print("will set state: ${navigationBarItems.length}");
    setState(() {});
    print("set state done: ${navigationBarItems.length}");
  }

  @override
  Widget build(BuildContext context) {
    print("HomeScree:build: ${navigationBarItems.length}");
    var leftNavigationScaffold = AdaptiveLeftNavigationScaffold();

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
