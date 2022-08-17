import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/ui/base_widget.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/homeScreen.dart';
import 'package:fifty_gramx/community/onboarding/getStartedWidget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
    if (Platform.isAndroid || Platform.isIOS) {
      if (await Permission.contacts.request().isGranted) {
        pushToGetStartedWidget();
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
    super.initState();
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
                                                text: "iEthos",
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
                                                    "Allow iEthos to connect your contacts",
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
        context, MaterialPageRoute(builder: (context) => GetStartedWidget()));
  }

  pushToHomeScreenWidget() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }
}
