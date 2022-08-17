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

import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  bool _started = false;
  bool isNotificationFailure = true;
  String _lastCheckedDeviceToken = "";

  PushNotificationService._internal();

  static final PushNotificationService instance =
      PushNotificationService._internal();

  static FirebaseMessaging? _firebaseMessaging;

  // getting the client on the very first call
  static Future<FirebaseMessaging> get firebaseMessaging async =>
      _firebaseMessaging ??= await (() async {
        await Firebase.initializeApp();
        return FirebaseMessaging.instance;
      }());

  // ********************************************************* //
  // YOU HAVE TO CALL THIS FROM SOMEWHERE (May be main widget)
  // ********************************************************* //
  Future<void> start() async {
    // Verify this isSupported (Safari doesn't support PUSH API's)
    if (!_started && (await firebaseMessaging).isSupported()) {
      await _start();
      _started = true;
      _refreshToken();
    } else {}
  }

  void _refreshToken() async {
    (await firebaseMessaging)
        .getToken()
        .then((value) => _tokenRefresh(value!), onError: _tokenRefreshFailure);
  }

  Future<void> _start() async {
    await updateLastCheckedDeviceToken(); // handles requestPermissions()

    (await firebaseMessaging)
        .onTokenRefresh
        .listen(_tokenRefresh, onError: _tokenRefreshFailure);

    // FirebaseMessaging
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      _onMessage(message.data);
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {});

    FirebaseMessaging.onBackgroundMessage(
        (message) => _onBackgroundMessage(message));
  }

  updateLastCheckedDeviceToken() async {
    NotificationSettings settings = await getSettings();
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      isNotificationFailure = false;
      _lastCheckedDeviceToken = (await (await firebaseMessaging).getToken())!;
      return _lastCheckedDeviceToken;
    } else {
      isNotificationFailure = true;
    }
  }

  Future<NotificationSettings> getSettings() async {
    return await (await firebaseMessaging).requestPermission(
        alert: true, badge: true, provisional: false, sound: true);
  }

  String getLastCheckedDeviceToken() {
    return _lastCheckedDeviceToken;
  }

  void _tokenRefresh(String newToken) {
    _lastCheckedDeviceToken = newToken;
  }

  void _tokenRefreshFailure(error) {
    isNotificationFailure = true;
  }

  Future<void> _onMessage(Map<String, dynamic> message) async {
    if (message['notification'] != null) {
      final notification =
          LocalNotification("notification", message['notification'] as Map);
      NotificationsBloc.instance.newNotification(notification);
      return null;
    }
    print("_onMessage");
    if (message['data'] != null) {
      final notification = LocalNotification("data", message['data'] as Map);
      NotificationsBloc.instance.newNotification(notification);
      return null;
    } else {
      final notification = LocalNotification("data", message);
      NotificationsBloc.instance.newNotification(notification);
      return null;
    }
  }

  Future<void> _onBackgroundMessage(RemoteMessage message) async {
    return null;
  }

  Future<AccountDeviceDetails> getAccountDeviceDetails() async {
    await PushNotificationService.instance.updateLastCheckedDeviceToken();
    AccountDeviceDetails accountDeviceDetails =
        AccountDeviceDetails.getDefault();
    if (Platform.isAndroid) {
      accountDeviceDetails = AccountDeviceDetails()
        ..accountDeviceOs = AccountDeviceOS.ANDROID
        ..deviceToken =
            PushNotificationService.instance.getLastCheckedDeviceToken();
    } else if (Platform.isIOS) {
      accountDeviceDetails = AccountDeviceDetails()
        ..accountDeviceOs = AccountDeviceOS.IOS
        ..deviceToken =
            PushNotificationService.instance.getLastCheckedDeviceToken();
    } else if (Platform.isMacOS) {
      accountDeviceDetails = AccountDeviceDetails()
        ..accountDeviceOs = AccountDeviceOS.MACOS
        ..deviceToken =
            PushNotificationService.instance.getLastCheckedDeviceToken();
    }
    return accountDeviceDetails;
  }
}
