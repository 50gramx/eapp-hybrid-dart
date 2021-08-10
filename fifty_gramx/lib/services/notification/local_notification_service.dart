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
    // +++ Initialising the settings for Android
    final AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('launcher_icon');

    // +++ Initialising the settings for iOS
    final IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings(
      requestSoundPermission: false,
      requestBadgePermission: false,
      requestAlertPermission: false,
      // onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );

    // +++ Initialising the settings for MacOS
    final MacOSInitializationSettings initializationSettingsMacOS =
        MacOSInitializationSettings(
            requestAlertPermission: false,
            requestBadgePermission: false,
            requestSoundPermission: false);

    // +++ Finalising the Initialized settings for Platforms supported
    // by FCM and flutter_local_notifications
    final InitializationSettings initializationSettings =
        InitializationSettings(
            android: initializationSettingsAndroid,
            iOS: initializationSettingsIOS,
            macOS: initializationSettingsMacOS);

    // --> Wait till settings are initialized
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: selectNotification);

    final bool? resultIOS = await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
    print("resultIOS: ${resultIOS}");

    final bool? resultMACOS = await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            MacOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
    print("resultMACOS: ${resultMACOS}");

    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      "com.fiftygramx.ethosai",
      "notifications.local",
      "SMS Notifications",
      importance: Importance.high,
      priority: Priority.high,
      playSound: true,
    );

    const IOSNotificationDetails iosNotificationDetails =
        IOSNotificationDetails(
      presentSound: true,
      presentAlert: true,
    );

    const MacOSNotificationDetails macOSNotificationDetails =
        MacOSNotificationDetails(
      presentSound: true,
      presentAlert: true,
    );

    // Setting the platform channel specifics
    platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iosNotificationDetails,
      macOS: macOSNotificationDetails,
    );
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
