import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/app_notification.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/notification_tray.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ConnectionsNotificationTray extends NotificationTray {
  final int activeConnections;
  final int trustedAccounts;
  final int trustedSpaces;
  final int trustedCollars;
  final int pendingConnections;

  const ConnectionsNotificationTray({
    required List<AppNotification> notifications,
    required VoidCallback onViewDetails,
    required VoidCallback onClearAppNotifications,
    required this.activeConnections,
    required this.trustedAccounts,
    required this.trustedSpaces,
    required this.trustedCollars,
    required this.pendingConnections,
  }) : super(
          notifications: notifications,
          onViewDetails: onViewDetails,
          onClearAppNotifications: onClearAppNotifications,
        );

  @override
  State<ConnectionsNotificationTray> createState() =>
      _ConnectionsNotificationTrayState();
}

class _ConnectionsNotificationTrayState
    extends NotificationTrayState<ConnectionsNotificationTray> {
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

  Widget buildTrayRow() {
    return GestureDetector(
      onTap: widget.onViewDetails,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildInsightCard(
                title: 'Accounts',
                count: widget.trustedAccounts,
              ),
              _buildInsightCard(
                title: 'Spaces',
                count: widget.trustedSpaces,
              ),
              _buildInsightCard(
                title: 'Collars',
                count: widget.trustedCollars,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInsightCard({required String title, required int count}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: AppColors.backgroundSecondary(context)
                .withOpacity(0.1), // Subtle shadow for depth
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Gradient Text for Count
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [
                AppColors.contentPrimary(
                    context), // Start color of the gradient
                AppColors.platinum(context), // End color of the gradient
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(bounds),
            child: Text(
              '$count',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat",
                color: AppColors.contentSecondary(
                    context), // The color here is just a placeholder
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontFamily: "Montserrat",
              color: AppColors.contentSecondary(context),
            ),
          ),
        ],
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
