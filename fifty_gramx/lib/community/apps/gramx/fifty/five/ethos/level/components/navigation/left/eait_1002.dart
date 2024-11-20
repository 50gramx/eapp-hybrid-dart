import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Style/AppTextStyle.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/community_logo.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/eait_1008.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/focus_pane_tab.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/layout_breakpoint.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EAIT1002 extends StatefulWidget {
  const EAIT1002({
    required this.focusPaneKey,
    required this.isNavigatingLeft,
    required this.isCommunityStackPagesVisible,
    required this.navigationViewPort,
    required this.selectPressedSectionItem,
    required this.windowPane,
    required this.navigationWidget,
    required this.isSearchVisible,
    required this.isOpenTilePaneVisible,
    required this.openPagesTabs,
    required this.toggleSearchOnTop,
    required this.focusPaneShift,
    Key? key,
  });

  final String focusPaneKey;
  final bool isNavigatingLeft;
  final bool isCommunityStackPagesVisible;
  final int navigationViewPort;
  final Function(int) selectPressedSectionItem;
  final Widget windowPane;
  final EutopiaLeftNavigationScaffold navigationWidget;
  final bool isSearchVisible;
  final bool isOpenTilePaneVisible;
  final Widget openPagesTabs;
  final Function() toggleSearchOnTop;
  final Function(String) focusPaneShift;

  @override
  _EAIT1002State createState() => _EAIT1002State();
}

class _EAIT1002State extends State<EAIT1002> {
  /// internal instance of LocalNotifications
  static Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  _handleSearchCollapseView(LocalNotification message) {
    if (message.data["searchCollapsed"] == true) {
      if (!widget.isSearchVisible) {
        widget.toggleSearchOnTop();
      }
    } else if (message.data["searchCollapsed"] == false) {
      if (widget.isSearchVisible) {
        widget.toggleSearchOnTop();
      }
    }
  }

  /// handler invoked inside localNotifications, which listens to new messages
  /// when the device receives a push notification based on metadata
  handleListeningMessages(LocalNotification message) async {
    if (message.type == "OpenPagesPane") {
      if (message.data.containsKey("searchCollapsed")) {
        _handleSearchCollapseView(message);
      }
    }
  }

  @override
  void initState() {
    _notificationsStream.listen((notification) {
      handleListeningMessages(notification);
    });
    super.initState();
  }

  buildCommunityCardIcon() {
    return NeumorphicIcon(
      widget.isOpenTilePaneVisible
          ? Icons.panorama_horizontal_rounded
          : Icons.panorama_photosphere_outlined,
      size: 24,
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.contentSecondary(context),
      ),
    );
  }

  buildCommunityCardIconButton() {
    return Container(
      child: NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: () {
            handleOpenTilePaneStateToggle(widget.isOpenTilePaneVisible);
          },
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
            color: AppColors.backgroundPrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundSecondary(context),
              width: 2,
            ),
          ),
          child: Center(
            child: buildCommunityCardIcon(),
          )),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      padding: EdgeInsets.only(top: 21, bottom: 2, right: 16),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isOneEappLoaded = AppFlowManager.instance
            .getEutopiaNavigationBarSectionalItems()!
            .length ==
        1;

    Widget customScrollView = CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          collapsedHeight: 120.0,
          backgroundColor: AppColors.backgroundPrimary(context),
          flexibleSpace: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              var collapseRatio = (constraints.maxHeight - kToolbarHeight) /
                  (200 - kToolbarHeight);
              return Padding(
                padding: EdgeInsets.only(
                    right: widget.isOpenTilePaneVisible ? 322 : 0),
                child: Column(children: [
                  FlexibleSpaceBar(
                    title: widget.isSearchVisible
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // Add "50GRAMX" text next to the search bar
                              CommunityLogo(),
                              SizedBox(
                                  width:
                                      8), // Spacing between title and search bar

                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 16,
                                      top: 24,
                                      right: widget.isOpenTilePaneVisible
                                          ? 120
                                          : 260),
                                  child: Neumorphic(
                                    child: TextField(
                                      style: AppTextStyle.themeTitleTextStyle(
                                          context),
                                      cursorColor:
                                          AppColors.contentPrimary(context),
                                      decoration: InputDecoration(
                                        hintText: "Search Ethosverse",
                                        hintStyle: TextStyle(
                                            color: AppColors.contentSecondary(
                                                context),
                                            fontSize: 16,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w400,
                                            height: 1.5),
                                        contentPadding:
                                            EdgeInsets.fromLTRB(8, 12, 16, 0),
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.only(left: 8),
                                          child: Icon(
                                            Icons.search,
                                            color: AppColors.contentTertiary(
                                                context),
                                          ),
                                        ),
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                      ),
                                    ),
                                    style: NeumorphicStyle(
                                      lightSource:
                                          NeumorphicTheme.isUsingDark(context)
                                              ? LightSource.bottomRight
                                              : LightSource.topLeft,
                                      shadowLightColor:
                                          NeumorphicTheme.isUsingDark(context)
                                              ? AppColors.gray600
                                              : AppColors.backgroundSecondary(
                                                  context),
                                      border: NeumorphicBorder(
                                        isEnabled: true,
                                        color: AppColors.backgroundSecondary(
                                            context),
                                        width: 2,
                                      ),
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(24)),
                                      color:
                                          AppColors.backgroundPrimary(context),
                                      shape: NeumorphicShape.flat,
                                      disableDepth: true,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : null,
                  ),
                  widget.isSearchVisible
                      ? SizedBox(height: 6)
                      : SizedBox.shrink(),
                  widget.isSearchVisible
                      ? FocusPaneTab(
                          focusPaneKey: widget.focusPaneKey,
                          focusPaneShift: widget.focusPaneShift)
                      : SizedBox.shrink(),
                ]),
              );
            },
          ),
          actions: [
            buildCommunityCardIconButton(),
          ],
          toolbarHeight: 82,
        ),
      ],
    );

    Widget cont = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CommunityLogo(),
        widget.isCommunityStackPagesVisible
            ? widget.openPagesTabs
            : SizedBox.shrink(),
        buildCommunityCardIconButton(),
      ],
    );

    return Container(
      child: Column(
        children: [
          Visibility(
            visible: LayoutBreakpoint().isNavigatingLeft(context)
                ? (isOneEappLoaded ? false : true)
                : true,
            child: Container(
                height: widget.isNavigatingLeft ? 120 : 48,
                child: customScrollView),
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
}

handleOpenTilePaneStateToggle(bool isOpenTilePaneVisible) {
  print("onclicked toggle");
  if (isOpenTilePaneVisible == true) {
    NotificationsBloc.instance.newNotification(
        LocalNotification("OpenTilesPane", {"isVisible": false}));
  } else {
    NotificationsBloc.instance.newNotification(
        LocalNotification("OpenTilesPane", {"isVisible": true}));
  }
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
