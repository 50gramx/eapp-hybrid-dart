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

import 'package:app_settings/app_settings.dart';
import 'package:fifty_gramx/community/Multiverse/EthosverseScreen.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/webScreen.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/connections/connectionsHomePage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/conversationsHomePage.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/spaces/spacesHomePage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/brew/brewCommands.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/executer/privilegedCommandExecuter.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/command/multipass/multipassCommands.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/homeScreen.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/localServices.dart';
import 'package:fifty_gramx/community/onboarding/getStartedWidget.dart';
import 'package:fifty_gramx/community/onboarding/startScreen.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/services/contacts/contactService.dart';
import 'package:fifty_gramx/services/notification/local_notification_service.dart';
import 'package:fifty_gramx/services/notification/notifications_service.dart';
import 'package:fifty_gramx/ui/base_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // var isLoggedIn = await checkLogin();  // handling in future
  // var isAccountTierActive = await checkTierActive();  // handling in future
  // PushNotificationService.instance.start();  // handling in future
  // LocalNotificationService().init();  // handling in future

  // if (defaultTargetPlatform == TargetPlatform.android) {
  //   InAppPurchaseAndroidPlatformAddition.enablePendingPurchases();
  // } else {} // handling in future

  // if (isLoggedIn) {
  //   if (Platform.isAndroid || Platform.isIOS) {
  //     print("requesting contacts permission");
  //     if (await Permission.contacts.request().isGranted) {
  //       print("Contacts permission granted");
  //       ContactService.syncAccountConnectionsWithExistingAccountMobiles();
  //     }
  //   } else if (Platform.isWindows) {
  //     print("Detected Platform Windows");
  //   }
  //   await LocalServices().loadLocalServices();
  // } // handling in future

  var isLoggedInWidget = FutureBuilder<bool>(
      future: checkLogin(),
      builder: (BuildContext context, loggedInSnapshot) {
        if (loggedInSnapshot.connectionState == ConnectionState.waiting) {
          return getLoadingPage("Verifying your account access", context);
        } else if (loggedInSnapshot.hasData) {
          // warn: expecting that verifying access always returns a bool value
          // warn: starting the push notifications service and local notification service
          PushNotificationService.instance.start();
          LocalNotificationService().init();
          // warn: based on platform enabling in-app purchases
          if (defaultTargetPlatform == TargetPlatform.android) {
            InAppPurchaseAndroidPlatformAddition.enablePendingPurchases();
          } else if (defaultTargetPlatform == TargetPlatform.iOS) {
            // todo: handle in-app payments for iOS
          } else {
            // todo: handle in-app payments for desktops
          }
          if (loggedInSnapshot.data!) {
            // reflect the account is logged in
            if (Platform.isIOS || Platform.isAndroid) {
              // do something
              if (Platform.isIOS) {
                // do check notifications permission
                return FutureBuilder<bool>(
                  future: Permission.notification.request().isGranted,
                  builder: (BuildContext notificationPermissionContext,
                      notificationPermissionSnapshot) {
                    if (notificationPermissionSnapshot.connectionState ==
                        ConnectionState.waiting) {
                      return getLoadingPage(
                          "Verifying notifications permissions",
                          notificationPermissionContext);
                    } else {
                      if (notificationPermissionSnapshot.data!) {
                        // do check contacts permission
                        return FutureBuilder<bool>(
                          future: Permission.contacts.request().isGranted,
                          builder: (BuildContext contactsPermissionContext,
                              contactsPermissionSnapshot) {
                            if (contactsPermissionSnapshot.connectionState ==
                                ConnectionState.waiting) {
                              return getLoadingPage(
                                  "Verifying contacts permissions",
                                  contactsPermissionContext);
                            } else {
                              if (contactsPermissionSnapshot.data!) {
                                LocalServices()
                                    .loadLocalServices(); // not waiting for connections to load
                                // todo: handle independent connections service
                                ContactService
                                    .syncAccountConnectionsWithExistingAccountMobiles();
                                return FutureBuilder<bool>(
                                  future: checkTierActive(),
                                  builder: (BuildContext tierContext,
                                      tierActiveSnapshot) {
                                    if (tierActiveSnapshot.connectionState ==
                                        ConnectionState.waiting) {
                                      return getLoadingPage(
                                          "Verifying your tier access",
                                          tierContext);
                                    } else {
                                      if (tierActiveSnapshot.data!) {
                                        return HomeScreen();
                                      } else {
                                        return GetStartedWidget(
                                          isAccountLoggedIn: true,
                                        );
                                      }
                                    }
                                  },
                                );
                              } else {
                                return getExplicitPermissionAllocationPage(
                                    "Contacts permissions is needed for connecting. Please restart the app to allow and continue.",
                                    "Allow Contacts in Settings",
                                    "CONTACTS",
                                    contactsPermissionContext);
                              }
                            }
                          },
                        );
                      } else {
                        return getExplicitPermissionAllocationPage(
                            "Notifications permissions is needed for conversing. After allowing permission please restart the app to continue.",
                            "Allow Notifications in Settings",
                            "NOTIFICATIONS",
                            notificationPermissionContext);
                      }
                    }
                  },
                );
              } else {
                // do check for contacts permission
                return FutureBuilder<bool>(
                  future: Permission.contacts.request().isGranted,
                  builder: (BuildContext contactsPermissionContext,
                      contactsPermissionSnapshot) {
                    if (contactsPermissionSnapshot.connectionState ==
                        ConnectionState.waiting) {
                      return getLoadingPage("Verifying contacts permissions",
                          contactsPermissionContext);
                    } else {
                      if (contactsPermissionSnapshot.data!) {
                        LocalServices()
                            .loadLocalServices(); // not waiting for connections to load
                        // todo: handle independent connections service
                        ContactService
                            .syncAccountConnectionsWithExistingAccountMobiles();
                        return FutureBuilder<bool>(
                          future: checkTierActive(),
                          builder:
                              (BuildContext tierContext, tierActiveSnapshot) {
                            if (tierActiveSnapshot.connectionState ==
                                ConnectionState.waiting) {
                              return getLoadingPage(
                                  "Verifying your tier access", tierContext);
                            } else {
                              if (tierActiveSnapshot.data!) {
                                return HomeScreen();
                              } else {
                                return GetStartedWidget(
                                  isAccountLoggedIn: true,
                                );
                              }
                            }
                          },
                        );
                      } else {
                        return getExplicitPermissionAllocationPage(
                            "Contacts permissions is needed for connecting. Please restart the app to allow and continue.",
                            "Allow Contacts in Settings",
                            "CONTACTS",
                            contactsPermissionContext);
                      }
                    }
                  },
                );
              }
            } else {
              // platform is web or desktop
              // do something
              return SizedBox();
            }
          } else {
            // reflect the account is not logged in
            return StartScreen();
          }
        } else {
          return BaseWidget(builder: (loadingContext, sizingInformation) {
            return Scaffold(
                backgroundColor: AppColors.backgroundPrimary(loadingContext),
                body: Container(
                    child: Center(
                        child: Column(
                  children: [
                    Spacer(),
                    Center(
                      child: Text(
                          "Cannot connect to 50gramx machines,"
                          " please try again in a few minutes.",
                          style: AppTextStyle.appTextStyle(
                            loadingContext,
                            AppColors.textColor(loadingContext),
                          )),
                    ),
                    Spacer(),
                  ],
                ))));
          });
        }
      });

  runApp(decideWhichScreen());

