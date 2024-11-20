import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/app_notification.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/notification_tray.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PayNotificationTray extends NotificationTray {
  final double walletBalance;

  const PayNotificationTray({
    required List<AppNotification> notifications,
    required VoidCallback onViewDetails,
    required this.walletBalance,
    required VoidCallback onClearAppNotifications,
  }) : super(
          notifications: notifications,
          onViewDetails: onViewDetails,
          onClearAppNotifications: onClearAppNotifications,
        );

  @override
  State<PayNotificationTray> createState() => _PayNotificationTrayState();
}

class _PayNotificationTrayState
    extends NotificationTrayState<PayNotificationTray> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                'Credits',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.contentSecondary(
                      context), // Adjust based on your theme
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Text(
                '₹${widget.walletBalance.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,

                  fontFamily: "Montserrat",
                  color: AppColors.contentSecondary(
                      context), // Adjust based on your theme
                ),
              ),
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
