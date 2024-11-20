class AppNotification {
  final String title;
  final String body;
  final DateTime timestamp;
  final String communityCode;
  final String orgName;
  final String appName;
  final String pageNameCode;
  final String collarNameCode;

  AppNotification({
    required this.title,
    required this.body,
    required this.timestamp,
    required this.communityCode,
    required this.orgName,
    required this.appName,
    required this.pageNameCode,
    required this.collarNameCode,
  });
}
