import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/app_notification.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

abstract class NotificationTray extends StatefulWidget {
  final List<AppNotification> notifications;
  final VoidCallback onViewDetails;
  final VoidCallback onClearAppNotifications;

  const NotificationTray({
    Key? key,
    required this.notifications,
    required this.onViewDetails,
    required this.onClearAppNotifications,
  }) : super(key: key);

  @override
  State<NotificationTray> createState();
}

abstract class NotificationTrayState<T extends NotificationTray>
    extends State<T> {
  bool _isExpanded = false;

  String formatNotificationTime(DateTime timestamp) {
    final now = DateTime.now();
    final diff = now.difference(timestamp);
    final timeAgo = _formatTimeAgo(diff);
    return timeAgo;
  }

  String _formatTimeAgo(Duration duration) {
    if (duration.inDays > 0) return '${duration.inDays} days ago';
    if (duration.inHours > 0) return '${duration.inHours} hours ago';
    if (duration.inMinutes > 0) return '${duration.inMinutes} minutes ago';
    return '${duration.inSeconds} seconds ago';
  }

  Widget compactNotificationTile(
      BuildContext context, AppNotification notification) {
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0), // Less padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Title and Timestamp in a Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.0, top: 4.0),
                  child: Text(
                    notification.title,
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: AppColors.contentSecondary(context),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 2), // Tight spacing
                Padding(
                  padding: EdgeInsets.only(left: 4.0),
                  child: Text(
                    formatNotificationTime(notification.timestamp),
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      fontSize: 10,
                      color: AppColors.contentTertiary(context),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 8), // Small spacing between columns
          // Optional Icon for Notification Type
          Icon(
            Icons.notification_important,
            size: 14,
            color: Colors.grey[600],
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationTile(AppNotification notification) {
    return Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray700
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        depth: 0,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.backgroundPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundSecondary(context),
          width: 2,
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: 4.0, vertical: 4.0), // Space between items
        child: compactNotificationTile(context, notification),
      ),
    );
  }

  Widget _buildNotificationList() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: widget.onClearAppNotifications,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Seen All",
                  style: TextStyle(
                    color: AppColors.contentInverseSecondary(context),
                    fontStyle: FontStyle.italic,
                    fontFamily: "Montserrat",
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Collapse",
                style: TextStyle(
                  color: AppColors.contentInverseSecondary(context),
                  fontStyle: FontStyle.italic,
                  fontFamily: "Montserrat",
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.notifications.length,
          itemBuilder: (context, index) {
            var revIndex = widget.notifications.length - 1 - index;
            final notification = widget.notifications[revIndex];
            return Slidable(
              child: _buildNotificationTile(notification),
              startActionPane: ActionPane(
                motion: ScrollMotion(),
                children: [
                  SlidableAction(
                    onPressed: (context) {
                      setState(() {
                        widget.notifications.removeAt(revIndex);
                      });
                    },
                    backgroundColor:
                        AppColors.backgroundInverseTertiary(context),
                    foregroundColor: AppColors.contentInverseSecondary(context),
                    icon: Icons.remove_red_eye_rounded,
                    label: 'Seen',
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
            visible: widget.notifications.length > 1,
            child: SizedBox(height: 16.0)),

        // Collapsed/Expanded Notification List
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded; // Toggle expansion state
            });
          },
          child: Column(
            children: [
              if (!_isExpanded && widget.notifications.isNotEmpty)
                _buildNotificationTile(widget.notifications.last),
              if (_isExpanded) _buildNotificationList(),
              if (widget.notifications.length > 1)
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    _isExpanded
                        ? "Collapse"
                        : "And ${widget.notifications.length - 1} more notifications",
                    style: TextStyle(
                      color: AppColors.contentInverseSecondary(context),
                      fontStyle: FontStyle.italic,
                      fontFamily: "Montserrat",
                      fontSize: 12,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
