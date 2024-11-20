import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/app_notification.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/notification_tray.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class IdentityNotificationTray extends NotificationTray {
  final String userName;
  final String profilePictureUrl;
  final bool isVerified;
  final String universeName;
  final String galaxyName;
  final String spaceName;

  const IdentityNotificationTray(
    this.userName,
    this.profilePictureUrl,
    this.isVerified,
    this.universeName,
    this.galaxyName,
    this.spaceName, {
    required List<AppNotification> notifications,
    required VoidCallback onViewDetails,
    required VoidCallback onClearAppNotifications,
  }) : super(
          notifications: notifications,
          onViewDetails: onViewDetails,
          onClearAppNotifications: onClearAppNotifications,
        );

  @override
  _IdentityNotificationTrayState createState() =>
      _IdentityNotificationTrayState();
}

class _IdentityNotificationTrayState
    extends NotificationTrayState<IdentityNotificationTray> {
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4),
          child: CircleAvatar(
            child: Icon(
              FeatherIcons.user,
              size: 24,
              color: AppColors.contentSecondary(context),
            ),
            radius: 24.0,
            backgroundColor: AppColors.backgroundSecondary(context),
          ),
        ),
        GestureDetector(
          onTap: widget.onViewDetails,
          child: Padding(
            padding: EdgeInsets.only(right: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.userName.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                    color: AppColors.contentSecondary(context),
                    fontFamily: "Montserrat",
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  widget.isVerified
                      ? '${widget.spaceName}'
                      : '${widget.spaceName}',
                  style: TextStyle(
                    color: widget.isVerified
                        ? AppColors.platinum2(context)
                        : AppColors.warning(context),
                    fontSize: 14.0,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
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
