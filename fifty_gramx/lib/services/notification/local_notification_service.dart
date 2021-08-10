import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  static final LocalNotificationService _notificationService =
      LocalNotificationService._internal();

  factory LocalNotificationService() {
    return _notificationService;
  }

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  late NotificationDetails platformChannelSpecifics;

  LocalNotificationService._internal();

  Future<void> init() async {
    final AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('launcher_icon');

    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
      // onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );

    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsIOS,
            macOS: null);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: selectNotification);

    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails("com.fiftygramx.ethosai",
            "notifications.local", "SMS Notifications",
            importance: Importance.high,
          priority: Priority.high,
          playSound: true,
        );

    if (Platform.isAndroid) {
      platformChannelSpecifics =
          NotificationDetails(android: androidPlatformChannelSpecifics);
    }
  }

  showLocalNotification(
      int id, String title, String body, String? payload) async {
    await flutterLocalNotificationsPlugin
        .show(id, title, body, platformChannelSpecifics, payload: payload);
  }

  Future selectNotification(String? payload) async {
    //Handle notification tapped logic here
  }

  // warn: incomplete for iOS local notifications
  onDidReceiveLocalNotification() {}
}
