import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/app_notification.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/notification_tray.dart';
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
        shape: NeumorphicShape.flat,
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

  Widget buildTrayRow() {
    return GestureDetector(
      onTap: widget.onViewDetails, // Navigate to detailed screen if needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDomainTile(
            "Discovering and Sharing Information",
            "knowledge domains",
            ["a"],
            Icons.lightbulb_outline,
            Colors.blue,
          ),
          _buildDomainTile(
            "Buying and Selling",
            "Product domains",
            ["a"],
            Icons.shopping_cart_outlined,
            Colors.green,
          ),
          _buildDomainTile(
            "Doing and Getting Work",
            "Service domains",
            ["a"],
            Icons.work_outline,
            Colors.orange,
          ),
          _buildDomainTile(
            "Control Inbound and Outbound Things",
            "Things domains",
            ["a"],
            Icons.devices_other,
            Colors.purple,
          ),
        ],
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
