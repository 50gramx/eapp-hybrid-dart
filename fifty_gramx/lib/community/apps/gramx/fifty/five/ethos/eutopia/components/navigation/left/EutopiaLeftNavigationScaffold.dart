import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/NeuButton/AdaptiveIconButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/NeuButton/actionNeuChip.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/navigation/left/LeftNavigationBarSectionalItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/components/navigation/left/tab/LeftNavigationTab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
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

  final GlobalKey<ScaffoldState> _screenKey = new GlobalKey<ScaffoldState>();

  bool isPanningModeOn = false;
  int firstColumnFlex = 1;
  int secondColumnFlex = 3;

  @override
  void initState() {
    _initAnimationControllers();
    _initEutopiaNavigationBarSectionalItems();

    _shouldBuildTab.addAll(List<bool>.filled(
      widget.navigationBarItems.length,
      false,
    ));

    firstColumnFlex = 3;
    secondColumnFlex = 22;

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

  /*
  * We need to hack the below widget, which shows two columns
  * in a way, where we three columns in max
  * first column, covering not more than 10% of the screen if default mode
  * first column, covering not more than 18% of the screen in panning mode
  * first column, sticks to the left end of the screen
  * first column, we can call it ***app bar***
  * first column, this app bar divides itself in vertical stack of two columns
  * first column, the first of these two columns should show three
  * first column, platform apps/50gramx "community enabler"
  * first column, we can call this CORE PANE
  * first column, the second of these two columns should show 50 different communities
  * first column, we can call these COMMUNITY PANE
  * second column, covering rest of the screen
  * second column, we can call it **app view base**
  * second column, this app view base divides itself in vertical stack of two columns
  * second column, first row, cover the 30% of the column in relax mode
  * second column, first row, covers the 10% of the column in focus mode
  * second column, second row, covers the rest of the screen in both the modes
  * second column, second row, divides itself into stack of two horizontal columns
  * second column, second row, first column, covers the whole row in single page mode
  * second column, second row, first column, covers the 50% of the row in double page mode
  * second column, second row, first column, covers the 70% of the row in pinned page mode
  * second column, second row, second column, covers the 50% of the row in double page mode
  * second column, second row, second column, covers the 30% of the row in side page mode
  *
  *
  * idea wise, both type of pane should be built with a container
  * pane container should be concave on screen layer
  * inside pane container, top-left area should be given to community number in default mode
  * inside pane container, full top area should be given to community number and name in panning mode
  * let's call it community canopy area to this top area built with convex text inside box with radius
  * we can use community canopy to show notifications later
  * inside pane container, corresponding bottom area should be given to community apps logo and their name in a vertical stack same with convex
  *
  * idea wise, in single page mode, second column, second row, first column should
  * have its bounding box as convex on screen layer
  * in double page mode, second column, second row, first column should have its
  * bounding box as
  * */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundInverseTertiary(context),
        key: _screenKey,
        // The Stack is what allows us to retain state across tab
        // switches by keeping all of our views in the widget tree.
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Neumorphic(
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(
                        topRight: Radius.circular(24),
                        bottomRight: Radius.circular(24))),
                    color: AppColors.backgroundSecondary(context),
                    border: NeumorphicBorder(
                      isEnabled: true,
                      color: AppColors.backgroundPrimary(context),
                      width: 2,
                    ),
                  ),
                  margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Container(
                    width: 64 + 12,
                    height: 44 * 3 + 28 + 32,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount:
                        eutopiaNavigationBarSectionalItems.length + 1,
                        itemBuilder: (BuildContext context, int subIndex) {
                          if (subIndex == 0) {
                            return Text(
                              "50GMx",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColors.contentPrimary(context),
                                  fontSize: 18,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700),
                            );
                          } else {
                            subIndex = subIndex - 1;
                            return AdaptiveNeuButton(
                              buttonTitle:
                              eutopiaNavigationBarSectionalItems[subIndex]
                                  .leftNavigationBarSectionalItem
                                  .label!,
                              buttonActionOnPressed: () {
                                selectPressedSectionItem(subIndex);
                              },
                              icon:
                              eutopiaNavigationBarSectionalItems[subIndex]
                                  .leftNavigationBarSectionalItem
                                  .icon!,
                              isCollapsed: !isPanningModeOn,
                            );
                          }
                        }),
                  ),
                ),
                Neumorphic(
                  style: NeumorphicStyle(
                    lightSource: NeumorphicTheme.isUsingDark(context)
                        ? LightSource.bottomRight
                        : LightSource.topLeft,
                    shadowLightColor: NeumorphicTheme.isUsingDark(context)
                        ? AppColors.gray600
                        : AppColors.backgroundSecondary(context),
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(
                        topRight: Radius.circular(24),
                        bottomRight: Radius.circular(24))),
                    color: AppColors.backgroundPrimary(context),
                    border: NeumorphicBorder(
                      isEnabled: true,
                      color: AppColors.backgroundPrimary(context),
                      width: 2,
                    ),
                  ),
                  margin: EdgeInsets.only(top: 8, bottom: 8, right: 16),
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Container(
                    width: 64 + 12,
                    height: MediaQuery.of(context).size.height -
                        (44 * 3 + 28 + 32 + 64),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int subIndex) {
                          if (subIndex == 0) {
                            return AdaptiveNeuButton(
                              buttonTitle: "Ethos Pods",
                              buttonActionOnPressed: () {
                                selectPressedSectionItem(subIndex);
                              },
                              icon: Icon(FeatherIcons.anchor,
                                  color: AppColors.contentInversePrimary(
                                      context)),
                              isCollapsed: !isPanningModeOn,
                            );
                          } else if (subIndex == 1) {
                            return AdaptiveNeuButton(
                              buttonTitle: "Ethos Pay",
                              buttonActionOnPressed: () {
                                selectPressedSectionItem(subIndex);
                              },
                              icon: Icon(FeatherIcons.creditCard,
                                  color: AppColors.contentInversePrimary(
                                      context)),
                              isCollapsed: !isPanningModeOn,
                            );
                          } else if (subIndex == 2) {
                            return AdaptiveNeuButton(
                              buttonTitle: "Ethosai",
                              buttonActionOnPressed: () {
                                selectPressedSectionItem(subIndex);
                              },
                              icon: Icon(FeatherIcons.crosshair,
                                  color: AppColors.contentInversePrimary(
                                      context)),
                              isCollapsed: !isPanningModeOn,
                            );
                          } else {
                            return SizedBox();
                          }
                        }),
                  ),
                ),
              ],
            ),
            Expanded(
                flex: secondColumnFlex,
                child: Column(
                  children: [
                    Expanded(
                      child: Neumorphic(
                        style: NeumorphicStyle(
                          lightSource: NeumorphicTheme.isUsingDark(context)
                              ? LightSource.bottomRight
                              : LightSource.topLeft,
                          shadowLightColor: NeumorphicTheme.isUsingDark(context)
                              ? AppColors.gray600
                              : AppColors.backgroundSecondary(context),
                          shape: NeumorphicShape.flat,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.only(
                                  bottomLeft: Radius.circular(24),
                                  bottomRight: Radius.circular(24))),
                          color: AppColors.backgroundPrimary(context),
                          border: NeumorphicBorder(
                            isEnabled: true,
                            color: AppColors.backgroundPrimary(context),
                            width: 2,
                          ),
                        ),
                        margin: EdgeInsets.only(bottom: 8, right: 16, left: 8),
                        child: Container(
                          color: AppColors.backgroundTertiary(context),
                          // height: 100,
                        ),
                      ),
                    ),
                    Neumorphic(
                      style: NeumorphicStyle(
                        lightSource: NeumorphicTheme.isUsingDark(context)
                            ? LightSource.bottomRight
                            : LightSource.topLeft,
                        shadowLightColor: NeumorphicTheme.isUsingDark(context)
                            ? AppColors.gray600
                            : AppColors.backgroundSecondary(context),
                        shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.all(Radius.circular(24))),
                        color: AppColors.backgroundPrimary(context),
                        border: NeumorphicBorder(
                          isEnabled: true,
                          color: AppColors.backgroundPrimary(context),
                          width: 2,
                        ),
                      ),
                      margin: EdgeInsets.only(
                          top: 8, bottom: 8, right: 16, left: 8),
                      child: Container(
                        height: MediaQuery.of(context).size.height -
                            (44 * 1 + 28 + 32),
                        child: Stack(
                          children: eutopiaNavigationBarSectionalItems
                              .map(
                                (barItem) => _buildPageFlow(
                                  context,
                                  eutopiaNavigationBarSectionalItems
                                      .indexOf(barItem),
                                  barItem,
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ));
  }

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
