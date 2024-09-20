import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/community_logo.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/eait_1008.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/layout_breakpoint.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/page_tab_pane.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EAIT1002 extends StatefulWidget {
  const EAIT1002({
    required this.focusMode,
    required this.isNavigatingLeft,
    required this.navigationViewPort,
    required this.selectPressedSectionItem,
    required this.windowPane,
    required this.navigationWidget,
    Key? key,
  });

  final bool focusMode;
  final bool isNavigatingLeft;
  final int navigationViewPort;
  final Function(int) selectPressedSectionItem;
  final Widget windowPane;
  final EutopiaLeftNavigationScaffold navigationWidget;

  @override
  _EAIT1002State createState() => _EAIT1002State();
}

class _EAIT1002State extends State<EAIT1002> {
  /// internal instance of LocalNotifications
  static Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  late bool isOpenTilePaneVisible;

  _handleOpenTilesPaneState(LocalNotification message) {
    if (message.data["isVisible"] == true) {
      if (!isOpenTilePaneVisible) {
        setState(() {
          isOpenTilePaneVisible = true;
        });
      }
    } else {
      if (isOpenTilePaneVisible) {
        setState(() {
          isOpenTilePaneVisible = false;
        });
      }
    }
  }

  /// handler invoked inside localNotifications, which listens to new messages
  /// when the device receives a push notification based on metadata
  handleListeningMessages(LocalNotification message) async {
    if (message.type == "OpenTilesPane") {
      if (message.data.containsKey("isVisible")) {
        _handleOpenTilesPaneState(message);
      }
    }
  }

  @override
  void initState() {
    isOpenTilePaneVisible = true;
    _notificationsStream.listen((notification) {
      handleListeningMessages(notification);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isOneEappLoaded =
        EthosAppFlowBob.eutopiaNavigationBarSectionalItems.length == 1;
    Widget pageTabPane = Visibility(
      visible: widget.isNavigatingLeft,
      child: Expanded(
        child: PageTabPane(
          selectPressedSectionItem: widget.selectPressedSectionItem,
          parentWidget: widget.navigationWidget,
        ),
      ),
    );

    return Container(
      child: Column(
        children: [
          Visibility(
            visible: LayoutBreakpoint().isNavigatingLeft(context)
                ? (isOneEappLoaded ? false : true)
                : true,
            child: Container(
              height: widget.isNavigatingLeft ? 64 : 48,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommunityLogo(),
                  pageTabPane,
                  buildCommunityCardIconButton(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: widget.isNavigatingLeft ? 11 : 8,
            child: widget.windowPane,
          ),
          EAIT1008(
            isNavigatingLeft: widget.isNavigatingLeft,
            navigationViewPort: widget.navigationViewPort,
            selectPressedSectionItem: widget.selectPressedSectionItem,
            navigationWidget: widget.navigationWidget,
          ),
        ],
      ),
    );
  }

  buildCommunityCardIconButton() {
    return Container(
      child: NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: handleOpenTilePaneStateToggle,
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            disableDepth: true,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.backgroundInverseTertiary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundInverseTertiary(context),
              width: 2,
            ),
          ),
          child: Center(
            child: buildCommunityCardIcon(),
          )),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      padding: EdgeInsets.only(top: 8),
    );
  }

  buildCommunityCardIcon() {
    return NeumorphicIcon(
      isOpenTilePaneVisible ? FeatherIcons.bell : FeatherIcons.bellOff,
      size: 20,
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.contentInverseSecondary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.contentInverseSecondary(context),
          width: 1,
        ),
      ),
    );
  }
}

handleOpenTilePaneStateToggle() {
  print("onclicked toggle");
  NotificationsBloc.instance
      .newNotification(LocalNotification("OpenTilesPane", {"state": "toggle"}));
}

buildCommunityCardJustIcon(context) {
  return Icon(
    FeatherIcons.bell,
    size: 24,
    color: AppColors.orange(context),
  );
}

buildAccountAssistantIconButton(context) {
  return Neumorphic(
    style: NeumorphicStyle(
      color: AppColors.backgroundPrimary(context),
      lightSource: NeumorphicTheme.isUsingDark(context)
          ? LightSource.bottomRight
          : LightSource.topLeft,
      shadowLightColor: NeumorphicTheme.isUsingDark(context)
          ? AppColors.gray600
          : AppColors.backgroundSecondary(context),
      border: NeumorphicBorder(
          color: AppColors.backgroundInverseTertiary(context), width: 0.5),
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
    ),
    margin: EdgeInsets.only(top: 8, right: 16),
    child: NeumorphicButton(
      provideHapticFeedback: true,
      onPressed: () {},
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.convex,
        boxShape: NeumorphicBoxShape.circle(),
        color: AppColors.backgroundPrimary(context),
      ),
      padding: const EdgeInsets.all(0),
      child: CircleAvatar(
        radius: 16,
        foregroundImage:
            Image.network("https://thispersondoesnotexist.com").image,
      ),
    ),
  );
}
