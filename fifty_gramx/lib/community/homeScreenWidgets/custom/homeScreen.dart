import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/LeftNavigationBarSectionalItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/adaptiveLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/tab/LeftNavigationTab.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/localServices.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
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
    LocalServices().user();
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

  List<LeftNavigationTab> navigationBarItems = [];

  handleLoadedEApp() {
    print("homeScreen: handleLoadedEApp");
    navigationBarItems = [];
    EthosAppFlowBob.communityAppFlow.keys.forEach((appFlow) {
      EthosAppFlowBob.communityAppFlow[appFlow]?.forEach((flow) {
        navigationBarItems.add(LeftNavigationTab(
          leftNavigationBarSectionalItem: LeftNavigationBarSectionalItem(
            label: flow.title,
            code: flow.code,
            icon: flow.iconData,
          ),
          navigatorKey: flow.navigatorKey,
          initialPageBuilder: (context) {
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
    return SafeArea(child: AdaptiveLeftNavigationScaffold());
  }
}
