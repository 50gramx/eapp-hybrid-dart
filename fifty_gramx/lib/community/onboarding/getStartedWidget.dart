import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/progress/progressHeadingListTile.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/adaptiveLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/homeScreen.dart';
import 'package:fifty_gramx/community/onboarding/gettingStartedUniverseColumnWidget.dart';
import 'package:fifty_gramx/constants.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:fifty_gramx/ui/base_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// This is the stateful widget that the main application instantiates.
class GetStartedWidget extends StatefulWidget {
  const GetStartedWidget(
      {Key? key,
      this.isAccountLoggedIn = false,
      this.completedSuccessfulSignIn})
      : super(key: key);

  final bool isAccountLoggedIn;

  @override
  State<GetStartedWidget> createState() => _GetStartedWidgetState();

  final VoidCallback? completedSuccessfulSignIn;
}

class _GetStartedWidgetState extends State<GetStartedWidget> {
  // Universe : Data Attributes
  bool isCountrySelected = false;
  bool isSelectingCountry = true;

  /// An internal instance of LocalNotifications.
  static Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  final selectingUniverseHeadingKey = new GlobalKey();

  completedSelectingUniverseCallback() async {
    print("completedSelectingUniverseCallback");
    if (Constants().eAppEnv == "com.50gramx") {
      if (widget.completedSuccessfulSignIn != null) {
        widget.completedSuccessfulSignIn!();
      }
    } else {
      setState(() {
        // update to select galaxy
        isSelectingCountry = false;
        isCountrySelected = true;
        isSelectingGalaxy = true;
      });
      // pushToHomeScreenWidget();
      EthosAppFlowBob().unloadAppOnTheGo(communityCode: 50, appIndex: 5002);
      EthosAppFlowBob().loadAppOnTheGo(
          appName: "identity",
          orgName: "ethos",
          communityCode: 50,
          appIndex: 1);
      EthosAppFlowBob().loadAppOnTheGo(
          appName: "pay", orgName: "ethos", communityCode: 52, appIndex: 5);
      EthosAppFlowBob().loadAppOnTheGo(
          appName: "pods-gpu-template",
          orgName: "ethos",
          communityCode: 70,
          appIndex: 70092);
      NotificationsBloc.instance.newNotification(LocalNotification(
          "EthosAppFlowBob", {"subType": "Open eApp", "appSectionIndex": 3}));
    }
  }

  bool isGalaxySelected = false;
  bool isSelectingGalaxy = false; // warn: false
  final selectingGalaxyHeadingKey = new GlobalKey();

  // Helper functions
  pushToHomeScreenWidget() async {
    print("pushToHomeScreenWidget");
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
    // await LocalServices().loadLocalServices();
  }

  checkLogin() async {
    bool isAccountLoggedIn = await AccountData().accountPresent();
    if (isAccountLoggedIn) {
      completedSelectingUniverseCallback();
    }
  }

  /// handler invoked inside localNotifications, which listens to new messages
  /// when the device receives a push notification based on metadata
  _handleListeningMessages(LocalNotification message) async {
    print(
        "EutopiaLeftNavigationScaffoldState: Received notification: $message");
    if (message.type == "EthosAppFlowBob") {
      if (message.data["subType"] == "AccountSign") {
        print("AccountSign");
        if (message.data['status'] == true) {
          completedSelectingUniverseCallback();
        }
      }
    }
  }

  @override
  void initState() {
    setState(() {
      isSelectingCountry = true;
    });

    // Listen to notifications and handle them.
    _notificationsStream.listen(_handleListeningMessages);

    checkLogin();
    if (widget.isAccountLoggedIn) {
      completedSelectingUniverseCallback();
    }

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
          backgroundColor: AppColors.backgroundPrimary(context),
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  key: selectingUniverseHeadingKey,
                  width: 40,
                  height: 40,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 32, right: 32, top: 16, bottom: 16),
                    child: RichText(
                      text: TextSpan(
                        text: "\"Ethosai is the first AI capable of"
                            " accurate semantic question answering "
                            "on enterprise-grade datasets.\"",
                        style: TextStyle(
                            color: AppColors.contentSecondary(context),
                            fontSize: 16,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w300,
                            height: 1.14285714),
                      ),
                    ),
                  ),
                ),
                ProgressHeadingListTile(
                    // key: selectingUniverseHeadingKey,
                    isTopMostTile: true,
                    isHeadingActive: isSelectingCountry,
                    isProgressed: isCountrySelected,
                    isLastMostTile: true,
                    headingTitle: "Getting Started"),
                GettingStartedUniverseColumnWidget(
                  isSelectingCountry: isSelectingCountry,
                  selectingUniverseHeadingKey: selectingUniverseHeadingKey,
                  completedSelectingUniverseCallback: () async {
                    await completedSelectingUniverseCallback();
                  },
                ),
                // ProgressHeadingListTile(
                //   key: selectingGalaxyHeadingKey,
                //   isHeadingActive: isSelectingGalaxy,
                //   isProgressed: isGalaxySelected,
                //   headingTitle: "Confirming eGalaxy",
                //   isLastMostTile: true,
                // ),
                // GettingStartedGalaxyColumnWidget(
                //     isSelectingGalaxy: isSelectingGalaxy,
                //     selectingGalaxyHeadingKey: selectingGalaxyHeadingKey),
                SizedBox(
                  height: 64,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
