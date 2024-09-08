import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';

class Environment {
  static String? _current;

  static Future<String> current() async {
    if (_current != null) {
      return _current!;
    }

    final packageInfo = await PackageInfo.fromPlatform();

    String? flavor = "";
    if (kIsWeb) {
      if (kDebugMode) {
        print("Environment:current: it's web");
      }
      flavor = const String.fromEnvironment("flavor");
      if (kDebugMode) {
        print("Environment:current: flavor:$flavor");
      }
      switch (flavor) {
        case "50.ethos.site":
          _current = "com.50gramx.50.ethos.site";
          break;
        case "50.ethos.domains":
          _current = "com.50gramx.50.ethos.domains";
          break;
        case "70.ethos.pods":
          _current = "com.50gramx.70.ethos.pods";
          break;
        case "70.ethos.nodes":
          _current = "com.50gramx.70.ethos.nodes";
          break;
        default:
          _current = "com.50gramx";
      }
    } else if (Platform.isAndroid || Platform.isIOS || Platform.isMacOS) {
      if (kDebugMode) {
        print("Environment:current: it's MacOS, Android or iOS devices");
        print("Environment:current: flavor:${packageInfo.packageName}");
      }
      flavor = const String.fromEnvironment("flavor");
      if (kDebugMode) {
        print("Environment:current: flavor:$flavor");
      }
      switch (packageInfo.packageName) {
        case "com.fiftygramx.fifty.zero.ethos.domains":
          _current = "com.50gramx.50.ethos.domains";
          break;
        case "com.fiftygramx.seventy.zero.ethos.pods":
          _current = "com.50gramx.70.ethos.pods";
          break;
        case "com.fiftygramx.seventy.zero.ethos.nodes":
          _current = "com.50gramx.70.ethos.nodes";
          break;
        default:
          _current = "com.50gramx";
      }
    } else if (Platform.isWindows) {
      if (kDebugMode) {
        print("Environment:current: it's windows device");
      }
      flavor = const String.fromEnvironment("flavor");
      if (kDebugMode) {
        print("Environment:current: flavor:$flavor");
      }
      switch (flavor) {
        case "com.fiftygramx.fifty.zero.ethos.domains":
          _current = "com.50gramx.50.ethos.domains";
          break;
        case "com.fiftygramx.seventy.zero.ethos.pods":
          _current = "com.50gramx.70.ethos.pods";
          break;
        case "com.fiftygramx.seventy.zero.ethos.nodes":
          _current = "com.50gramx.70.ethos.nodes";
          break;
        default:
          _current = "com.50gramx";
      }
    }

    return _current!;
  }
}
