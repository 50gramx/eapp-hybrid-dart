import 'package:fifty_gramx/widgets/components/NeuButton/actionNeuButton.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/custom/LeftNavigationBarSectionalItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/custom/LeftNavigationTab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// A Scaffold with a configured BottomNavigationBar, separate
/// Navigators for each tab view and state retaining across tab switches.
class EutopiaLeftNavigationScaffold extends StatefulWidget {
  const EutopiaLeftNavigationScaffold({
    required this.navigationBarItems,
    required this.onItemSelected,
    required this.selectedIndex,
    Key? key,
  });

  /// List of the tabs to be displayed with their respective navigator's keys.
  final List<LeftNavigationTab> navigationBarItems;

  /// Called when a tab selection occurs.
  final ValueChanged<int> onItemSelected;

  final int selectedIndex;

  @override
  _EutopiaLeftNavigationScaffoldState createState() =>
      _EutopiaLeftNavigationScaffoldState();
}

class _EutopiaLeftNavigationScaffoldState
    extends State<EutopiaLeftNavigationScaffold>
    with TickerProviderStateMixin<EutopiaLeftNavigationScaffold> {
  final List<_EutopiaLeftNavigationSectionalTab>
      eutopiaNavigationBarSectionalItems = [];
  final List<AnimationController> _animationControllers = [];

  /// Controls which tabs should have its content built. This enables us to
  /// lazy instantiate it.
  final List<bool> _shouldBuildTab = <bool>[];

  @override
  void initState() {
    _initAnimationControllers();
    _initEutopiaNavigationBarSectionalItems();

    _shouldBuildTab.addAll(List<bool>.filled(
      widget.navigationBarItems.length,
      false,
    ));

    super.initState();
  }

  void _initEutopiaNavigationBarSectionalItems() {
    eutopiaNavigationBarSectionalItems.addAll(
      widget.navigationBarItems
          .map(
            (barItem) => _EutopiaLeftNavigationSectionalTab(
              leftNavigationBarSectionalItem:
                  barItem.leftNavigationBarSectionalItem,
              navigatorKey: barItem.navigatorKey,
              subtreeKey: GlobalKey(),
              initialPageBuilder: barItem.initialPageBuilder,
            ),
          )
          .toList(),
    );
  }

  void _initAnimationControllers() {
    _animationControllers.addAll(
      widget.navigationBarItems.map<AnimationController>(
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
  Widget build(BuildContext context) => Scaffold(
          // The Stack is what allows us to retain state across tab
          // switches by keeping all of our views in the widget tree.
          body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: eutopiaNavigationBarSectionalItems.length,
                    itemBuilder: (BuildContext context, int subIndex) {
                      return ActionNeuButton(
                        buttonTitle:
                            eutopiaNavigationBarSectionalItems[subIndex]
                                .leftNavigationBarSectionalItem
                                .label!,
                        buttonActionOnPressed: () {
                          selectPressedSectionItem(subIndex);
                        },
                      );
                    }),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Stack(
              fit: StackFit.expand,
              children: eutopiaNavigationBarSectionalItems
                  .map(
                    (barItem) => _buildPageFlow(
                      context,
                      eutopiaNavigationBarSectionalItems.indexOf(barItem),
                      barItem,
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ));

  // The best practice here would be to extract this to another Widget,
  // however, moving it to a separate class would only harm the
  // readability of our guide.
  Widget _buildPageFlow(
    BuildContext context,
    int tabIndex,
    _EutopiaLeftNavigationSectionalTab item,
  ) {
    print("widget.selectedIndex: ${widget.selectedIndex}");
    final isCurrentlySelected = tabIndex == widget.selectedIndex;

    // We should build the tab content only if it was already built or
    // if it is currently selected.
    _shouldBuildTab[tabIndex] =
        isCurrentlySelected || _shouldBuildTab[tabIndex];

    final Widget view = FadeTransition(
      opacity: _animationControllers[tabIndex].drive(
        CurveTween(curve: Curves.fastOutSlowIn),
      ),
      child: KeyedSubtree(
        key: item.subtreeKey,
        child: _shouldBuildTab[tabIndex]
            ? Navigator(
                // The key enables us to access the Navigator's state inside the
                // onWillPop callback and for emptying its stack when a tab is
                // re-selected. That is why a GlobalKey is needed instead of
                // a simpler ValueKey.
                key: item.navigatorKey,
                // Since this isn't the purpose of this sample, we're not using
                // named routes. Because of that, the onGenerateRoute callback
                // will be called only for the initial route.
                onGenerateRoute: (settings) {
                  return MaterialPageRoute(
                    settings: settings,
                    builder: item.initialPageBuilder,
                  );
                })
            : Container(),
      ),
    );

    if (tabIndex == widget.selectedIndex) {
      _animationControllers[tabIndex].forward();
      return view;
    } else {
      _animationControllers[tabIndex].reverse();
      if (_animationControllers[tabIndex].isAnimating) {
        return IgnorePointer(child: view);
      }
      return Offstage(child: view);
    }
  }
}

/// Extension class of BottomNavigationTab that adds another GlobalKey to it
/// in order to use it within the KeyedSubtree widget.
class _EutopiaLeftNavigationSectionalTab extends LeftNavigationTab {
  const _EutopiaLeftNavigationSectionalTab({
    required LeftNavigationBarSectionalItem leftNavigationBarSectionalItem,
    required GlobalKey<NavigatorState> navigatorKey,
    required WidgetBuilder initialPageBuilder,
    required this.subtreeKey,
  }) : super(
          leftNavigationBarSectionalItem: leftNavigationBarSectionalItem,
          navigatorKey: navigatorKey,
          initialPageBuilder: initialPageBuilder,
        );

  final GlobalKey subtreeKey;
}
