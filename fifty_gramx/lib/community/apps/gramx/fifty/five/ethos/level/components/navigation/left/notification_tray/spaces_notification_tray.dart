import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/app_notification.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/notification_tray.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SpacesNotificationTray extends NotificationTray {
  const SpacesNotificationTray({
    required List<AppNotification> notifications,
    required VoidCallback onViewDetails,
    required VoidCallback onClearAppNotifications,
  }) : super(
          notifications: notifications,
          onViewDetails: onViewDetails,
          onClearAppNotifications: onClearAppNotifications,
        );

  @override
  State<SpacesNotificationTray> createState() => _SpacesNotificationTrayState();
}

class _SpacesNotificationTrayState
    extends NotificationTrayState<SpacesNotificationTray> {
  Widget buildTray(Widget trayChild) {
    return Neumorphic(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray700
            : AppColors.backgroundSecondary(context),
        intensity: NeumorphicTheme.isUsingDark(context) ? 0.3 : 0.5,
        shape: NeumorphicShape.convex,
        depth: 0,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.backgroundPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
          width: 1,
        ),
      ),
      child: trayChild,
    );
  }

  final List<Map<String, String>> domains = [
    {
      'icon': 'assets/icons/deployment.png',
      'name': 'Deployment Domain 1',
      'lastAccess': '2024-11-24 14:30',
      'collar': 'Deployment',
    },
    {
      'icon': 'assets/icons/deployment.png',
      'name': 'Deployment Domain 2',
      'lastAccess': '2024-11-22 10:15',
      'collar': 'Deployment',
    },
    {
      'icon': 'assets/icons/deployment.png',
      'name': 'Deployment Domain 3',
      'lastAccess': '2024-11-20 17:45',
      'collar': 'Deployment',
    },
    {
      'icon': 'assets/icons/deployment.png',
      'name': 'Deployment Domain 4',
      'lastAccess': '2024-11-18 12:00',
      'collar': 'Deployment',
    },
    {
      'icon': 'assets/icons/deployment.png',
      'name': 'Deployment Domain 5',
      'lastAccess': '2024-11-15 08:30',
      'collar': 'Deployment',
    },
  ];

  Widget buildTrayRow() {
    return GestureDetector(
        onTap: widget.onViewDetails,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Header Row
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.backgroundInverseTertiary(context),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight:
                        Radius.circular(24)), // Optional: makes it rounded
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left header (icon, My space domains)
                  Row(
                    children: [
                      Icon(
                        FeatherIcons.globe,
                        size: 18,
                        color: AppColors.contentInverseSecondary(context),
                      ), // Replace with appropriate icon
                      SizedBox(width: 8),
                      Text(
                        "My space domains",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: AppColors.contentInverseSecondary(context),
                            fontFamily: "Montserrat"),
                      ),
                    ],
                  ),
                  // Right header (number of domains)
                  Text(
                    "${domains.length}",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: AppColors.contentInverseSecondary(context),
                        fontFamily: "Montserrat"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // List of domains (max 5 rows)
            for (int i = 0; i < domains.length; i++)
              buildDomainRow(domains[i], context),
          ],
        ));
  }

  Widget buildDomainRow(Map<String, String> domain, BuildContext context) {
    return GestureDetector(
      onTap: widget.onViewDetails,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            // Domain Icon on the left
            Icon(
              FeatherIcons.activity,
              size: 12,
            ),
            SizedBox(width: 8),

            // Domain name on the left
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  domain['name']!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      "${domain['lastAccess']}",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2), // Control padding
                      margin: EdgeInsets.symmetric(
                          horizontal: 4, vertical: 2), // Control padding
                      decoration: BoxDecoration(
                        color: AppColors.backgroundSecondary(context),
                        borderRadius: BorderRadius.circular(
                            16), // Optional: makes it rounded
                      ),
                      child: Text(
                        domain['collar']!.toUpperCase(),
                        style: TextStyle(
                          fontSize: 12, // Smaller font size
                          color: AppColors.contentSecondary(context),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDomainTile(String title, String description,
      List<String> domains, IconData icon, Color color) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, color: color, size: 32.0),
            SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 16.0, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildTray(Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTrayRow(),
          super.build(context),
        ],
      ),
    ));
  }
}
