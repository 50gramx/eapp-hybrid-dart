import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/app_notification.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/notification_tray/notification_tray.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ConversationsNotificationTray extends NotificationTray {
  final List<Conversation> recentConversations;

  const ConversationsNotificationTray(
    this.recentConversations, {
    required List<AppNotification> notifications,
    required VoidCallback onViewDetails,
    required VoidCallback onClearAppNotifications,
  }) : super(
          notifications: notifications,
          onViewDetails: onViewDetails,
          onClearAppNotifications: onClearAppNotifications,
        );

  @override
  State<ConversationsNotificationTray> createState() =>
      _ConversationsNotificationTrayState();
}

class _ConversationsNotificationTrayState
    extends NotificationTrayState<ConversationsNotificationTray> {
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
      onTap: widget.onViewDetails, // Navigate to detailed conversations
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // List of recent conversations
          Container(
            height: widget.recentConversations.length >= 2
                ? 2 * 62
                : (widget.recentConversations.length == 1
                    ? 62
                    : 0), // Adjust as needed to fit within tray height
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: widget.recentConversations.length >= 2
                  ? 2
                  : (widget.recentConversations.length == 1
                      ? 1
                      : 0), // Sample data list
              itemBuilder: (context, index) {
                final conversation = widget.recentConversations[index];

                return Neumorphic(
                  margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    shape: NeumorphicShape.convex,
                    depth: 2,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
                    color: AppColors.backgroundPrimary(context),
                    border: NeumorphicBorder(
                      isEnabled: true,
                      color: AppColors.backgroundSecondary(context),
                      width: 2,
                    ),
                  ),
                  child: ListTile(
                    dense: true,
                    isThreeLine: false,
                    title: Text(
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      conversation.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Montserrat",
                        color: AppColors.contentSecondary(context),
                      ),
                    ),
                    subtitle: Text(
                      conversation.lastMessage,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        color: AppColors.contentTertiary(context),
                      ),
                    ),
                    trailing: conversation.unreadCount > 0
                        ? Container(
                            padding: EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: AppColors.orange(context),
                              shape: BoxShape.circle,
                            ),
                            child: Text(
                              '${conversation.unreadCount}',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          )
                        : null,
                    onTap: widget.onViewDetails,
                  ),
                );
              },
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

class Conversation {
  final String name;
  final String lastMessage;
  final String? avatarUrl;
  final int unreadCount;

  Conversation({
    required this.name,
    required this.lastMessage,
    this.avatarUrl,
    this.unreadCount = 0,
  });
}
