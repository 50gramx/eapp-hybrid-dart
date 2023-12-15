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

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  /// singleton definition
  static LocalNotificationService? _instance;

  LocalNotificationService._();

  factory LocalNotificationService() {
    if (_instance == null) {
      _instance = LocalNotificationService._();
      _instance!.start();
    }
    return _instance!;
  }

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  late NotificationDetails platformChannelSpecifics;

  Future<void> start() async {
    // +++ Initialising the settings for Android
    final AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('launcher_icon');

    // +++ Initialising the settings for iOS
    final DarwinInitializationSettings initializationSettingsDarwin =
        DarwinInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
      // onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );

    // +++ Finalising the Initialized settings for Platforms supported
    // by FCM and flutter_local_notifications
    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsDarwin,
            macOS: initializationSettingsDarwin);

    // --> Wait till settings are initialized
    await flutterLocalNotificationsPlugin.initialize(
        initializationSettings,
        onDidReceiveNotificationResponse: selectNotification,
    );

    final bool? resultIOS = await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );

    final bool? resultMACOS = await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            MacOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );

    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      "com.fiftygramx.ethosai",
      "notifications.local",
      importance: Importance.high,
      priority: Priority.high,
      playSound: true,
    );

    const DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails(
      presentSound: true,
      presentAlert: true,
    );

    // Setting the platform channel specifics
    platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: darwinNotificationDetails,
      macOS: darwinNotificationDetails,
    );
  }

  showLocalNotification(
      int id, String title, String body, String? payload) async {
    await flutterLocalNotificationsPlugin
        .show(id, title, body, platformChannelSpecifics, payload: payload);
  }

  selectNotification(NotificationResponse notificationResponse) async {
    //Handle notification tapped logic here
  }

  // warn: incomplete for iOS local notifications
  onDidReceiveLocalNotification() {}
}
