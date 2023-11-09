import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/eait_1001.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/eait_1002.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/layout_breakpoint.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/open_tiles_pane.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/page_flow_builder.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/tab/LeftNavigationTab.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/window_pane.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// A scaffold that incorporates a BottomNavigationBar, separates navigators for each tab view,
/// and retains state across tab switches.
class EutopiaLeftNavigationScaffold extends StatefulWidget {
  /// A list of tabs to be displayed in the bottom navigation bar, each paired
  /// with its respective navigator's key.
  final List<LeftNavigationTab> navigationBarItems;

  /// A callback function that is invoked when a tab is selected. It receives the
  /// index of the selected tab as a parameter.
  final ValueChanged<int> onItemSelected;

  /// The index of the currently selected tab.
  final int selectedIndex;

  /// Creates a new instance of [EutopiaLeftNavigationScaffold].
  ///
  /// The [navigationBarItems] parameter specifies the list of tabs to be displayed
  /// along with their respective navigator's keys.
  ///
  /// The [onItemSelected] callback is invoked when a tab selection occurs.
  ///
  /// The [selectedIndex] parameter determines the initially selected tab index.
  const EutopiaLeftNavigationScaffold({
    required this.navigationBarItems,
    required this.onItemSelected,
    required this.selectedIndex,
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
  final List<bool> _shouldBuildTab = <bool>[];

  /// Indicates whether the app is in focus mode.
  bool focusMode = true;

  /// Controller for the text field used for searching.
  TextEditingController nameTextFieldController = TextEditingController();

  @override
  void initState() {
    print("EutopiaLeftNavigationScaffoldState: initState called");
    // Initialize animation controllers for tab transitions.
    _initAnimationControllers();

    // Listen to notifications and handle them.
    _notificationsStream.listen(_handleListeningMessages);

    super.initState();
  }

  /// handler invoked inside localNotifications, which listens to new messages
  /// when the device receives a push notification based on metadata
  _handleListeningMessages(LocalNotification message) async {
    print(
        "EutopiaLeftNavigationScaffoldState: Received notification: $message");
    if (message.type == "EthosAppFlowBob") {
      if (message.data["subType"] == "Loaded eApp") {
        print("Handling Loaded eApp");
        handleLoadedApp();
      }
    }
  }

  handleLoadedApp() {
    print("EutopiaLeftNavigationScaffoldState: Handling Loaded App");

    _shouldBuildTab.clear();
    // Initialize a list to track whether each tab's content should be built.
    _shouldBuildTab.addAll(List<bool>.filled(
      EthosAppFlowBob.navigationBarItems.length,
      false,
    ));
    _initAnimationControllers();
  }

  /// Initializes animation controllers for tab transitions.
  void _initAnimationControllers() {
    print(
        "EutopiaLeftNavigationScaffoldState: Initializing animation controllers");
    _animationControllers.clear();
    _animationControllers.addAll(
      EthosAppFlowBob.navigationBarItems.map<AnimationController>(
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

  selectPressedSectionItem(sectionIndex) {
    widget.onItemSelected(sectionIndex);
  }

  @override
  void dispose() {
    _animationControllers.forEach(
      (controller) => controller.dispose(),
    );

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("Building EutopiaLeftNavigationScaffold");

    int viewPort = LayoutBreakpoint().getBreakpoint(context);
    bool isNavigatingLeft = LayoutBreakpoint().isNavigatingLeft(context);

    List<Widget> _buildStackChildrens = [];

    EthosAppFlowBob.eutopiaNavigationBarSectionalItems.forEach((barItem) {
      print(
          "Building page flow for ${barItem.leftNavigationBarSectionalItem.label}");
      print("_animationControllers: ${_animationControllers}");

      Widget built_page_flow = PageFlowBuilder.buildPageFlow(
          context,
          EthosAppFlowBob.eutopiaNavigationBarSectionalItems.indexOf(barItem),
          barItem,
          _animationControllers,
          _shouldBuildTab,
          widget);

      _buildStackChildrens.add(built_page_flow);
    });

    /// Builds the main content scaffold for the EutopiaLeftNavigationScaffold widget.
    ///
    /// This scaffold includes a background color, a key for state management,
    /// and a row with various child widgets.
    Widget buildMainContentScaffold() {
      return Scaffold(
          backgroundColor: AppColors.backgroundInverseTertiary(context),
          key: _screenKey,
          // The Stack is what allows us to retain state across tab
          // switches by keeping all of our views in the widget tree.
          body: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Left Navigation (EAIT1001)
                Visibility(
                    visible: false, // isNavigatingLeft,
                    child: Expanded(
                        flex: 1,
                        child: EAIT1001(
                          navigationViewPort: viewPort,
                          isNavigatingLeft: isNavigatingLeft,
                          selectPressedSectionItem: selectPressedSectionItem,
                          navigationWidget: widget,
                        ))),

                // Main Content (EAIT1002)
                Expanded(
                    flex: 11,
                    child: EAIT1002(
                      isNavigatingLeft: isNavigatingLeft,
                      selectPressedSectionItem: selectPressedSectionItem,
                      navigationWidget: widget,
                      navigationViewPort: viewPort,
                      focusMode: focusMode,
                      windowPane: WindowPane(
                          focusMode: focusMode,
                          pagesStack: _buildStackChildrens),
                    )),

                // Additional Content (OpenTilesPane)
                Visibility(
                  child: Expanded(
                    child: OpenTilesPane(),
                  ),
                  visible: false,
                ),
              ],
            ),
          ));
    }

    return buildMainContentScaffold();
  }
}
