import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/tab/EutopiaLeftNavigationSectionalTab.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PageFlowBuilder {
  static Widget buildPageFlow(
    BuildContext context,
    int tabIndex,
    EutopiaLeftNavigationSectionalTab item,
    List<AnimationController> animationControllers,
    List<bool> shouldBuildTab,
    EutopiaLeftNavigationScaffold widget,
  ) {
    if (kDebugMode) {
      print(
          "_buildPageFlow for page label ${item.leftNavigationBarSectionalItem.label}");
    }
    final isCurrentlySelected = tabIndex == widget.selectedIndex;
    if (kDebugMode) {
      print("tabIndex: $tabIndex");
      print("isCurrentlySelected: $isCurrentlySelected");
      print("_shouldBuildTab.isEmpty: ${shouldBuildTab.isEmpty}");
      print("_shouldBuildTab: ${shouldBuildTab}");
    }
    // print("_shouldBuildTab[tabIndex]: ${shouldBuildTab[tabIndex]}");

    if (shouldBuildTab.isEmpty) {
      if (kDebugMode) {
        print("PageFlowBuilder:buildPageFlow: shouldBuildTab.isEmpty");
      }
      shouldBuildTab.add(false);
    }

    // We should build the tab content only if it was already built or
    // if it is currently selected.
    shouldBuildTab[tabIndex] = isCurrentlySelected || shouldBuildTab[tabIndex];

    final viewOpacity;
    if (kDebugMode) {
      print("_animationControllers.length: ${animationControllers.length}");
    }
    try {
      viewOpacity = animationControllers[tabIndex].drive(
        CurveTween(curve: Curves.fastOutSlowIn),
      );
    } catch (e) {
      if (kDebugMode) {
        print("Error while creating viewOpacity: $e");
      }
      throw e;
    }

    final Widget view = FadeTransition(
      opacity: viewOpacity,
      child: KeyedSubtree(
        key: item.subtreeKey,
        child: shouldBuildTab[tabIndex]
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
      animationControllers[tabIndex].forward();
      if (kDebugMode) {
        print("Tab Index $tabIndex is currently selected. Forward animation.");
      }
      return view;
    } else {
      animationControllers[tabIndex].reverse();
      if (kDebugMode) {
        print(
            "Tab Index $tabIndex is not currently selected. Reverse animation.");
      }

      if (animationControllers[tabIndex].isAnimating) {
        if (kDebugMode) {
          print("Ignoring pointer for Tab Index $tabIndex.");
        }
        return IgnorePointer(child: view);
      }
      return Offstage(child: view);
    }
  }
}
