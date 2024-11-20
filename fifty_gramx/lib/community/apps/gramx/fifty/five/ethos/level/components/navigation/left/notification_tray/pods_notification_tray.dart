import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/app_notification.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/notification_tray.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PodsNotificationTray extends NotificationTray {
  final int podsDeployed;
  final int pagesDeployed;

  const PodsNotificationTray(
    this.podsDeployed,
    this.pagesDeployed, {
    required List<AppNotification> notifications,
    required VoidCallback onViewDetails,
    required VoidCallback onClearAppNotifications,
  }) : super(
          notifications: notifications,
          onViewDetails: onViewDetails,
          onClearAppNotifications: onClearAppNotifications,
        );

  @override
  State<PodsNotificationTray> createState() => _PodsNotificationTrayState();
}

class _PodsNotificationTrayState
    extends NotificationTrayState<PodsNotificationTray> {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Number of Pods
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "${widget.podsDeployed}",
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      color: AppColors.contentInverseSecondary(context)),
                ),
                Text(
                  "Pods".toUpperCase(),
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      color: AppColors.contentInverseSecondary(context)),
                ),
              ],
            ),

            // Number of Pages
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "${widget.pagesDeployed}",
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                      color: AppColors.contentInverseSecondary(context)),
                ),
                Text(
                  "Pages".toUpperCase(),
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      color: AppColors.contentInverseSecondary(context)),
                ),
              ],
            ),
          ],
        ));
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
