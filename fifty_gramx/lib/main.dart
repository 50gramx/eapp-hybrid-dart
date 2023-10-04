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

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/brew/brewCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/homeScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// Entry point of the 50gramx Flutter application.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  print("App is starting...");

  runApp(MyApp());
}

/// Constants used in the application.
class Constants {
  static const String appName = '50gramx';
}

/// The main application widget.
class MyApp extends StatelessWidget {
  /// The light theme data for the app.
  final lightThemeData = NeumorphicThemeData(
    intensity: 0.6,
    baseColor: AppColors.lightPrimaryB,
    lightSource: LightSource.topLeft,
    depth: 5,
    accentColor: AppColors.darkPrimaryA,
  );

  /// The dark theme data for the app.
  final darkThemeData = NeumorphicThemeData(
    intensity: 0.6,
    baseColor: AppColors.darkPrimaryB,
    lightSource: LightSource.top,
    depth: 5,
    accentColor: AppColors.lightPrimaryA,
  );

  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: ThemeMode.light,
      home: FutureBuilder<void>(
        future: initializeApp(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            print("App initialization completed."); // Add a log statement
            return HomeScreen();
          } else {
            return Scaffold(
              body: Center(
                child: AppProgressIndeterminateWidget(),
              ),
            );
          }
        },
      ),
    );
  }

  /// Initializes the application.
  Future<void> initializeApp() async => await (() async {
        if (!kIsWeb && Platform.isMacOS) {
          initializePlatformServices();
        }
        await EthosAppFlowBob();
        print("EthosAppFlowBob initialized.");
      })();

  /// Initializes platform-specific services.
  void initializePlatformServices() {
    PrivilegedCommandExecuter.initPrivileged();
    BrewCommands.initBrew();
    MultipassCommands();
    print("Platform services initialized.");
  }
}
