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

import 'dart:html' as html;
import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/brew/brewCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/homeScreen.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/localServices.dart';
import 'package:fifty_gramx/community/onboarding/startScreen.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/environment.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'firebase_options.dart';

void createScriptElement(String titleText) {
  // Find the existing title element
  html.TitleElement title =
      html.document.getElementsByTagName('title').first as html.TitleElement;

  // If it doesn't exist, create a new one and append it to the head
  if (title == null) {
    title = html.TitleElement();
    html.document.head?.append(title);
  }

  html.document.head?.append(title);

  title.text = titleText;
}

/// Entry point of the 50gramx Flutter application.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print("App is starting...");
  // Firebase not available for windows, linux at the moment
  // Firebase is not enabled for web at the moment
  if (kIsWeb || Platform.isAndroid || Platform.isIOS) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    bool weWantFatalErrorRecording = false;
    FlutterError.onError = (errorDetails) {
      if (weWantFatalErrorRecording) {
        FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      } else {
        FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
      }
    };

    // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      print("recordError: ${error}, ${stack}");
      return true;
    };
  } else {
    print("Platform is not supported, not initialising Firebase");
    //   not doing anything
  }

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
    Widget progress = Scaffold(
      body: Center(
        child: AppProgressIndeterminateWidget(),
      ),
    );
    LocalServices().notifications();
    return NeumorphicApp(
        debugShowCheckedModeBanner: false,
        title: Constants.appName,
        theme: lightThemeData,
        darkTheme: darkThemeData,
        themeMode: ThemeMode.system,
        home: FutureBuilder<void>(
          future: initializeApp(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              print("App initialization completed."); // Add a log statement
              return FutureBuilder<bool>(
                  future: AccountData().accountPresent(),
                  builder: (context, presentData) {
                    if (presentData.connectionState == ConnectionState.done) {
                      if (presentData.data == true) {
                        return HomeScreen();
                      } else {
                        return FutureBuilder<String>(
                            future: Environment.current(),
                            builder: (context, envSnap) {
                              if (envSnap.connectionState ==
                                  ConnectionState.done) {
                                if (envSnap.data == "com.50gramx") {
                                  return HomeScreen();
                                } else {
                                  if (kIsWeb) {
                                    createScriptElement(envSnap.data!);
                                  }
                                  return HomeScreen();
                                }
                              } else {
                                return progress;
                              }
                            });
                      }
                    } else {
                      return progress;
                    }
                  });
            } else {
              return progress;
            }
          },
        ));
  }

  /// Initializes the application.
  Future<void> initializeApp() async => await (() async {
        print("debug: initializeApp");
        // Create a stopwatch and start it
        print("will start stopwatch");
        final stopwatch = Stopwatch()..start();
        print("started stopwatch");
        if (!kIsWeb &&
            (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
          print("will start platform services");
          initializePlatformServices();
        }
        print("debug: will start EthosAppFlowBob");
        EthosAppFlowBob();
        print("EthosAppFlowBob initialized.");
        // Stop the stopwatch
        stopwatch.stop();
        print(
            'Time elapsed to initializeApp: ${stopwatch.elapsedMilliseconds} ms');
      })();

  /// Initializes platform-specific services.
  void initializePlatformServices() {
    PrivilegedCommandExecuter.initPrivileged();
    if (Platform.isMacOS) {
      BrewCommands.initBrew();
    } else if (Platform.isWindows) {
      print("do something");
    } else if (Platform.isLinux) {
      print("do something");
    }
    MultipassCommands();
    print("Platform services initialized.");
  }
}
