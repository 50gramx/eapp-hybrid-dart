import 'dart:io';

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/services/contacts/contactService.dart';
import 'package:fifty_gramx/services/notification/local_notification_service.dart';
import 'package:fifty_gramx/services/notification/notifications_service.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/connections/connectionsHomePage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/conversations/conversationsHomePage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/custom/homeScreen.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/localServices.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/spacesHomePage.dart';
import 'package:fifty_gramx/widgets/onboarding/getStartedWidget.dart';
import 'package:fifty_gramx/widgets/onboarding/startScreen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
// Import package
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var isLoggedIn = await checkLogin();
  var isAccountTierActive = await checkTierActive();
  PushNotificationService.instance.start();
  LocalNotificationService().init();

  if (defaultTargetPlatform == TargetPlatform.android) {
    InAppPurchaseAndroidPlatformAddition.enablePendingPurchases();
  }

  if (isLoggedIn) {
    if (Platform.isAndroid || Platform.isIOS) {
      if (await Permission.contacts.request().isGranted) {
        ContactService.syncAccountConnectionsWithExistingAccountMobiles();
      }
    } else if (Platform.isWindows) {
      print("Detected Platform Windows");
    }
    await LocalServices().loadLocalServices();
  }

  runApp(NeumorphicApp(
    debugShowCheckedModeBanner: false,
    title: '50gramx',
    // themeMode: ThemeMode.dark, // comment to adapt on system theme
    theme: NeumorphicThemeData(
      intensity: 0.6,
      baseColor: AppColors.lightPrimaryB,
      lightSource: LightSource.topLeft,
      depth: 5,
      accentColor: AppColors.darkPrimaryA,
    ),
    darkTheme: NeumorphicThemeData(
      intensity: 0.6,
      baseColor: AppColors.darkPrimaryB,
      lightSource: LightSource.top,
      depth: 5,
      accentColor: AppColors.lightPrimaryA,
    ),
    routes: {
      '/connections': (context) => ConnectionsHomePage(index: 1),
      '/conversations': (context) => ConversationsHomePage(
            index: 1,
            containingFlowTitle: '',
          ),
      '/spaces': (context) => SpacesHomePage(
            index: 1,
            containingFlowTitle: '',
          ),
    },
    home: (isLoggedIn)
        ? (isAccountTierActive)
            ? HomeScreen()
            : GetStartedWidget(
                isAccountLoggedIn: true,
              )
        : StartScreen(),
  ));

//(
//             ? HomeScreen()
}

Future<bool> checkLogin() async {
  var accountServicesAccessAuthDetails =
      await AccountData().readAccountServicesAccessAuthDetails();
  if (accountServicesAccessAuthDetails.account.accountId == "") {
    return false;
  } else {
    return true;
  }
}

Future<bool> checkTierActive() async {
  return await AccountData().readIsAccountBillingActive();
}
