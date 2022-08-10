import 'dart:io';

import 'package:fifty_gramx/widgets/homeScreenWidgets/custom/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/custom/LeftNavigationTab.dart';
import 'package:flutter/widgets.dart';

/// A platform-aware Scaffold which encapsulates the common behaviour between
/// material's and cupertino's bottom navigation pattern.
class AdaptiveLeftNavigationScaffold extends StatefulWidget {
  const AdaptiveLeftNavigationScaffold({
    required this.navigationBarItems,
    Key? key,
  })  : assert(navigationBarItems != null),
        super(key: key);

  /// List of the tabs to be displayed with their respective navigator's keys.
  final List<LeftNavigationTab> navigationBarItems;

  @override
  _AdaptiveLeftNavigationScaffoldState createState() =>
      _AdaptiveLeftNavigationScaffoldState();
}

class _AdaptiveLeftNavigationScaffoldState
    extends State<AdaptiveLeftNavigationScaffold> {
  int _currentlySelectedIndex = 0;

  @override
  Widget build(BuildContext context) => WillPopScope(
        // We're preventing the root navigator from popping and closing the app
        // when the back button is pressed and the inner navigator can handle
        // it. That occurs when the inner has more than one page on its stack.
        // You can comment the onWillPop callback and watch "the bug".
        onWillPop: () async => !await widget
            .navigationBarItems[_currentlySelectedIndex]
            .navigatorKey
            .currentState!
            .maybePop(),
        child: _buildEutopia(context),
      );

  Widget _buildEutopia(BuildContext context) => EutopiaLeftNavigationScaffold(
        navigationBarItems: widget.navigationBarItems,
        onItemSelected: onTabSelected,
        selectedIndex: _currentlySelectedIndex,
      );

  /// Called when a tab selection occurs.
  void onTabSelected(int newIndex) {
    print("onTabSelected:$newIndex");
    if (_currentlySelectedIndex == newIndex) {
      // If the user is re-selecting the tab, the common
      // behavior is to empty the stack.
      widget.navigationBarItems[newIndex].navigatorKey.currentState!
          .popUntil((route) => route.isFirst);
    }

    // If we're running on iOS there's no need to rebuild the Widget to reflect
    // the tab change.
    setState(() {
      _currentlySelectedIndex = newIndex;
    });
  }
}
