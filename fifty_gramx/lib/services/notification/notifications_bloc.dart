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

import 'package:rxdart/rxdart.dart';

class LocalNotification {
  final String type;
  final Map data;

  LocalNotification(this.type, this.data);
}

class NotificationsBloc {
  NotificationsBloc._internal();

  static final NotificationsBloc instance = NotificationsBloc._internal();

  final BehaviorSubject<LocalNotification> _notificationsStreamController =
      BehaviorSubject<LocalNotification>();

  Stream<LocalNotification> get notificationsStream {
    return _notificationsStreamController;
  }

  void newNotification(LocalNotification notification) {
    _notificationsStreamController.sink.add(notification);
  }

  void newEAppNotification(String communityCode, String orgName, String appName,
      String pageNameCode, String collarNameCode, String title) {
    LocalNotification notification = LocalNotification("EthosAppFlowBob", {
      "communityCode": communityCode,
      "orgName": orgName,
      "appName": appName,
      "pageNameCode": pageNameCode,
      "collarNameCode": collarNameCode,
      "title": title,
    });
    _notificationsStreamController.sink.add(notification);
  }

  void dispose() {
    _notificationsStreamController.close();
  }
}
