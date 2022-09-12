import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/top/eutopiaTopNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/top/tab/topNavigationTab.dart';
import 'package:flutter/widgets.dart';

/// A platform-aware Scaffold which encapsulates the common behaviour between
/// material's and cupertino's bottom navigation pattern.
class AdaptiveTopNavigationScaffold extends StatefulWidget {
  const AdaptiveTopNavigationScaffold({
    required this.navigationBarItems,
    Key? key,
  })  : assert(navigationBarItems != null),
        super(key: key);

  /// List of the tabs to be displayed with their respective navigator's keys.
  final List<TopNavigationTab> navigationBarItems;

  @override
  _AdaptiveTopNavigationScaffoldState createState() =>
      _AdaptiveTopNavigationScaffoldState();
}

class _AdaptiveTopNavigationScaffoldState
    extends State<AdaptiveTopNavigationScaffold> {
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

  Widget _buildEutopia(BuildContext context) => EutopiaTopNavigationScaffold(
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

      // TODO: we need to hack the above mentioned behaviour
      /*
      Instead of emptying the stack,
      when user clicks the selected index, we need to highlight all the apps
      in the selected community, as of tiles
      in the second column of the body which is a row widget,
      i*more like chrome tabs view in mobile*i
      and should show a cross/dashboard back button, on right to community button
      in this hover-mode of your space, you should enclose the third column, if any
      * */
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
