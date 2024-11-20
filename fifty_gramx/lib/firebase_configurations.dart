import 'dart:io';

import 'package:fifty_gramx/constants.dart';
import 'package:fifty_gramx/firebase_options.dart';
import 'package:fifty_gramx/firebase_options_70_ethos_nodes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

bool isFirebaseSupportedPlatform() {
  return kIsWeb || Platform.isAndroid || Platform.isIOS || Platform.isMacOS;
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

bool isFirebaseCrashlyticsSupportedPlatform() {
  // refer to https://github.com/firebase/flutterfire
  return Platform.isAndroid || Platform.isIOS || Platform.isMacOS;
}

bool isFirebaseMessagingSupportedPlatform() {
  // refer to https://github.com/firebase/flutterfire
  return kIsWeb || Platform.isAndroid || Platform.isIOS || Platform.isMacOS;
}

ensureFirebaseSupport() async {
  if (isFirebaseSupportedPlatform()) {
    if (kIsWeb) {
      await Firebase.initializeApp(
        options: Constants().eAppFirebaseOptions,
      );
    } else {
      await Firebase.initializeApp(
        name: "${Constants().eAppEnv}".replaceAll('.', '_'),
        options: Constants().eAppFirebaseOptions,
      );
    }

    // Firebase Crashlytics is enabled for limited platform at the moment
    if (!kIsWeb && isFirebaseCrashlyticsSupportedPlatform()) {
      FlutterError.onError = (errorDetails) {
        FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      };

      // Pass all uncaught asynchronous errors that aren't handled by the Flutter framework to Crashlytics
      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };
    }
  }
}

crashlyticsRecordError(Object error, StackTrace stackTracer) {
  if (isFirebaseCrashlyticsSupportedPlatform()) {
    FirebaseCrashlytics.instance.recordError(error, stackTracer);
  }
}