// (isLoggedIn)
//         ? (isAccountTierActive)
//             ? HomeScreen()
//             : GetStartedWidget(
//                 isAccountLoggedIn: true,
//               )
//         : StartScreen(),
//   )
}

Widget decideWhichScreen() {
  var lightThemeData = NeumorphicThemeData(
    intensity: 0.6,
    baseColor: AppColors.lightPrimaryB,
    lightSource: LightSource.topLeft,
    depth: 5,
    accentColor: AppColors.darkPrimaryA,
  );
  var darkThemeData = NeumorphicThemeData(
    intensity: 0.6,
    baseColor: AppColors.darkPrimaryB,
    lightSource: LightSource.top,
    depth: 5,
    accentColor: AppColors.lightPrimaryA,
  );
  if (kIsWeb) {
//    return EthosPayScreen();
    return NeumorphicApp(
        debugShowCheckedModeBanner: false,
        title: '50gramx',
        themeMode: ThemeMode.system,
        // comment to adapt on system theme
        theme: lightThemeData,
        darkTheme: darkThemeData,
        home: WebScreen());
  } else {
    // warn: keep this in check
    PrivilegedCommandExecuter.initPrivileged();
    BrewCommands.initBrew();
    MultipassCommands();
    return NeumorphicApp(
        debugShowCheckedModeBanner: false,
        title: '50gramx',
        themeMode: ThemeMode.system,
        // comment to adapt on system theme
        theme: lightThemeData,
        darkTheme: darkThemeData,
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
        home: HomeScreen());
  }
}

Widget getLoadingPage(String loadingText, BuildContext loadingContext) {
  return BaseWidget(builder: (loadingContext, sizingInformation) {
    return Scaffold(
        backgroundColor: AppColors.backgroundPrimary(loadingContext),
        body: Container(
            child: Center(
                child: Column(
          children: [
            Spacer(),
            Center(
              child: Text(loadingText,
                  style: AppTextStyle.appTextStyle(
                    loadingContext,
                    AppColors.textColor(loadingContext),
                  )),
            ),
            Center(
              child: AppProgressIndeterminateWidget(),
            ),
            Spacer(),
          ],
        ))));
  });
}

Widget getExplicitPermissionAllocationPage(String explicitText,
    String buttonText, String permission, BuildContext explicitContext) {
  return BaseWidget(builder: (loadingContext, sizingInformation) {
    return Scaffold(
        backgroundColor: AppColors.backgroundPrimary(explicitContext),
        body: Container(
            child: Center(
                child: Column(
          children: [
            Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(explicitText,
                    style: AppTextStyle.appTextStyle(
                      explicitContext,
                      AppColors.textColor(loadingContext),
                    )),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Center(
              child: ActionNeuButton(
                buttonTitle: buttonText,
                buttonActionOnPressed: () {
                  if (permission == "NOTIFICATIONS") {
                    AppSettings.openNotificationSettings();
                  } else if (permission == "CONTACTS") {
                    AppSettings.openAppSettings();
                  }
                },
                isPrimaryButton: true,
              ),
            ),
            Spacer(),
          ],
        ))));
  });
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
