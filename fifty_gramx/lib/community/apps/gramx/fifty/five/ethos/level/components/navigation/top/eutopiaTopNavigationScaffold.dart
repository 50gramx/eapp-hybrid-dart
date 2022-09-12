import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/AdaptiveIconButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/top/tab/TopNavigationBarSectionalItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/top/tab/topNavigationTab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// A Scaffold with a configured BottomNavigationBar, separate
/// Navigators for each tab view and state retaining across tab switches.
class EutopiaTopNavigationScaffold extends StatefulWidget {
  const EutopiaTopNavigationScaffold({
    required this.navigationBarItems,
    required this.onItemSelected,
    required this.selectedIndex,
    Key? key,
  });

  /// List of the tabs to be displayed with their respective navigator's keys.
  final List<TopNavigationTab> navigationBarItems;

  /// Called when a tab selection occurs.
  final ValueChanged<int> onItemSelected;

  final int selectedIndex;

  @override
  _EutopiaTopNavigationScaffoldState createState() =>
      _EutopiaTopNavigationScaffoldState();
}

class _EutopiaTopNavigationScaffoldState
    extends State<EutopiaTopNavigationScaffold>
    with TickerProviderStateMixin<EutopiaTopNavigationScaffold> {
  final List<_EutopiaTopNavigationSectionalTab>
      eutopiaNavigationBarSectionalItems = [];
  final List<AnimationController> _animationControllers = [];

  /// Controls which tabs should have its content built. This enables us to
  /// lazy instantiate it.
  final List<bool> _shouldBuildTab = <bool>[];

  final GlobalKey<ScaffoldState> _screenKey = new GlobalKey<ScaffoldState>();


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
            (barItem) => _EutopiaTopNavigationSectionalTab(
              topNavigationBarSectionalItem:
                  barItem.topNavigationBarSectionalItem,
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
  Widget build(BuildContext context) {
    Widget appLogo = Container(
      child: NeumorphicText(
        "50GRAMx",
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(
              topRight: Radius.circular(24), bottomRight: Radius.circular(24))),
          color: AppColors.backgroundPrimary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundInverseTertiary(context),
            width: 1,
          ),
        ),
        textAlign: TextAlign.center,
        textStyle: NeumorphicTextStyle(
            fontSize: 22,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700),
      ),
    );

    List<Widget> appButtonsList = [];
    for (int subIndex = 0; subIndex < eutopiaNavigationBarSectionalItems.length; subIndex++) {
      if (subIndex != widget.selectedIndex) {
        appButtonsList.add(Flexible(child: NeumorphicButton(
            provideHapticFeedback: true,
            onPressed: () {
              selectPressedSectionItem(subIndex);
            },
            style: NeumorphicStyle(
              lightSource: NeumorphicTheme.isUsingDark(context)
                  ? LightSource.bottomRight
                  : LightSource.topLeft,
              shadowLightColor: NeumorphicTheme.isUsingDark(context)
                  ? AppColors.gray600
                  : AppColors.backgroundSecondary(context),
              shape: NeumorphicShape.convex,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
              color: AppColors.contentSecondary(context),
              border: NeumorphicBorder(
                isEnabled: true,
                color: AppColors.contentSecondary(context),
                width:  2,
              ),
            ),
            margin: const EdgeInsets.fromLTRB(6, 6, 6, 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 24,
                  width: 24,
                  child: eutopiaNavigationBarSectionalItems[subIndex]
                      .topNavigationBarSectionalItem
                      .icon,
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                ),
                Flexible(child: Container(
                  child: Text(
                    eutopiaNavigationBarSectionalItems[subIndex]
                        .topNavigationBarSectionalItem
                        .label!,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: AppColors.contentInversePrimary(context),
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500),
                  ),
                )),
              ],
            ))));
      }
    }

    Widget ethosAppCardPane = Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.concave,
        depth: 0,
        boxShape:
        NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(24))),
        color: AppColors.contentInverseTertiary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.contentInverseTertiary(context),
          width: 2,
        ),
      ),
      child: Container(
          margin: EdgeInsets.only(bottom: 4, top: 4),
          padding: EdgeInsets.only(left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,children: appButtonsList,)
      ),
    );

    Widget pageTilePane = Neumorphic(
      margin: EdgeInsets.only(top: 16),
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape:
            NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(24))),
        color: AppColors.backgroundPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
          width: 2,
        ),
      ),
      child: Container(
        child: Stack(
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
    );

    return Scaffold(
        backgroundColor: AppColors.backgroundInverseTertiary(context),
        key: _screenKey,
        // The Stack is what allows us to retain state across tab
        // switches by keeping all of our views in the widget tree.
        body: Center(
          child: Container(
            alignment: Alignment.center,
            width: 400,
            height: 700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(flex: 3, child: ethosAppCardPane),
                Expanded(flex: 33, child: pageTilePane),
              ],
            ),
          ),
        ));
  }

  // The best practice here would be to extract this to another Widget,
  // however, moving it to a separate class would only harm the
  // readability of our guide.
  Widget _buildPageFlow(
    BuildContext context,
    int tabIndex,
    _EutopiaTopNavigationSectionalTab item,
  ) {
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
class _EutopiaTopNavigationSectionalTab extends TopNavigationTab {
  const _EutopiaTopNavigationSectionalTab({
    required TopNavigationBarSectionalItem topNavigationBarSectionalItem,
    required GlobalKey<NavigatorState> navigatorKey,
    required WidgetBuilder initialPageBuilder,
    required this.subtreeKey,
  }) : super(
          topNavigationBarSectionalItem: topNavigationBarSectionalItem,
          navigatorKey: navigatorKey,
          initialPageBuilder: initialPageBuilder,
        );

  final GlobalKey subtreeKey;
}
