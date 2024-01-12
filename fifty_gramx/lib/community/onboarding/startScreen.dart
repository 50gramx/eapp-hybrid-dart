/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/homeScreen.dart';
import 'package:fifty_gramx/community/onboarding/getStartedWidget.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/ui/base_widget.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:permission_handler/permission_handler.dart';

/// This is the stateful widget that the main application instantiates.
class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  getStartedButtonOnPressed() async {
    print("getStartedButtonOnPressed");
    if (Platform.isAndroid || Platform.isIOS) {
      print("android or ios");
      if (await Permission.contacts.request().isGranted) {
        print("android or ios");
        pushToGetStartedWidget();
      } else if (await Permission.contacts.isPermanentlyDenied) {
        // The user opted to never again see the permission request dialog for this
        // app. The only way to change the permission's status now is to let the
        // user manually enables it in the system settings.
        openAppSettings();
      } else {
        print(await Permission.contacts.status);
        await Permission.contacts.request();
        print("contacts permissions not granted");
      }
    } else if (Platform.isWindows) {
      pushToGetStartedWidget();
    } else if (Platform.isMacOS) {
      pushToGetStartedWidget();
    }
  }

  // Helper functions
  late List<Widget> ethosaiFeaturesParaRows;
  List<String> ethosaiFeaturesParaTexts = [
    "Unified",
    "Simple",
    "Secure",
  ];

  List<IconData> ethosaiFeaturesParaIcons = [
    FeatherIcons.users,
    FeatherIcons.zap,
    FeatherIcons.info,
    FeatherIcons.award,
    FeatherIcons.clock,
    FeatherIcons.shield,
    FeatherIcons.shield,
  ];

  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.backgroundPrimary(context),
      statusBarBrightness: NeumorphicTheme.isUsingDark(context)
          ? Brightness.light
          : Brightness.dark,
      statusBarIconBrightness: NeumorphicTheme.isUsingDark(context)
          ? Brightness.light
          : Brightness.dark,
    ));
    checkIfUserSigned();
    super.initState();
  }

  bool signedIn = false;

  checkIfUserSigned() async {
    // Create a stopwatch and start it
    final stopwatch = Stopwatch()..start();

    signedIn = await AccountData().accountAvailable();

    // Stop the stopwatch
    stopwatch.stop();

    // Print the elapsed time in milliseconds
    print(
        'Time elapsed to check accountAvailable: ${stopwatch.elapsedMilliseconds} ms');
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ethosaiFeaturesParaRows = [];
    for (var paraIndex = 0;
        paraIndex < ethosaiFeaturesParaTexts.length;
        paraIndex++) {
      ethosaiFeaturesParaRows.add(Row(
        children: [
          Expanded(
            child: Container(
              child: Padding(
                padding:
                    EdgeInsets.only(left: 8, right: 16, top: 16, bottom: 16),
                child: Text(
                  '${ethosaiFeaturesParaTexts[paraIndex]}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.contentPrimary(context),
                      fontSize: 24,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      height: 1.14285714),
                ),
              ),
            ),
          ),
        ],
      ));
    }
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
            backgroundColor: AppColors.backgroundPrimary(context),
            body: Container(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: 40,
                        height: 40,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Neumorphic(
                              style: NeumorphicStyle(
                                lightSource:
                                    NeumorphicTheme.isUsingDark(context)
                                        ? LightSource.bottomRight
                                        : LightSource.topLeft,
                                shadowLightColor: NeumorphicTheme.isUsingDark(
                                        context)
                                    ? AppColors.gray600
                                    : AppColors.backgroundSecondary(context),
                                shape: NeumorphicShape.flat,
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(24)),
                                color: AppColors.backgroundPrimary(context),
                                border: NeumorphicBorder(
                                  isEnabled: true,
                                  color: AppColors.backgroundPrimary(context),
                                  width: 2,
                                ),
                              ),
                              margin: const EdgeInsets.fromLTRB(32, 8, 32, 8),
                              child: Container(
                                child: Column(children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 16,
                                                left: 16,
                                                right: 16,
                                                bottom: 4),
                                            child: RichText(
                                              text: TextSpan(
                                                text: "50GRAMx Ethosverse",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .contentPrimary(
                                                            context),
                                                    fontSize: 22,
                                                    fontFamily: "Montserrat",
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.14285714),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 16,
                                                right: 16,
                                                top: 4,
                                                bottom: 16),
                                            child: RichText(
                                              text: TextSpan(
                                                text:
                                                    "Collection of communities that share a common ethos and vision",
                                                style: TextStyle(
                                                    color: AppColors
                                                        .contentSecondary(
                                                            context),
                                                    fontSize: 16,
                                                    fontFamily: "Montserrat",
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.14285714),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: ethosaiFeaturesParaRows,
                                  ),
                                  Row(children: [
                                    Expanded(
                                      child: NeumorphicButton(
                                          provideHapticFeedback: true,
                                          onPressed: () {
                                            getStartedButtonOnPressed();
                                          },
                                          style: NeumorphicStyle(
                                            lightSource:
                                                NeumorphicTheme.isUsingDark(
                                                        context)
                                                    ? LightSource.bottomRight
                                                    : LightSource.topLeft,
                                            shadowLightColor: NeumorphicTheme
                                                    .isUsingDark(context)
                                                ? AppColors.gray600
                                                : AppColors.backgroundSecondary(
                                                    context),
                                            shape: NeumorphicShape.flat,
                                            boxShape:
                                                NeumorphicBoxShape.roundRect(
                                                    BorderRadius.circular(24)),
                                            color: AppColors.contentPrimary(
                                                context),
                                            border: NeumorphicBorder(
                                              isEnabled: true,
                                              color:
                                                  AppColors.backgroundPrimary(
                                                      context),
                                              width: 2,
                                            ),
                                          ),
                                          padding: const EdgeInsets.all(14.0),
                                          margin: const EdgeInsets.fromLTRB(
                                              6, 6, 6, 6),
                                          child: Text(
                                            "Get Started",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: AppColors
                                                    .contentInversePrimary(
                                                        context),
                                                fontSize: 14,
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w500),
                                          )),
                                    )
                                  ]),
                                ]),
                              ))),
                      SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }

  pushToGetStartedWidget() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => GetStartedWidget(
                  isAccountLoggedIn: signedIn,
                )));
  }

  pushToHomeScreenWidget() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
