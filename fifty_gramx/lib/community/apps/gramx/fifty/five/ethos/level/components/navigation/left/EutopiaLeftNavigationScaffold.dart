import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/eait_1001.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/eait_1002.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/layout_breakpoint.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/open_tiles_pane.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/page_flow_builder.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/page_tab_pane.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/tab/LeftNavigationTab.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/window_pane.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// A scaffold that incorporates a BottomNavigationBar, separates navigators for each tab view,
/// and retains state across tab switches.
class EutopiaLeftNavigationScaffold extends StatefulWidget {
  /// A list of tabs to be displayed in the bottom navigation bar, each paired
  /// with its respective navigator's key.
  final List<LeftNavigationTab> navigationBarItems;

  /// A callback function that is invoked when a tab is selected. It receives the
  /// index of the selected tab as a parameter.
  final ValueChanged<int> onChildrenItemSelected;

  /// A callback function that is invoked when a tab is selected. It receives the
  /// index of the selected tab as a parameter.
  final ValueChanged<int> onParentItemSelected;

  /// The index of the currently selected tab.
  final int selectedParentIndex;
  final int selectedChildrenIndex;
  final List<String> parentStackAppNames;

  /// Creates a new instance of [EutopiaLeftNavigationScaffold].
  ///
  /// The [navigationBarItems] parameter specifies the list of tabs to be displayed
  /// along with their respective navigator's keys.
  ///
  /// The [onChildrenItemSelected] callback is invoked when a tab selection occurs.
  ///
  /// The [selectedIndex] parameter determines the initially selected tab index.
  const EutopiaLeftNavigationScaffold({
    required this.navigationBarItems,
    required this.onChildrenItemSelected,
    required this.onParentItemSelected,
    required this.selectedChildrenIndex,
    required this.selectedParentIndex,
    required this.parentStackAppNames,
    Key? key,
  });

  @override
  _EutopiaLeftNavigationScaffoldState createState() =>
      _EutopiaLeftNavigationScaffoldState();
}

