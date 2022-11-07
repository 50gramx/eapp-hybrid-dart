import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/AdaptiveIconButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuChip.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/TextField/NameTextField.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/LeftNavigationBarSectionalItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/tab/LeftNavigationTab.dart';
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

  final GlobalKey<ScaffoldState> _screenKey = new GlobalKey<ScaffoldState>();

  bool focusMode = true;

  // todo: gayab mode
  TextEditingController nameTextFieldController = TextEditingController();

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
    _buildAppButton(context, subIndex) {
      return AdaptiveNeuButton(
        buttonTitle: eutopiaNavigationBarSectionalItems[subIndex]
            .leftNavigationBarSectionalItem
            .label!,
        buttonActionOnPressed: () {
          selectPressedSectionItem(subIndex);
        },
        icon: eutopiaNavigationBarSectionalItems[subIndex]
            .leftNavigationBarSectionalItem
            .icon,
        isCollapsed: true,
        isSelected: subIndex == widget.selectedIndex,
      );
    }

    Widget communityAppCardPane = Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.concave,
        depth: -6,
        boxShape:
            NeumorphicBoxShape.roundRect(BorderRadius.all(Radius.circular(24))),
        color: AppColors.backgroundInverseSecondary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundInverseTertiary(context),
          width: 2,
        ),
      ),
      margin: EdgeInsets.only(top: 16, bottom: 16, right: 16, left: 8),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        height: eutopiaNavigationBarSectionalItems.length * 57,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: eutopiaNavigationBarSectionalItems.length,
            itemBuilder: (BuildContext context, int subIndex) {
              return _buildAppButton(context, subIndex);
            }),
      ),
    );

    /*
    * 55GMx Ethos Eutopia
    * eApp Interactions
    * Tile - EAIT1008
    * */
    Widget EAIT1008 = Visibility(
        visible: !isNavigatingLeft,
        child: Row(
          children: [EAIT1006],
        ));


    /*
    * 55GMx Ethos Eutopia
    * eApp Interactions
    * Tile - EAIT1001
    * */
    Widget EAIT1001 = Container(
      child: Center(
        child: EAIT1007,
      ),
    );

    _buildAppPageButton(content, subIndex) {
      return ActionNeuChip(
        chipAvatarText:
            "${eutopiaNavigationBarSectionalItems[subIndex].leftNavigationBarSectionalItem.code}",
        chipTitle:
            "${eutopiaNavigationBarSectionalItems[subIndex].leftNavigationBarSectionalItem.label}",
        chipIconBackgroundColor: AppColors.contentPrimary(context),
        buttonActionOnPressed: () {
          selectPressedSectionItem(subIndex);
        },
      );
    }

    Widget pageTabPane = Neumorphic(
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
        color: AppColors.backgroundInverseSecondary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundInverseTertiary(context),
          width: 2,
        ),
      ),
      margin: EdgeInsets.only(bottom: 8, right: 16, left: 8, top: 16),
      child: Container(
        child: Row(
          children: [
            Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: eutopiaNavigationBarSectionalItems.length,
                  itemBuilder: (BuildContext context, int subIndex) {
                    return _buildAppPageButton(context, subIndex);
                  }),
            )
          ],
        ),
        // height: 100,
      ),
    );

    Widget ethosaiSearchInput = Center(
      child: Container(
        // height: 64,
        child: Neumorphic(
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            depth: 6,
            boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.all(Radius.circular(24))),
            color: AppColors.contentInverseSecondary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.contentInverseTertiary(context),
              width: 2,
            ),
          ),
          margin: EdgeInsets.only(bottom: 8, right: 16, left: 8, top: 8),
          child: Column(
            children: [
              // Update with tile for ethosai with search
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                child: NameTextField(
                    hintText: "Search Ethosverse",
                    nameTextFieldController: nameTextFieldController),
              ),
            ],
          ),
        ),
      ),
    );

    Widget openPagesPane = Expanded(
      flex: 8,
      child: Container(
        child: Column(
          children: [
            Flexible(
                flex: 4, //2,
                child: ethosaiSearchInput),
            Visibility(
                visible: focusMode,
                child: Flexible(
                  flex: 8, //35
                  child: Row(
                    children: [
                      Expanded(
                          flex: 12,
                          child: Neumorphic(
                            style: NeumorphicStyle(
                              lightSource: NeumorphicTheme.isUsingDark(context)
                                  ? LightSource.bottomRight
                                  : LightSource.topLeft,
                              shadowLightColor:
                                  NeumorphicTheme.isUsingDark(context)
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
                                top: 8, bottom: 8, right: 8, left: 8),
                            child: Container(
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
                          )),
                      Visibility(
                        visible: false,
                        child: Expanded(
                            flex: 0,
                            child: Column(
                              children: [
                                Expanded(
                                    child: Neumorphic(
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
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.all(Radius.circular(24))),
                                    color: AppColors.backgroundPrimary(context),
                                    border: NeumorphicBorder(
                                      isEnabled: true,
                                      color:
                                          AppColors.backgroundPrimary(context),
                                      width: 2,
                                    ),
                                  ),
                                  margin: EdgeInsets.only(
                                      top: 8, bottom: 8, right: 8, left: 8),
                                  child: Container(
                                    color: AppColors.backgroundPrimary(context),
                                    child: SizedBox(),
                                  ),
                                )),
                                Expanded(
                                    child: Neumorphic(
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
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.all(Radius.circular(24))),
                                    color: AppColors.backgroundPrimary(context),
                                    border: NeumorphicBorder(
                                      isEnabled: true,
                                      color:
                                          AppColors.backgroundPrimary(context),
                                      width: 2,
                                    ),
                                  ),
                                  margin: EdgeInsets.only(
                                      top: 8, bottom: 8, right: 8, left: 8),
                                  child: Container(
                                    color: AppColors.backgroundPrimary(context),
                                    child: SizedBox(),
                                  ),
                                )),
                                Expanded(
                                    child: Neumorphic(
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
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.all(Radius.circular(24))),
                                    color: AppColors.backgroundPrimary(context),
                                    border: NeumorphicBorder(
                                      isEnabled: true,
                                      color:
                                          AppColors.backgroundPrimary(context),
                                      width: 2,
                                    ),
                                  ),
                                  margin: EdgeInsets.only(
                                      top: 8, bottom: 8, right: 8, left: 8),
                                  child: Container(
                                    color: AppColors.backgroundPrimary(context),
                                    child: SizedBox(),
                                  ),
                                )),
                              ],
                            )),
                      ),
                      Visibility(
                        visible: false,
                        child: Expanded(
                            flex: 0,
                            child: Column(
                              children: [
                                Expanded(
                                    child: Neumorphic(
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
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.all(Radius.circular(24))),
                                    color: AppColors.backgroundPrimary(context),
                                    border: NeumorphicBorder(
                                      isEnabled: true,
                                      color:
                                          AppColors.backgroundPrimary(context),
                                      width: 2,
                                    ),
                                  ),
                                  margin: EdgeInsets.only(
                                      top: 8, bottom: 8, right: 8, left: 8),
                                  child: Container(
                                    color: AppColors.backgroundPrimary(context),
                                    child: SizedBox(),
                                  ),
                                )),
                                Expanded(
                                    child: Neumorphic(
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
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.all(Radius.circular(24))),
                                    color: AppColors.backgroundPrimary(context),
                                    border: NeumorphicBorder(
                                      isEnabled: true,
                                      color:
                                          AppColors.backgroundPrimary(context),
                                      width: 2,
                                    ),
                                  ),
                                  margin: EdgeInsets.only(
                                      top: 8, bottom: 8, right: 8, left: 8),
                                  child: Container(
                                    color: AppColors.backgroundPrimary(context),
                                    child: SizedBox(),
                                  ),
                                )),
                                Expanded(
                                    child: Neumorphic(
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
                                    shape: NeumorphicShape.flat,
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.all(Radius.circular(24))),
                                    color: AppColors.backgroundPrimary(context),
                                    border: NeumorphicBorder(
                                      isEnabled: true,
                                      color:
                                          AppColors.backgroundPrimary(context),
                                      width: 2,
                                    ),
                                  ),
                                  margin: EdgeInsets.only(
                                      top: 8, bottom: 8, right: 8, left: 8),
                                  child: Container(
                                    color: AppColors.backgroundPrimary(context),
                                    child: SizedBox(),
                                  ),
                                ))
                              ],
                            )),
                      ),
                    ],
                  ),
                )), // todo: gayab mode
          ],
        ),
      ),
    );

    Widget openTilesPane = Expanded(
      flex: 4,
      child: Neumorphic(
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          shape: NeumorphicShape.flat,
          depth: 6,
          boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.all(Radius.circular(24))),
          color: AppColors.backgroundInverseTertiary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundInverseTertiary(context),
            width: 2,
          ),
        ),
        margin: EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 8),
        child: Container(
          child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 12,
              itemBuilder: (BuildContext context, int subIndex) {
                if (subIndex == 0) {
                  return Container(
                    child: NeumorphicText(
                      "COMMUNITY TILES",
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
                                topRight: Radius.circular(24),
                                bottomRight: Radius.circular(24))),
                        color: AppColors.backgroundTertiary(context),
                        border: NeumorphicBorder(
                          isEnabled: true,
                          color: AppColors.backgroundTertiary(context),
                          width: 1,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      textStyle: NeumorphicTextStyle(
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400),
                    ),
                    margin: EdgeInsets.only(
                        top: 16, bottom: 16, right: 16, left: 16),
                  );
                } else {
                  Widget box = SizedBox(
                    height: 120,
                    width: MediaQuery.of(context).size.width - 12,
                  );
                  Widget container = Neumorphic(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    style: NeumorphicStyle(
                      lightSource: NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor: NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(context),
                      shape: NeumorphicShape.flat,
                      depth: 6,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.all(Radius.circular(24))),
                      color: AppColors.backgroundTertiary(context),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color: AppColors.backgroundTertiary(context),
                        width: 2,
                      ),
                    ),
                    child: box,
                  );
                  return Flexible(
                    child: container,
                  );
                }
              }),
        ),
      ),
    );

    Widget windowPane = Row(
      children: [
        openPagesPane,

        // todo: something like gayab mode
      ],
    );

    Widget EAIT1002 = Column(
      children: [
        Visibility(
            visible: focusMode, // todo: something like gayab mode
            child: Expanded(
              flex: 1,
              child: pageTabPane,
            )),
        Expanded(flex: 11, child: windowPane),
        EAIT1008,
      ],
    );

    print("Layout Breakpoint: ${LayoutBreakpoint().getBreakpoint(context)}");

    return Scaffold(
        backgroundColor: AppColors.backgroundInverseTertiary(context),
        key: _screenKey,
        // The Stack is what allows us to retain state across tab
        // switches by keeping all of our views in the widget tree.
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(flex: 1, child: firstColumnContainer),
              Expanded(flex: 11, child: secondColumnContainer),
              Expanded(
                child: Visibility(
                  child: openTilesPane,
                  visible: focusMode,
                ),
              ),
            ],
          ),
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

/*
* Learn more ->
* https://carbondesignsystem.com/guidelines/2x-grid/overview/
* https://yesviz.com/viewport/
* 1 - XXSVP - XX Small View Port- 1 columns -
* 2 - XSVP - X Small - 2 columns - 320px
* 3 - SVP - Small - 4 columns - 428px
* 4 - MVP - Medium - 8 columns - 672px
* 5 - LVP - Large - 16 columns - 1056px
* 6 - XLVP - X Large - 16 columns - 1312px
* 7 - XXLVP - XX Large - 16 columns - 1584
* */
class LayoutBreakpoint {
  int getBreakpoint(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 320) {
      return 2;
    } else if (screenWidth < 428) {
      return 3;
    } else if (screenWidth < 672) {
      return 4;
    } else if (screenWidth < 1056) {
      return 5;
    } else if (screenWidth < 1312) {
      return 6;
    } else {
      return 7;
    }
  }

  bool isNavigatingLeft(context) {
    if (this.getBreakpoint(context) > 3) {
      return true;
    } else {
      return false;
    }
  }
}
