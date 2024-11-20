import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/app_notification.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';

class NotificationManager {
  static final NotificationManager _instance = NotificationManager._internal();

  // Stream for local notifications
  static Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  // Nested map to store notifications by community, organization, app, and page
  final Map<String,
          Map<String, Map<String, Map<String, List<AppNotification>>>>>
      _notifications = {};

  // Private constructor for singleton pattern
  NotificationManager._internal() {
    // Initialize the stream listener
    _notificationsStream.listen(_handleListeningMessages);
  }

  // Getter to access the singleton instance
  static NotificationManager get instance => _instance;

  // Method to add a notification
  void addNotification({
    required String communityCode,
    required String orgName,
    required String appName,
    required String pageNameCode,
    required AppNotification notification,
  }) {
    // Ensure structure exists
    _notifications.putIfAbsent(communityCode, () => {});
    _notifications[communityCode]!.putIfAbsent(orgName, () => {});
    _notifications[communityCode]![orgName]!.putIfAbsent(appName, () => {});
    _notifications[communityCode]![orgName]![appName]!
        .putIfAbsent(pageNameCode, () => []);

    // Add the notification
    _notifications[communityCode]![orgName]![appName]![pageNameCode]!
        .add(notification);
  }

  // Stream handler for incoming notifications
  void _handleListeningMessages(LocalNotification localNotification) {
    final data = localNotification.data;

    // Check and extract required fields from the notification data
    final communityCode = data['communityCode'] ?? '';
    final orgName = data['orgName'] ?? '';
    final appName = data['appName'] ?? '';
    final pageNameCode = data['pageNameCode'] ?? '';
    final collarNameCode = data['collarNameCode'] ?? '';

    if (communityCode.isNotEmpty &&
        orgName.isNotEmpty &&
        appName.isNotEmpty &&
        pageNameCode.isNotEmpty) {
      // Create an AppNotification instance
      final notification = AppNotification(
        title: data['title'] ?? 'New Notification',
        body: data['body'] ?? '',
        timestamp: DateTime.now(),
        communityCode: communityCode,
        orgName: orgName,
        appName: appName,
        pageNameCode: pageNameCode,
        collarNameCode: collarNameCode,
      );

      // Add the notification
      addNotification(
          communityCode: communityCode,
          orgName: orgName,
          appName: appName,
          pageNameCode: pageNameCode,
          notification: notification);
    }
  }

  // Method to retrieve notifications for a specific page
  List<AppNotification> getPageNotifications({
    required String communityCode,
    required String orgName,
    required String appName,
    required String pageNameCode,
  }) {
    return _notifications[communityCode]?[orgName]?[appName]?[pageNameCode] ??
        [];
  }

  // Method to get all notifications for a specific app
  Map<String, List<AppNotification>> getAppNotifications({
    required String communityCode,
    required String orgName,
    required String appName,
  }) {
    return _notifications[communityCode]?[orgName]?[appName] ?? {};
  }

  // Method to get all notifications for a specific organization
  Map<String, Map<String, List<AppNotification>>> getOrgNotifications({
    required String communityCode,
    required String orgName,
  }) {
    return _notifications[communityCode]?[orgName] ?? {};
  }

  // Method to get all notifications for a community
  Map<String, Map<String, Map<String, List<AppNotification>>>>
      getCommunityNotifications({
    required String communityCode,
  }) {
    return _notifications[communityCode] ?? {};
  }

  // Method to clear notifications for a specific page
  void clearPageNotifications({
    required String communityCode,
    required String orgName,
    required String appName,
    required String pageNameCode,
  }) {
    _notifications[communityCode]?[orgName]?[appName]?[pageNameCode]?.clear();
  }

  // Method to clear all notifications for a specific app
  void clearAppNotifications({
    required String communityCode,
    required String orgName,
    required String appName,
  }) {
    _notifications[communityCode]?[orgName]?[appName]?.clear();
  }

  // Method to clear all notifications for an organization
  void clearOrgNotifications({
    required String communityCode,
    required String orgName,
  }) {
    _notifications[communityCode]?[orgName]?.clear();
  }

  // Method to clear all notifications for a community
  void clearCommunityNotifications({
    required String communityCode,
  }) {
    _notifications[communityCode]?.clear();
  }
}