/// The state object for the [EutopiaLeftNavigationScaffold].
///
/// This class manages the internal state of the [EutopiaLeftNavigationScaffold].
/// It handles animations, tab switching, and other UI interactions.
///
/// Typically, you don't need to interact with this class directly, as the
/// [EutopiaLeftNavigationScaffold] widget provides a high-level interface for
/// creating left navigation layouts with tabbed content.
///
/// To use [EutopiaLeftNavigationScaffold], create an instance of the
/// [EutopiaLeftNavigationScaffold] widget and configure it with the desired tabs
/// and content. The scaffold state will handle the rendering and switching of tabs.
class _EutopiaLeftNavigationScaffoldState
    extends State<EutopiaLeftNavigationScaffold>
    with TickerProviderStateMixin<EutopiaLeftNavigationScaffold> {
  /// A key for accessing the scaffold state.
  final GlobalKey<ScaffoldState> _screenKey = GlobalKey<ScaffoldState>();

  /// An internal instance of LocalNotifications.
  static Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  /// List of animation controllers for managing tab animations.
  final List<AnimationController> _animationControllers = [];

  /// Keeps track of whether each tab's content should be built.
  final List<bool> _shouldBuildChildrensTab = <bool>[];

  /// Keeps track of whether each tab's content should be built.
  final List<bool> _shouldBuildParentsTab = <bool>[];

  /// Indicates whether the app is in focus mode.
  String focusPaneKey = "Top Picks";
  bool _isEthosStackPagesVisible = false;
  bool isAnyChildAppLoaded = false;
  bool isSearchVisible = true;
  bool isOpenTilePaneVisible = false;

  /// Controller for the text field used for searching.
  TextEditingController nameTextFieldController = TextEditingController();

  @override
  void initState() {
    // Initialize animation controllers for tab transitions.
    _initAnimationControllers();

    // Listen to notifications and handle them.
    _notificationsStream.listen(_handleListeningMessages);

    super.initState();
  }

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
  _handleListeningMessages(LocalNotification message) async {
    if (message.type == "EthosAppFlowBob") {
      if (message.data["subType"] == "Loaded eApp") {
        handleLoadedApp();
      } else if (message.data["subType"] == "Open Community Tiles") {
      } else if (message.data["subType"] == "Open eApp") {
        print(
            "openApp, _handleListeningMessages, ${message.data["appSectionIndex"]}");
        selectChildrenItem(message.data["appSectionIndex"]);
      }
    } else if (message.type == "OpenTilesPane") {
      if (message.data.containsKey("isVisible")) {
        _handleOpenTilesPaneState(message);
      }
    }
  }

  handleLoadedApp() {
    _shouldBuildChildrensTab.clear();
    _shouldBuildParentsTab.clear();
    // Initialize a list to track whether each tab's content should be built.
    _shouldBuildChildrensTab.addAll(List<bool>.filled(
      AppFlowManager.instance.getNavigationBarItems()!.length >=
              widget.parentStackAppNames.length
          ? AppFlowManager.instance.getNavigationBarItems()!.length -
              widget.parentStackAppNames.length
          : AppFlowManager.instance.getNavigationBarItems()!.length,
      false,
    ));
    _shouldBuildParentsTab.addAll(List<bool>.filled(
      widget.parentStackAppNames.length,
      false,
    ));

    _initAnimationControllers();
  }

  /// Initializes animation controllers for tab transitions.
  void _initAnimationControllers() {
    _animationControllers.clear();
    _animationControllers.addAll(
      AppFlowManager.instance.getNavigationBarItems()!.map<AnimationController>(
            (destination) => AnimationController(
              vsync: this,
              duration: const Duration(milliseconds: 200),
            ),
          ),
    );

    if (_animationControllers.isNotEmpty) {
      _animationControllers[0].value = 1.0;
    }
  }

  selectChildrenItem(sectionIndex) {
    print("openApp, selectChildrenItem, ${sectionIndex}");
    String indexAppName = AppFlowManager.instance
        .getNavigationBarItems()![sectionIndex]
        .leftNavigationBarSectionalItem
        .appName;
    bool isParentApp = false;
    if (sectionIndex < 500000000) {
      isParentApp = widget.parentStackAppNames.contains(indexAppName);
    }

    print("openApp, isParentApp, ${isParentApp}");

    if (isParentApp) {
      showEthosStackPages();
      widget.onParentItemSelected(sectionIndex);
    } else {
      widget.onChildrenItemSelected(sectionIndex);
    }

    // Somewhere in your widgets...
    FirebaseAnalytics.instance.logScreenView(screenName: "Page #$sectionIndex");
  }

  void hideEthosStackPages() {
    if (_isEthosStackPagesVisible) {
      setState(() {
        _isEthosStackPagesVisible = false;
      });
    }
  }

  void showEthosStackPages() {
    if (!_isEthosStackPagesVisible) {
      setState(() {
        _isEthosStackPagesVisible = true;
      });
    }
  }

  @override
  void dispose() {
    _animationControllers.forEach(
      (controller) => controller.dispose(),
    );
    super.dispose();
  }

  toggleSearchOnTop() {
    if (isSearchVisible) {
      setState(() {
        isSearchVisible = false;
      });
    } else {
      setState(() {
        isSearchVisible = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int viewPort = LayoutBreakpoint().getBreakpoint(context);

    bool isNavigatingLeft = LayoutBreakpoint().isNavigatingLeft(context);

    List<Widget> _buildStackChildrens = [];
    List<Widget> _buildStackParents = [];

    isAnyChildAppLoaded = AppFlowManager.instance
            .getNavigationBarItems()!
            .where((item) => !widget.parentStackAppNames
                .contains(item.leftNavigationBarSectionalItem.appName))
            .toList()
            .length >
        0;

    AppFlowManager.instance
        .getEutopiaNavigationBarSectionalItems()!
        .forEach((barItem) {
      bool isBuildingParentsPage = widget.parentStackAppNames
          .contains(barItem.leftNavigationBarSectionalItem.appName);

      Widget built_page_flow = SizedBox();
      int tabIndex = AppFlowManager.instance
          .getEutopiaNavigationBarSectionalItems()!
          .indexOf(barItem);

      try {
        built_page_flow = PageFlowBuilder.buildPageFlow(
            context,
            tabIndex,
            barItem,
            _animationControllers,
            isBuildingParentsPage
                ? _shouldBuildParentsTab
                : _shouldBuildChildrensTab,
            widget,
            isBuildingParentsPage);
      } on Exception catch (exception) {
        bool platformNotSupported =
            kIsWeb || Platform.isWindows || Platform.isLinux;
        if (!platformNotSupported) {
          FirebaseCrashlytics.instance.log(
              "PageFlowBuilder.buildPageFlow() Exception at "
              "${barItem} w/ ${exception} w/ "
              "${AppFlowManager.instance.getEutopiaNavigationBarSectionalItems()!.length}");
        } else {
          print("PageFlowBuilder.buildPageFlow() Exception at "
              "${barItem} w/ ${exception} w/ "
              "${AppFlowManager.instance.getEutopiaNavigationBarSectionalItems()!.length}");
        }
      } catch (error) {
        bool platformNotSupported =
            kIsWeb || Platform.isWindows || Platform.isLinux;
        if (!platformNotSupported) {
          FirebaseCrashlytics.instance.log(
              "PageFlowBuilder.buildPageFlow() Error at "
              "${barItem} w/ ${error} w/ "
              "${AppFlowManager.instance.getEutopiaNavigationBarSectionalItems()!.length}");
        } else {
          print("PageFlowBuilder.buildPageFlow() Error at "
              "${barItem} w/ ${error} w/ "
              "${AppFlowManager.instance.getEutopiaNavigationBarSectionalItems()!.length}");
        }
      }

      if (isBuildingParentsPage) {
        _buildStackParents.add(built_page_flow);
      } else {
        _buildStackChildrens.add(built_page_flow);
      }
    });

    setFutureStatusBarTheme() {
      Future.delayed(Duration(milliseconds: 1)).then(
          (value) => SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
                systemNavigationBarColor:
                    AppColors.backgroundInverseTertiary(context),
                systemNavigationBarDividerColor:
                    AppColors.backgroundInverseTertiary(context),
                systemNavigationBarIconBrightness:
                    NeumorphicTheme.isUsingDark(context)
                        ? Brightness.dark
                        : Brightness.light,
                statusBarColor: AppColors.backgroundInverseTertiary(context),
                statusBarBrightness: NeumorphicTheme.isUsingDark(context)
                    ? Brightness.light
                    : Brightness.dark,
                statusBarIconBrightness: NeumorphicTheme.isUsingDark(context)
                    ? Brightness.dark
                    : Brightness.light,
              )));
    }

    setStatusBarTheme() {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: AppColors.backgroundInverseTertiary(context),
        statusBarBrightness: NeumorphicTheme.isUsingDark(context)
            ? Brightness.light
            : Brightness.dark,
        statusBarIconBrightness: NeumorphicTheme.isUsingDark(context)
            ? Brightness.dark
            : Brightness.light,
        systemNavigationBarColor: AppColors.backgroundInverseTertiary(context),
        systemNavigationBarIconBrightness: NeumorphicTheme.isUsingDark(context)
            ? Brightness.dark
            : Brightness.light,
        systemNavigationBarDividerColor:
            AppColors.backgroundInverseTertiary(context),
      ));
    }

    Widget buildOpenPagesTab() {
      return Row(
        children: [
          Visibility(
            visible: isNavigatingLeft,
            child: Expanded(
              child: PageTabPane(
                selectPressedSectionItem: selectChildrenItem,
                parentWidget: widget,
              ),
            ),
          )
        ],
      );
    }

    focusPaneShift(String shiftedFocus) {
      setState(() {
        focusPaneKey = shiftedFocus;
      });
      if (shiftedFocus != "Top Picks") {
        setState(() {
          isSearchVisible = true;
        });
      }
    }

    /// Builds the main content scaffold for the EutopiaLeftNavigationScaffold widget.
    ///
    /// This scaffold includes a background color, a key for state management,
    /// and a row with various child widgets.
    Widget buildMainContentScaffold() {
      setFutureStatusBarTheme();
      bool isOneEappLoaded = AppFlowManager.instance
              .getEutopiaNavigationBarSectionalItems()!
              .length ==
          1;
      isAnyChildAppLoaded = AppFlowManager.instance
              .getNavigationBarItems()!
              .where((item) => !widget.parentStackAppNames
                  .contains(item.leftNavigationBarSectionalItem.appName))
              .toList()
              .length >
          0;
      return Scaffold(
          backgroundColor: AppColors.backgroundPrimary(context),
          key: _screenKey,
          body: SafeArea(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Left Navigation (EAIT1001)
                  Visibility(
                    visible: isNavigatingLeft
                        ? (isOneEappLoaded
                            ? false
                            : isAnyChildAppLoaded
                                ? false
                                : false)
                        : false,
                    child: Container(
                      width: 102,
                      child: EAIT1001(
                        navigationViewPort: viewPort,
                        isNavigatingLeft: isNavigatingLeft,
                        selectPressedSectionItem: selectChildrenItem,
                        navigationWidget: widget,
                      ),
                    ),
                  ),

                  // Main Content (EAIT1002)
                  Visibility(
                    visible: true,
                    child: Expanded(
                      flex: (LayoutBreakpoint().isNavigatingLeft(context)
                          ? 11
                          : 7),
                      child: EAIT1002(
                        isNavigatingLeft: isNavigatingLeft,
                        selectPressedSectionItem: selectChildrenItem,
                        isCommunityStackPagesVisible: isAnyChildAppLoaded,
                        navigationWidget: widget,
                        navigationViewPort: viewPort,
                        focusPaneKey: focusPaneKey,
                        isSearchVisible: isSearchVisible,
                        toggleSearchOnTop: toggleSearchOnTop,
                        windowPane: WindowPane(
                          focusPaneKey: focusPaneKey,
                          pagesStack: _buildStackChildrens,
                          ethosStack: _buildStackParents,
                          isEthosStackPagesVisible: _isEthosStackPagesVisible,
                          isCommunityStackPagesVisible: isAnyChildAppLoaded,
                          tilesPane: Visibility(
                            child: OpenTilesPane(
                              selectPressedSectionItem: selectChildrenItem,
                              isNavigatingLeft: isNavigatingLeft,
                              isVisible: isOpenTilePaneVisible,
                            ),
                            visible: isNavigatingLeft
                                ? isOneEappLoaded
                                    ? false
                                    : true
                                : false,
                          ),
                          hideEthosStackPages: hideEthosStackPages,
                          toggleSearchOnTop: toggleSearchOnTop,
                          openPagesTabs: buildOpenPagesTab(),
                          focusPaneShift: (shiftedFocus) {
                            focusPaneShift(shiftedFocus);
                          },
                        ),
                        isOpenTilePaneVisible: isOpenTilePaneVisible,
                        openPagesTabs: buildOpenPagesTab(),
                        focusPaneShift: (shiftedFocus) {
                          focusPaneShift(shiftedFocus);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ));
    }

    return buildMainContentScaffold();
  }
}
