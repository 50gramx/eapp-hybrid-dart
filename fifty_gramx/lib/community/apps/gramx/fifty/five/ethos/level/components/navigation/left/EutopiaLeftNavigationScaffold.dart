import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Container/NeuContainer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/AdaptiveIconButton.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuChip.dart';
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

  bool isPanningModeOn = true;
  int firstColumnFlex = 2;
  int secondColumnFlex = 10;

  switchPanningMode() {
    if (isPanningModeOn) {
      setState(() {
        firstColumnFlex = 1;
        secondColumnFlex = 11;
        isPanningModeOn = false;
      });
    } else {
      setState(() {
        firstColumnFlex = 2;
        secondColumnFlex = 10;
        isPanningModeOn = true;
      });
    }
  }

  bool isOpenTilesPanningMadeOn = true;
  int openPagesPanFlex = 8;
  int openTilesPanFlex = 4;

  switchTilesPanningMode() {
    if (isOpenTilesPanningMadeOn) {
      setState(() {
        openPagesPanFlex = 10;
        openTilesPanFlex = 2;
        isOpenTilesPanningMadeOn = false;
      });
    } else {
      setState(() {
        openPagesPanFlex = 8;
        openTilesPanFlex = 4;
        isOpenTilesPanningMadeOn = true;
      });
    }
  }

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
    Widget appLogoPane = Container(
      child: NeumorphicButton(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        margin: const EdgeInsets.only(left: 8, top: 8),
        style: NeumorphicStyle(
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          color: AppColors.backgroundInverseTertiary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundInverseTertiary(context),
            width: 0,
          ),
          depth: 0,
        ),
        child: NeumorphicText(
          isPanningModeOn ? "50GRAMx" : "50GMx",
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
        onPressed: () {
          print('pressed');
          switchPanningMode();
        },
      ),
    );

    List<Widget> appCardCommunityLabels = [];
    for (int code = 50; code < 100; code++) {
      appCardCommunityLabels.add(Container(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        margin: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
        child: NeumorphicText(
          isPanningModeOn ? "${code}GRAMx" : "${code}GMx",
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
            color: AppColors.contentPrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.contentPrimary(context),
              width: 1,
            ),
          ),
          textAlign: TextAlign.left,
          textStyle: NeumorphicTextStyle(
              fontSize: 12,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w300),
        ),
      ));
    }

    Widget communityAppCardPaneControl = NeumorphicButton(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      margin: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
        color: AppColors.backgroundSecondary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundSecondary(context),
          width: 0,
        ),
        depth: 0,
      ),
      child: NeumorphicText(
        isPanningModeOn ? "ETHOS CARDS" : "eCARDS",
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
          color: AppColors.backgroundInverseTertiary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.backgroundInverseTertiary(context),
            width: 1,
          ),
        ),
        textAlign: TextAlign.left,
        textStyle: NeumorphicTextStyle(
            fontSize: 12,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w400),
      ),
      onPressed: () {
        switchPanningMode();
      },
    );

    Widget communityAppCardPane = Neumorphic(
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
        color: AppColors.backgroundSecondary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundSecondary(context),
          width: 2,
        ),
      ),
      margin: EdgeInsets.only(top: 8, bottom: 8, right: 16, left: 16),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: eutopiaNavigationBarSectionalItems.length + 1 + 3,
            itemBuilder: (BuildContext context, int subIndex) {
              if (subIndex == 0) {
                return communityAppCardPaneControl;
              } else if (subIndex == 1) {
                subIndex = subIndex - 1;
                return appCardCommunityLabels[subIndex];
              } else if (subIndex > 1 &&
                  subIndex < eutopiaNavigationBarSectionalItems.length + 2) {
                subIndex = subIndex - 2;
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
                  isCollapsed: !isPanningModeOn,
                );
              } else {
                subIndex = subIndex - eutopiaNavigationBarSectionalItems.length;
                return appCardCommunityLabels[subIndex];
              }
            }),
      ),
    );

    Widget firstColumnContainer = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: appLogoPane,
          ),
          Expanded(
            flex: 11,
            child: communityAppCardPane,
          ),
        ],
      ),
    );

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
        color: AppColors.backgroundTertiary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
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
                    return ActionNeuChip(
                      chipAvatarText:
                          "${eutopiaNavigationBarSectionalItems[subIndex].leftNavigationBarSectionalItem.code}",
                      chipTitle:
                          "${eutopiaNavigationBarSectionalItems[subIndex].leftNavigationBarSectionalItem.label}",
                      chipIconBackgroundColor:
                          AppColors.contentPrimary(context),
                      buttonActionOnPressed: () {
                        selectPressedSectionItem(subIndex);
                      },
                    );
                  }),
            )
          ],
        ),
        // height: 100,
      ),
    );

    Widget openPagesPane = Expanded(
      flex: openPagesPanFlex,
      child: Container(
        child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Container(
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
                    margin:
                        EdgeInsets.only(bottom: 8, right: 16, left: 8, top: 8),
                    child: Container(),
                  ),
                )),
            Flexible(
              flex: 35,
              child: Row(
                children: [
                  Expanded(
                      flex: 12,
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
                  Visibility(visible: false, child: Expanded(
                      flex: 0,
                      child: Column(
                        children: [
                          Expanded(child: Neumorphic(
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
                                top: 8, bottom: 8, right: 8, left: 8),
                            child: Container(
                              color: AppColors.backgroundPrimary(context),
                              child: SizedBox(),
                            ),
                          )),
                          Expanded(child: Neumorphic(
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
                                top: 8, bottom: 8, right: 8, left: 8),
                            child: Container(
                              color: AppColors.backgroundPrimary(context),
                              child: SizedBox(),
                            ),
                          )),
                          Expanded(child: Neumorphic(
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
                                top: 8, bottom: 8, right: 8, left: 8),
                            child: Container(
                              color: AppColors.backgroundPrimary(context),
                              child: SizedBox(),
                            ),
                          )),
                        ],
                      )),),
                  Visibility(visible: false, child: Expanded(
                      flex: 0,
                      child: Column(
                        children: [
                          Expanded(child: Neumorphic(
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
                                top: 8, bottom: 8, right: 8, left: 8),
                            child: Container(
                              color: AppColors.backgroundPrimary(context),
                              child: SizedBox(),
                            ),
                          )),
                          Expanded(child: Neumorphic(
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
                                top: 8, bottom: 8, right: 8, left: 8),
                            child: Container(
                              color: AppColors.backgroundPrimary(context),
                              child: SizedBox(),
                            ),
                          )),
                          Expanded(child: Neumorphic(
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
                                top: 8, bottom: 8, right: 8, left: 8),
                            child: Container(
                              color: AppColors.backgroundPrimary(context),
                              child: SizedBox(),
                            ),
                          ))
                        ],
                      )),),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    Widget openTilesPane = Expanded(
      flex: openTilesPanFlex,
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
          color: AppColors.contentInverseTertiary(context),
          border: NeumorphicBorder(
            isEnabled: true,
            color: AppColors.contentInverseTertiary(context),
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
                  return NeumorphicButton(
                    padding: const EdgeInsets.symmetric(
                        vertical: 6.0, horizontal: 6),
                    margin: const EdgeInsets.only(left: 16, top: 8),
                    style: NeumorphicStyle(
                      lightSource: NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor: NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(context),
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(24)),
                      color: AppColors.contentInverseTertiary(context),
                      border: NeumorphicBorder(
                        isEnabled: true,
                        color: AppColors.contentInverseTertiary(context),
                        width: 0,
                      ),
                      depth: 0,
                    ),
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
                        color: AppColors.backgroundInverseTertiary(context),
                        border: NeumorphicBorder(
                          isEnabled: true,
                          color: AppColors.backgroundInverseTertiary(context),
                          width: 1,
                        ),
                      ),
                      textAlign: TextAlign.left,
                      textStyle: NeumorphicTextStyle(
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w400),
                    ),
                    onPressed: () {
                      switchTilesPanningMode();
                    },
                  );
                } else {
                  return Flexible(
                    child: NeuContainer(
                        containerChild: SizedBox(
                      height: 120,
                      width: MediaQuery.of(context).size.width - 12,
                    )),
                  );
                }
              }),
        ),
      ),
    );

    Widget windowPane = Row(
      children: [
        openPagesPane,
        openTilesPane,
      ],
    );

    Widget secondColumnContainer = Column(
      children: [
        Expanded(
          flex: 1,
          child: pageTabPane,
        ),
        Expanded(flex: 11, child: windowPane),
      ],
    );

    return Scaffold(
        backgroundColor: AppColors.backgroundInverseTertiary(context),
        key: _screenKey,
        // The Stack is what allows us to retain state across tab
        // switches by keeping all of our views in the widget tree.
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(flex: firstColumnFlex, child: firstColumnContainer),
              Expanded(flex: secondColumnFlex, child: secondColumnContainer),
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
