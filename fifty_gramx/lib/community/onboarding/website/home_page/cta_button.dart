import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/onboarding/getStartedWidget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:permission_handler/permission_handler.dart';

Widget buildGetStartedButton(BuildContext context, bool signedIn) {
  return Align(
    alignment: Alignment.center,
    child: NeumorphicButton(
        provideHapticFeedback: true,
        onPressed: () {
          getStartedButtonOnPressed(context, signedIn);
        },
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
        margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
        child: Text(
          "Reserve Now",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.contentInversePrimary(context),
              fontSize: 24,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600),
        )),
  );
}

getStartedButtonOnPressed(BuildContext context, bool signedIn) async {
  if (kDebugMode) {
    print("getStartedButtonOnPressed");
  }
  if (kIsWeb) {
    pushToGetStartedWidget(context, signedIn);
  }
  if (Platform.isAndroid || Platform.isIOS) {
    if (kDebugMode) {
      print("android or ios");
    }
    if (await Permission.contacts.request().isGranted) {
      print("android or ios");
      pushToGetStartedWidget(context, signedIn);
    } else if (await Permission.contacts.isPermanentlyDenied) {
      // The user opted to never again see the permission request dialog for this
      // app. The only way to change the permission's status now is to let the
      // user manually enables it in the system settings.
      openAppSettings();
    } else {
      if (kDebugMode) {
        print(await Permission.contacts.status);
      }
      await Permission.contacts.request();
      if (kDebugMode) {
        print("contacts permissions not granted");
      }
    }
  } else if (Platform.isWindows) {
    pushToGetStartedWidget(context, signedIn);
  } else if (Platform.isMacOS) {
    pushToGetStartedWidget(context, signedIn);
  }
}

pushToGetStartedWidget(BuildContext context, bool signedIn) {
  Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          builder: (context) => GetStartedWidget(
                isAccountLoggedIn: signedIn,
              )));
}
