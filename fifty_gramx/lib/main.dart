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
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/genesys/browser/tab.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/brew/brewCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/homeScreen.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/localServices.dart';
import 'package:fifty_gramx/community/onboarding/startScreen.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/group_hr_professionals_page.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/group_jobseekers_page.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/overview_page.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/overview_page.dart';
import 'package:fifty_gramx/community/onboarding/website/ethosverse/collection_page.dart';
import 'package:fifty_gramx/community/onboarding/website/ethosverse/overview_page.dart';
import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/licences_page.dart';
import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/overview_page.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/about_us_page.dart';
import 'package:fifty_gramx/community/onboarding/website/satwa_pages/overview_page.dart';
import 'package:fifty_gramx/community/onboarding/website/satwa_pages/pricing_page.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/environment.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';
import 'firebase_options.dart';

bool isFirebaseSupportedPlatform() {
  return kIsWeb || Platform.isAndroid || Platform.isIOS;
}

/// Entry point of the 50gramx Flutter application.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print("App is starting...");
  // Firebase not available for windows, linux at the moment
  // Firebase is enabled for web at the moment
  if (isFirebaseSupportedPlatform()) {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    // Firebase Crashlytics is enabled for web at the moment
    if (!kIsWeb) {
      bool isPlatformDesktop =
          Platform.isWindows || Platform.isMacOS || Platform.isLinux;
      bool weWantFatalErrorRecording = isPlatformDesktop;
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
    }
  } else {
    print("Platform is not supported, not initialising Firebase");
    //   not doing anything
  }

  configureApp();
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
        themeMode: ThemeMode.light,
        builder: (context, child) {
          return Banner(
            message: 'ALPHA', // Change the banner message here
            textStyle: TextStyle(
              fontSize: 8,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w500,
              color: AppColors.contentInversePrimary(context).withAlpha(150),
            ),
            location: BannerLocation.topEnd, // Set banner location
            color: AppColors.backgroundInverseTertiary(context)
                .withAlpha(75), // Customize banner color if needed
            child: child!,
          );
        },
        routes: {
          '/about': (context) => WebsiteAboutUsPage(),
          '/galaxy': (context) => GalaxyOverviewPage(),
          '/galaxy/licences': (context) => GalaxyLicensesPage(),
          '/collars': (context) => CollarsOverviewPage(),
          '/ethosverse': (context) => EthosverseOverviewPage(),
          '/ethosverse/domain': (context) => EthosverseDomainCollectionPage(),
          '/53/vinayak': (context) => OfferLetterCISKDCOverviewPage(),
          '/53/vinayak/job-seekers': (context) =>
              Vinayak53GRAMxGroupJobseekersPage(),
          '/53/vinayak/hr-professionals': (context) =>
              Vinayak53GRAMxGroupHRProfessionalsPage(),
          '/53gramx/satwa': (context) => SatwaOverviewPage(),
          '/53gramx/satwa/pricing': (context) => SatwaPricingPage(),
        },
        navigatorObservers: getNavigatorObserver(),
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
                                  return BrowserTab();
                                } else {
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

  List<NavigatorObserver> getNavigatorObserver() {
    List<NavigatorObserver> listOfNavigatorObserver = [];

    if (isFirebaseSupportedPlatform()) {
      FirebaseAnalytics firebaseAnalytics = FirebaseAnalytics.instance;
      FirebaseAnalyticsObserver firebaseAnalyticsobserver =
          FirebaseAnalyticsObserver(analytics: firebaseAnalytics);

      listOfNavigatorObserver.add(firebaseAnalyticsobserver);
    }

    return listOfNavigatorObserver;
  }

  /// Initializes the application.
  Future<void> initializeApp() async => await (() async {
        if (!kIsWeb &&
            (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
          print("will start platform services");
          initializePlatformServices();
        }
        EthosAppFlowBob();
        print("EthosAppFlowBob initialized.");
      })();

  /// Initializes platform-specific services.
  void initializePlatformServices() {
    PrivilegedCommandExecuter.initPrivileged();
    if (Platform.isMacOS) {
      BrewCommands.initBrew();
    } else if (Platform.isWindows) {
      print("initializePlatformServices failed for Windows");
    } else if (Platform.isLinux) {
      print("initializePlatformServices failed for Linux");
    }
    MultipassCommands();
    print("Platform services initialized.");
  }
}
