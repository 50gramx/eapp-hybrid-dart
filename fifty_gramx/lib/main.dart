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
import 'package:fifty_gramx/community/homeScreenWidgets/localServices.dart';
import 'package:fifty_gramx/community/onboarding/startScreen.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/overview_page/overview_page.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/tg_hr_professionals_page/group_hr_professionals_page.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/tg_jobseekers_page/group_jobseekers_page.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/66/llama-7b-collar/overview_page/overview_page.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/66/llama-7b-collar/plan_page/plan_page.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/70/nodes-collar/overview_page/overview_page.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/70/nodes-collar/plan_page/plan_page.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/70/nodes-collar/tg_gamers_page/tg_gamers_page.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/70/nodes-collar/tg_ml_researchers_page/tg_ml_researchers_page.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/overview_page.dart';
import 'package:fifty_gramx/community/onboarding/website/ethosverse/collection_page.dart';
import 'package:fifty_gramx/community/onboarding/website/ethosverse/overview_page.dart';
import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/licences_page.dart';
import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/overview_page.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/about_us_page.dart';
import 'package:fifty_gramx/community/onboarding/website/satwa_pages/overview_page/overview_page.dart';
import 'package:fifty_gramx/community/onboarding/website/satwa_pages/plans_page/pricing_page.dart';
import 'package:fifty_gramx/community/onboarding/website/satwa_pages/tg_one_pages/tg_candidates_page.dart';
import 'package:fifty_gramx/community/onboarding/website/satwa_pages/tg_two_pages/tg_employers_page.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/environment.dart';
import 'package:fifty_gramx/firebase_options.dart';
import 'package:fifty_gramx/firebase_options_70_ethos_nodes.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'configure_nonweb.dart' if (dart.library.html) 'configure_web.dart';

/// Constants used in the application.
class Constants {
  static final Constants _instance = Constants._internal();

  factory Constants() {
    return _instance;
  }

  Constants._internal();

  static const String appName = '50gramx';
  String eAppEnv = "com.50gramx";
  late FirebaseOptions eAppFirebaseOptions;
}

getCurrentFirebaseOptions() {
  // Set the Firebase options based on the environment
  if (Constants().eAppEnv == "com.50gramx") {
    Constants().eAppFirebaseOptions = DefaultFirebaseOptions.currentPlatform;
  } else if (Constants().eAppEnv == "com.50gramx.70.ethos.nodes") {
    Constants().eAppFirebaseOptions =
        FirebaseOptions70EthosNodes.currentPlatform;
  } else {
    Constants().eAppFirebaseOptions = DefaultFirebaseOptions.currentPlatform;
  }
}

getCurrentEnvironment() async {
  Constants().eAppEnv = await Environment.current();
  getCurrentFirebaseOptions();
}

bool isFirebaseSupportedPlatform() {
  return kIsWeb || Platform.isAndroid || Platform.isIOS || Platform.isMacOS;
}

ensureFirebaseSupport() async {
  if (isFirebaseSupportedPlatform()) {
    await Firebase.initializeApp(
      options: Constants().eAppFirebaseOptions,
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
}

/// Initializes platform-specific services.
void initializeEthosAppsServices() {
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

/// Initializes the application.
Future<void> initalizeEthosappsSupport() async => await (() async {
      if (!kIsWeb &&
          (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
        print("will start platform services");
        initializeEthosAppsServices();
      }
      EthosAppFlowBob();
      print("EthosAppFlowBob initialized.");
    })();

ensureEthosappsSupport() {
  initalizeEthosappsSupport();
}

/// Entry point of the 50gramx Flutter application.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // print("App is starting...");
  // Firebase not available for windows, linux at the moment
  // Firebase is enabled for web at the moment
  await getCurrentEnvironment();
  await ensureFirebaseSupport();
  configureApp();
  ensureEthosappsSupport();
  runApp(MyApp());
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

  buildProgress() {
    return Scaffold(
      body: Center(
        child: AppProgressIndeterminateWidget(),
      ),
    );
  }

  buildFutureBuider() {
    return FutureBuilder<String>(
        future: Environment.current(),
        builder: (context, envSnap) {
          if (envSnap.connectionState == ConnectionState.done) {
            if (envSnap.data == "com.50gramx") {
              return HomeScreen();
            } else if (envSnap.data == "com.50gramx.50.ethos.site") {
              return StartScreen();
            } else {
              return HomeScreen();
            }
          } else {
            return buildProgress();
          }
        });
  }

  buildWOFutureBuider() {
    if (Constants().eAppEnv == "com.50gramx.50.ethos.site") {
      return StartScreen();
    } else {
      return HomeScreen();
    }
  }

  buildParentFutureBuilder() {
    return FutureBuilder<bool>(
        future: AccountData().accountPresent(),
        builder: (context, presentData) {
          if (presentData.connectionState == ConnectionState.done) {
            if (presentData.data == true) {
              return HomeScreen();
            } else {
              return buildFutureBuider();
            }
          } else {
            return buildProgress();
          }
        });
  }

  buildParentWOFutureBuilder() {
    return buildWOFutureBuider();
  }

  buildHomeFutureBuilder() {
    return FutureBuilder<void>(
      future: initalizeEthosappsSupport(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          print("App initialization completed."); // Add a log statement
          return buildParentFutureBuilder();
        } else {
          return buildProgress();
        }
      },
    );
  }

  buildHomeWOFutureBuilder() {
    return buildParentWOFutureBuilder();
  }

  @override
  Widget build(BuildContext context) {
    LocalServices().notifications();

    return NeumorphicApp(
        debugShowCheckedModeBanner: false,
        title: Constants.appName,
        theme: lightThemeData,
        darkTheme: darkThemeData,
        themeMode: ThemeMode.system,
        routes: {
          '/about': (context) => WebsiteAboutUsPage(),
          '/galaxy': (context) => GalaxyOverviewPage(),
          '/galaxy/licences': (context) => GalaxyLicensesPage(),
          '/collars': (context) => CollarsOverviewPage(),
          '/ethosverse': (context) => EthosverseOverviewPage(),
          '/ethosverse/domain': (context) => EthosverseDomainCollectionPage(),
          '/70/ethos-nodes': (context) => Things50DC500000000OverviewPage(),
          '/70/ethos-nodes/gamers': (context) =>
              Things50DC500000000TGGamersPage(),
          '/70/ethos-nodes/ml-researchers': (context) =>
              Things50DC500000000TGMLResearchersPage(),
          '/70/ethos-nodes/plans': (context) => Things50DC500000000PlanPage(),
          '/53/vinayak': (context) => OfferLetterCISKDCOverviewPage(),
          '/53/vinayak/job-seekers': (context) =>
              Vinayak53GRAMxGroupJobseekersPage(),
          '/53/vinayak/hr-professionals': (context) =>
              Vinayak53GRAMxGroupHRProfessionalsPage(),
          '/53/satwa-plus': (context) => SatwaOverviewPage(),
          '/53/satwa-plus/candidates': (context) => SatwaTGCandidatesPage(),
          '/53/satwa-plus/employers': (context) => SatwaTGEmployersPage(),
          '/53/satwa-plus/plans': (context) => SatwaPricingPage(),
          '/66/podeage-llama-7b': (context) => PodeageLLAMA7BOverviewPage(),
          '/66/podeage-llama-7b/plans': (context) => PodeageLLAMA7BPlanPage(),
        },
        navigatorObservers: getNavigatorObserver(),
        home: buildHomeWOFutureBuilder());
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
}
