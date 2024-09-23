import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/localServices.dart';
import 'package:fifty_gramx/community/onboarding/getStartedWidget.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A platform-aware Scaffold which encapsulates the common behaviour between
/// material's and cupertino's bottom navigation pattern.
class AdaptiveLeftNavigationScaffold extends StatefulWidget {
  const AdaptiveLeftNavigationScaffold({
    Key? key,
  }) : super(key: key);

  /// List of the tabs to be displayed with their respective navigator's keys.
//  final List<LeftNavigationTab> navigationBarItems;

  @override
  _AdaptiveLeftNavigationScaffoldState createState() =>
      _AdaptiveLeftNavigationScaffoldState();
}

class _AdaptiveLeftNavigationScaffoldState
    extends State<AdaptiveLeftNavigationScaffold> {
  int _currentlySelectedIndex = 0;
  bool _isAccountAvailable = true; // Initially assuming account is available

  @override
  void initState() {
    super.initState();
    _checkAccountStatus();
  }

  Future<void> _checkAccountStatus() async {
    // Simulating an async account status check
    bool isAvailable = await AccountData().accountAvailable();
    setState(() {
      _isAccountAvailable = isAvailable;
    });
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
        // We're preventing the root navigator from popping and closing the app
        // when the back button is pressed and the inner navigator can handle
        // it. That occurs when the inner has more than one page on its stack.
        // You can comment the onWillPop callback and watch "the bug".
        onWillPop: () async => !await EthosAppFlowBob
            .navigationBarItems[_currentlySelectedIndex]
            .navigatorKey
            .currentState!
            .maybePop(),
        child: Stack(
          children: [
            // Main Navigation Scaffold
            _buildEutopia(context),

            // Overlay GetStartedWidget if account is not available
            if (!_isAccountAvailable)
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.6), // Dim background
                  child: Center(
                    child: GetStartedWidget(
                      completedSuccessfulSignIn: () {
                        setState(() {
                          _isAccountAvailable = true;
                        });
                        setState(() {});
                        LocalServices().user();
                      },
                    ),
                  ),
                ),
              ),
          ],
        ),
      );

  Widget _buildEutopia(BuildContext context) => EutopiaLeftNavigationScaffold(
        navigationBarItems: EthosAppFlowBob.navigationBarItems,
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
      EthosAppFlowBob.navigationBarItems[newIndex].navigatorKey.currentState!
          .popUntil((route) => route.isFirst);
    }

    // If we're running on iOS there's no need to rebuild the Widget to reflect
    // the tab change.
    setState(() {
      _currentlySelectedIndex = newIndex;
    });
  }
}
