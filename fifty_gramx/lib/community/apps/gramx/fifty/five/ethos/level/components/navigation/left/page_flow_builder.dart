import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/tab/EutopiaLeftNavigationSectionalTab.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/tab/LeftNavigationTab.dart';
import 'package:flutter/material.dart';

class PageFlowBuilder {
  static Widget buildPageFlow(
    BuildContext context,
    int tabIndex,
    EutopiaLeftNavigationSectionalTab item,
    List<AnimationController> animationControllers,
    List<bool> shouldBuildTab,
    EutopiaLeftNavigationScaffold widget,
    bool isBuildingParentsPage,
  ) {
    final isCurrentlySelected = isBuildingParentsPage
        ? tabIndex == widget.selectedParentIndex
        : tabIndex == widget.selectedChildrenIndex;

    if (shouldBuildTab.isEmpty) {
      shouldBuildTab.add(false);
    }

    // Separate lists based on the 'type' property
    final List<LeftNavigationTab> parentItems = widget.navigationBarItems
        .where((item) => widget.parentStackAppNames
            .contains(item.leftNavigationBarSectionalItem.appName))
        .toList();
    final List<LeftNavigationTab> childItems = widget.navigationBarItems
        .where((item) => !widget.parentStackAppNames
            .contains(item.leftNavigationBarSectionalItem.appName))
        .toList();

    int resolvedIndex = 0;
    // Find the index in the appropriate filtered list based on the type
    if (isBuildingParentsPage) {
      resolvedIndex = parentItems.indexWhere((parentItem) =>
          parentItem.leftNavigationBarSectionalItem.appName ==
          item.leftNavigationBarSectionalItem.appName);
    } else {
      resolvedIndex = childItems.indexWhere((childItem) =>
          childItem.leftNavigationBarSectionalItem.appName ==
          item.leftNavigationBarSectionalItem.appName);
    }

    // We should build the tab content only if it was already built or
    // if it is currently selected.
    shouldBuildTab[resolvedIndex] =
        isCurrentlySelected || shouldBuildTab[resolvedIndex];

    final viewOpacity;

    try {
      viewOpacity = animationControllers[tabIndex].drive(
        CurveTween(curve: Curves.fastOutSlowIn),
      );
    } catch (e) {
      throw e;
    }

    final Widget view = FadeTransition(
      opacity: viewOpacity,
      child: KeyedSubtree(
        key: item.subtreeKey,
        child: shouldBuildTab[resolvedIndex]
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

    if (!isBuildingParentsPage && tabIndex == widget.selectedChildrenIndex) {
      animationControllers[tabIndex].forward();

      return view;
    } else if (isBuildingParentsPage &&
        tabIndex == widget.selectedParentIndex) {
      animationControllers[tabIndex].forward();

      return view;
    } else {
      animationControllers[tabIndex].reverse();

      if (animationControllers[tabIndex].isAnimating) {
        return IgnorePointer(child: view);
      }
      return Offstage(child: view);
    }
  }
}
