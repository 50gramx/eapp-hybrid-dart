import 'dart:async';
import 'dart:ui';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/progress/progressHeadingListTile.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/homeScreen.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/localServices.dart';
import 'package:fifty_gramx/community/onboarding/gettingStartedUniverseColumnWidget.dart';
import 'package:fifty_gramx/constants.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:fifty_gramx/ui/base_widget.dart';
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
    if (Constants().eAppEnv == "com.50gramx") {
      if (widget.completedSuccessfulSignIn != null) {
        LocalServices().user();
        widget.completedSuccessfulSignIn!();
        Navigator.pop(context);
      }
    } else {
      setState(() {
        // update to select galaxy
        isSelectingCountry = false;
        isCountrySelected = true;
        isSelectingGalaxy = true;
      });
      // pushToHomeScreenWidget();
      AppFlowManager.instance
          .unloadAppOnTheGo(communityCode: 50, appIndex: 5002);
      AppFlowManager.instance.loadAppOnTheGo(
          appName: "identity",
          orgName: "ethos",
          communityCode: 50,
          appIndex: 1);
      AppFlowManager.instance.loadAppOnTheGo(
          appName: "pay", orgName: "ethos", communityCode: 52, appIndex: 5);
      AppFlowManager.instance.loadAppOnTheGo(
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
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
    // await LocalServices().loadLocalServices();
  }

  checkLogin() async {
    bool isAccountLoggedIn = await AccountData().isValid();
    if (isAccountLoggedIn) {
      completedSelectingUniverseCallback();
    }
  }

  /// handler invoked inside localNotifications, which listens to new messages
  /// when the device receives a push notification based on metadata
  _handleListeningMessages(LocalNotification message) async {
    if (message.type == "EthosAppFlowBob") {
      if (message.data["subType"] == "AccountSign") {
        if (message.data['status'] == true) {
          completedSelectingUniverseCallback();
        }
      }
    }
  }

  final List<Map<String, String>> quotes = [
    {
      "text":
          "With 50GRAMx Ethos Actions, we're not just building technology, we're crafting the future of interaction in a decentralized world.",
      "author": "- Amit Khetan, founder of 50GRAMx"
    },
    {
      "text": "Decentralization is the future of the internet.",
      "author": "\n- Vitalik Buterin, co-founder of Ethereum"
    },
    {
      "text":
          "Decentralization is the only way to ensure that our digital infrastructure is secure, private, and free.",
      "author": "- Tim Berners-Lee, inventor of the World Wide Web"
    },
    {
      "text":
          "The power of the Web is in its universality. Access by everyone regardless of disability is an essential aspect.",
      "author":
          "- Brian Behlendorf, a primary developer of the Apache Web Server"
    },
    {
      "text":
          "Decentralization is the only way to ensure that our digital data is our own.",
      "author": "- Bruce Schneier, security technologist"
    },
  ];

  int _currentIndex = 0;
  late Timer _timer;

  @override
  void initState() {
    _startQuoteRotation();
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

  void _startQuoteRotation() {
    _timer = Timer.periodic(Duration(seconds: 9), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % quotes.length;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
        child: Center(
          child: Neumorphic(
            style: NeumorphicStyle(
              lightSource: NeumorphicTheme.isUsingDark(context)
                  ? LightSource.bottomRight
                  : LightSource.topLeft,
              shadowLightColor: NeumorphicTheme.isUsingDark(context)
                  ? AppColors.gray600
                  : AppColors.backgroundSecondary(context),
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
              color: AppColors.backgroundPrimary(context),
              border: NeumorphicBorder(
                isEnabled: true,
                color: AppColors.backgroundPrimary(context),
                width: 2,
              ),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.height * 0.7,
              child: BaseWidget(
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
                              child: Container(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 32, right: 32, top: 16, bottom: 4),
                                  child: RichText(
                                    text: TextSpan(
                                      text:
                                          "Ethos Identity - One Account. Unlimited Access.",
                                      style: TextStyle(
                                          color:
                                              AppColors.contentPrimary(context),
                                          fontSize: 18,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w600,
                                          height: 1.14285714),
                                    ),
                                  ),
                                ),
                              )),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 120,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 32, right: 32, top: 4, bottom: 16),
                                  child: AnimatedSwitcher(
                                    duration: Duration(milliseconds: 500),
                                    transitionBuilder: (child, animation) {
                                      return FadeTransition(
                                          opacity: animation, child: child);
                                    },
                                    child: RichText(
                                      key: ValueKey<int>(_currentIndex),
                                      maxLines: 6,
                                      text: TextSpan(
                                        text:
                                            "\"${quotes[_currentIndex]['text']}\"\n\n",
                                        style: TextStyle(
                                          color: AppColors.contentSecondary(
                                              context),
                                          fontSize: 16,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w300,
                                          height: 1.4,
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                "${quotes[_currentIndex]['author']}",
                                            style: TextStyle(
                                              color: AppColors.contentSecondary(
                                                  context),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )),
                          ProgressHeadingListTile(
                              // key: selectingUniverseHeadingKey,
                              isTopMostTile: true,
                              isHeadingActive: isSelectingCountry,
                              isProgressed: isCountrySelected,
                              isLastMostTile: true,
                              headingTitle: "Getting Started"),
                          GettingStartedUniverseColumnWidget(
                            isSelectingCountry: isSelectingCountry,
                            selectingUniverseHeadingKey:
                                selectingUniverseHeadingKey,
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
              ),
            ),
          ),
        ));
  }
}
