import 'package:firebase_core/firebase_core.dart';

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
