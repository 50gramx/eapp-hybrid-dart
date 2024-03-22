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
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:carousel_slider/carousel_slider.dart';

/// This is the stateful widget that the main application instantiates.
class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  getStartedButtonOnPressed() async {
    print("getStartedButtonOnPressed");
    if (kIsWeb) {
      pushToGetStartedWidget();
    }
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

  // Legal, Health, Education, Finance, Interactions, Automation,
  // Management, Marketing, Machine, Intelligence, Entertainment, Travel

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
          body: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Neumorphic(
                        style: NeumorphicStyle(
                          lightSource: NeumorphicTheme.isUsingDark(context)
                              ? LightSource.bottomRight
                              : LightSource.topLeft,
                          shadowLightColor: NeumorphicTheme.isUsingDark(context)
                              ? AppColors.gray600
                              : AppColors.backgroundSecondary(context),
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.only(
                                  bottomLeft: Radius.circular(300),
                                  bottomRight: Radius.circular(300))),
                          color: AppColors.backgroundPrimary(context),
                          border: NeumorphicBorder(
                            isEnabled: true,
                            color: AppColors.backgroundPrimary(context),
                            width: 2,
                          ),
                          depth: -8,
                        ),
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: 0.7 *
                                          MediaQuery.of(context).size.width,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 32,
                                            left: 16,
                                            right: 16,
                                            bottom: 4),
                                        child: RichText(
                                          textAlign: TextAlign.center,
                                          text: TextSpan(
                                            text:
                                                "Unlock Professional Excellence with 50GRAMx Galaxy",
                                            style: TextStyle(
                                                color: AppColors.contentPrimary(
                                                    context),
                                                fontSize: 48,
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w700,
                                                height: 1.14285714),
                                          ),
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width:
                                        0.7 * MediaQuery.of(context).size.width,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 16,
                                          right: 16,
                                          top: 4,
                                          bottom: 16),
                                      child: RichText(
                                        textAlign: TextAlign.center,
                                        text: TextSpan(
                                          text:
                                              "Choose 50GRAMx Galaxy for a Seamless Interaction with Private and Open Information, Services, Products or Things Domains",
                                          style: TextStyle(
                                              color: AppColors.contentSecondary(
                                                  context),
                                              fontSize: 22,
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
                            Align(
                              alignment: Alignment.center,
                              child: NeumorphicButton(
                                  provideHapticFeedback: true,
                                  onPressed: () {
                                    getStartedButtonOnPressed();
                                  },
                                  style: NeumorphicStyle(
                                    lightSource:
                                        NeumorphicTheme.isUsingDark(context)
                                            ? LightSource.bottomRight
                                            : LightSource.topLeft,
                                    shadowLightColor:
                                        NeumorphicTheme.isUsingDark(context)
                                            ? AppColors.gray600
                                            : AppColors.backgroundSecondary(
                                                context),
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(24)),
                                    color: AppColors.contentPrimary(context),
                                    border: NeumorphicBorder(
                                      isEnabled: true,
                                      color:
                                          AppColors.backgroundPrimary(context),
                                      width: 2,
                                    ),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 25),
                                  margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
                                  child: Text(
                                    "Reserve Now",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: AppColors.contentInversePrimary(
                                            context),
                                        fontSize: 24,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w600),
                                  )),
                            ),
                          ]),
                        ))),
                SizedBox(height: 32),

                // Professional Objectives Carousel
                Neumorphic(
                  style: NeumorphicStyle(
                      lightSource: NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor: NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(context),
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(25)),
                      color: AppColors.backgroundPrimary(context),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color: AppColors.backgroundPrimary(context),
                        width: 2,
                      ),
                      disableDepth: true),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CarouselSlider(
                          options: CarouselOptions(
                            height: MediaQuery.of(context).size.height * 0.7,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 5),
                            enlargeCenterPage: true,
                          ),
                          items: [
                            // Replace the placeholders with your actual objectives for each professional
                            'Legal Professionals: Access Legal Information Securely',
                            'Finance Professionals: Manage Financial Data Efficiently',
                            // Add more objectives as needed
                          ].map((objective) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                    width: MediaQuery.of(context).size.width,
                                    child: Neumorphic(
                                      style: NeumorphicStyle(
                                        lightSource:
                                            NeumorphicTheme.isUsingDark(context)
                                                ? LightSource.bottomRight
                                                : LightSource.topLeft,
                                        shadowLightColor:
                                            NeumorphicTheme.isUsingDark(context)
                                                ? AppColors.gray600
                                                : AppColors.backgroundSecondary(
                                                    context),
                                        shape: NeumorphicShape.flat,
                                        boxShape: NeumorphicBoxShape.stadium(),
                                        color:
                                            AppColors.backgroundInverseTertiary(
                                                context),
                                        border: NeumorphicBorder(
                                          isEnabled: true,
                                          color: AppColors.backgroundPrimary(
                                              context),
                                          width: 2,
                                        ),
                                      ),
                                      child: Text(
                                        objective,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ));
                              },
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),

                // Social Proof
                Neumorphic(
                  margin: EdgeInsets.all(20),
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.stadium(),
                    color: AppColors.backgroundPrimary(context),
                    border: NeumorphicBorder(
                      isEnabled: true,
                      color: AppColors.backgroundPrimary(context),
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Social Proof',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Join Thousands of Professionals Trusting 50GRAMx Galaxy',
                        ),
                        // Social Proof Carousel can be implemented here
                      ],
                    ),
                  ),
                ),

                // Single Subscription Pricing
                Neumorphic(
                  margin: EdgeInsets.all(20),
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.stadium(),
                    color: AppColors.backgroundPrimary(context),
                    border: NeumorphicBorder(
                      isEnabled: true,
                      color: AppColors.backgroundPrimary(context),
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Single Subscription Pricing',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Get Started for Just \$X/Month',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
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
