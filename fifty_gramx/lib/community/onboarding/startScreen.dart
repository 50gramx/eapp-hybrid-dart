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

import 'package:carousel_slider/carousel_slider.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/homeScreen.dart';
import 'package:fifty_gramx/community/onboarding/getStartedWidget.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/ui/base_widget.dart';
import 'package:flutter/foundation.dart';
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

    Widget homeBody = SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 0.7 * MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(bottom: 32),
            child: Align(
                alignment: Alignment.center,
                child: Neumorphic(
                    style: NeumorphicStyle(
                      lightSource: NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor: NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(context),
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(
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
                      margin:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                                                fontWeight: FontWeight.w900,
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
                                              "Welcome to Your Personalized Cyber-Physical Universe",
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
          ),

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
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
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
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome to Your Personalized Cyber-Physical Universe',
                            style: TextStyle(
                                color: AppColors.contentPrimary(context),
                                fontSize: 36,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w900,
                                height: 1.14285714),
                          ),
                          SizedBox(height: 10),
                        ]),
                  ),
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
                                  shadowLightColor: NeumorphicTheme.isUsingDark(
                                          context)
                                      ? AppColors.gray600
                                      : AppColors.backgroundSecondary(context),
                                  shape: NeumorphicShape.flat,
                                  boxShape: NeumorphicBoxShape.stadium(),
                                  color: AppColors.backgroundInverseTertiary(
                                      context),
                                  border: NeumorphicBorder(
                                    isEnabled: true,
                                    color: AppColors.backgroundPrimary(context),
                                    width: 2,
                                  ),
                                ),
                                child: Align(
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
                                          text: objective,
                                          style: TextStyle(
                                              color: AppColors
                                                  .contentInversePrimary(
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
          Container(
              height: 0.7 * MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: [
                  Expanded(
                      flex: 4,
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Social Proof',
                                style: TextStyle(
                                    color: AppColors.contentPrimary(context),
                                    fontSize: 48,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w700,
                                    height: 1.14285714),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Join Thousands of Professionals Trusting 50GRAMx Galaxy',
                              ),
                            ]),
                      )),
                  Expanded(
                    flex: 6,
                    child: Neumorphic(
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
                  ),
                ],
              )),

          // Single Subscription Pricing
          Neumorphic(
            margin: EdgeInsets.all(20),
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              depth: 5,
              intensity: 0.7,
              color: Colors.grey[200],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Exclusive Offer: Licence to 50GRAMx',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue, // Highlight color
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Unlock the Power of 50GRAMx for Just \$1149', // Add pricing details
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87, // Darker color for emphasis
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Experience seamless integration across domains, enhanced security, and access to a thriving professional community.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors
                          .black54, // Lighter color for additional information
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Add action for button press
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Benefits
          Neumorphic(
            margin: EdgeInsets.all(20),
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              depth: 5,
              intensity: 0.7,
              color: Colors.grey[200],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Benefits',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '- Seamless Integration Across Domains\n- Unified Management and Operations\n- Enhanced Security and Privacy\n- Balanced EthosCoin for Transactions',
                  ),
                ],
              ),
            ),
          ),
          // Getting Started
          Neumorphic(
            margin: EdgeInsets.all(20),
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              depth: 5,
              intensity: 0.7,
              color: Colors.grey[200],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Getting Started',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Reserve Your Galaxy\n2. Launch Your Domain\n3. Interact with Open Domains',
                  ),
                ],
              ),
            ),
          ),
          // Professional Highlights
          Neumorphic(
            margin: EdgeInsets.all(20),
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              depth: 5,
              intensity: 0.7,
              color: Colors.grey[200],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Professional Highlights',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Empower Your Professional Journey with 50GRAMx Galaxy',
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Learn More'),
                  ),
                ],
              ),
            ),
          ),
          // Experience with 50GRAMx Galaxy
          Neumorphic(
            margin: EdgeInsets.all(20),
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              depth: 5,
              intensity: 0.7,
              color: Colors.grey[200],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Experience with 50GRAMx Galaxy',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Discover the Power of Seamless Integration and Enhanced Collaboration',
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Explore Now')),
                ],
              ),
            ),
          ),
          // Footer
          Neumorphic(
            margin: EdgeInsets.all(20),
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              depth: 5,
              intensity: 0.7,
              color: Colors.grey[200],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thank You for Exploring 50GRAMx Galaxy',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Join Our Community and Embrace Professional Excellence',
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Join Now'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    List<Widget> galaxyAppBarActions = [
      NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: () {},
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.contentPrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundPrimary(context),
              width: 2,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          margin: const EdgeInsets.all(1),
          child: Text(
            "Domains",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.orange(context),
                fontSize: 12,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600),
          )),
      NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: () {},
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.contentPrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundPrimary(context),
              width: 2,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          margin: const EdgeInsets.all(1),
          child: Text(
            "Professionals",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.orange(context),
                fontSize: 12,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600),
          )),
      NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: () {},
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.contentPrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundPrimary(context),
              width: 2,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          margin: const EdgeInsets.all(1),
          child: Text(
            "Organisations",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.orange(context),
                fontSize: 12,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600),
          )),
      NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: () {},
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.contentPrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundPrimary(context),
              width: 2,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          margin: const EdgeInsets.all(1),
          child: Text(
            "Pricing",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.orange(context),
                fontSize: 12,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600),
          )),
      Container(
        padding: EdgeInsets.only(left: 6, right: 6),
        alignment: Alignment.center,
        child: NeumorphicText(
          "PRICING",
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(
                topRight: Radius.circular(24),
                bottomRight: Radius.circular(24))),
            color: AppColors.contentPrimary(context),
            depth: 2,
            disableDepth: false,
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundInverseTertiary(context),
              width: 0.3,
            ),
          ),
          textAlign: TextAlign.left,
          textStyle: NeumorphicTextStyle(
              fontSize: 20,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
              height: 1.25),
        ),
      )
    ];

    List<Widget> homeAppBarActions = [
      PopupMenuButton(
        itemBuilder: (BuildContext context) => <PopupMenuEntry>[
          PopupMenuItem(
            child: ListTile(
              title: Text(
                'About',
                textAlign: TextAlign.center,
                style: AppTextStyle.appTextStyle(context),
              ),
              onTap: () {
                // Handle About action
                Navigator.pop(context); // Close popup menu
              },
            ),
          ),
          PopupMenuItem(
            child: ListTile(
              title: Text(
                'Careers',
                textAlign: TextAlign.center,
                style: AppTextStyle.appTextStyle(context),
              ),
              onTap: () {
                // Handle Careers action
                Navigator.pop(context); // Close popup menu
              },
            ),
          ),
        ],
        child: Row(
          children: [
            buildAppBarTextButton("Company"),
            Icon(Icons.arrow_drop_down,
                color: AppColors.contentPrimary(context)),
          ],
        ),
        padding: EdgeInsets.zero,
        elevation: 6,
        position: PopupMenuPosition.under,
        color: AppColors.backgroundPrimary(context),
        shape: BeveledRectangleBorder(),
        tooltip: "",
      ),
    ];

    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
            appBar: AppBar(
              title: Text("50GRAMx"),
              actions: homeAppBarActions,
              backgroundColor: AppColors.backgroundPrimary(context),
            ),
            backgroundColor: AppColors.backgroundPrimary(context),
            body: homeBody);
      },
    );
  }

  Widget buildAppBarTextButton(String title) {
    return Container(
      padding: EdgeInsets.only(left: 6, right: 6),
      alignment: Alignment.center,
      child: NeumorphicText(
        title,
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(
              topRight: Radius.circular(24), bottomRight: Radius.circular(24))),
          color: AppColors.contentPrimary(context),
          depth: 2,
          disableDepth: false,
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundInverseTertiary(context),
            width: 0.3,
          ),
        ),
        textAlign: TextAlign.left,
        textStyle: NeumorphicTextStyle(
            fontSize: 20,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            height: 1.25),
      ),
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
