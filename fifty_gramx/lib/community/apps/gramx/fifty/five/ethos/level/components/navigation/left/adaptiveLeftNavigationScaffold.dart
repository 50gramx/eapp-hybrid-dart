import 'dart:async';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/tab/LeftNavigationTab.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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
  int _currentlySelectedChildrenIndex = 0;
  int _currentlySelectedParentIndex = 0;
  bool _isAccountAvailable =
      false; // Initially assuming account is not available

  List<String> parentStackAppNames = [
    'identity',
    'pay',
    'connections',
    'conversations',
    'knowledge_spaces',
    'pods',
    'pods-gpu-pricing'
  ];

  @override
  void initState() {
    super.initState();

    _checkAccountStatus();
  }

  Future<void> _checkAccountStatus() async {
    print("_checkAccountStatus");
    // Simulating an async account status check
    bool isAvailable = await AccountData().isValid();
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
        onWillPop: () async => !await AppFlowManager.instance
            .getNavigationBarItems()![_currentlySelectedChildrenIndex]
            .navigatorKey
            .currentState!
            .maybePop(),
        child: Stack(
          children: [
            // Main Navigation Scaffold
            _buildEutopia(context),

            // // Overlay GetStartedWidget if account is not available
            // if (!_isAccountAvailable)
            //   Positioned.fill(
            //     child: GetStartedWidget(
            //       completedSuccessfulSignIn: () {
            //         setState(() {
            //           _isAccountAvailable = true;
            //         });
            //         setState(() {});
            //         LocalServices().user();
            //       },
            //     ),
            //   ),
          ],
        ),
      );

  Widget _buildEutopia(BuildContext context) => EutopiaLeftNavigationScaffold(
        navigationBarItems: AppFlowManager.instance.getNavigationBarItems()!,
        onChildrenItemSelected: onChildrenTabSelected,
        onParentItemSelected: onParentTabSelected,
        selectedChildrenIndex: _currentlySelectedChildrenIndex,
        selectedParentIndex: _currentlySelectedParentIndex,
        parentStackAppNames: parentStackAppNames,
      );

  /// Called when a tab selection occurs.
  void onChildrenTabSelected(int newIndex) {
    print("onChildrenTabSelected: $newIndex, $_currentlySelectedChildrenIndex");

    // Separate lists based on the 'type' property
    final List<LeftNavigationTab> parentItems = AppFlowManager.instance
        .getNavigationBarItems()!
        .where((item) => parentStackAppNames
            .contains(item.leftNavigationBarSectionalItem.appName))
        .toList();
    final List<LeftNavigationTab> childItems = AppFlowManager.instance
        .getNavigationBarItems()!
        .where((item) => !parentStackAppNames
            .contains(item.leftNavigationBarSectionalItem.appName))
        .toList();
    print(
        "onChildrenTabSelected:totalItems.length, ${AppFlowManager.instance.getNavigationBarItems()?.length}");
    print("onChildrenTabSelected:childItems.length, ${childItems.length}");
    var selectedItem =
        AppFlowManager.instance.getNavigationBarItems()![newIndex];
    print(
        "onChildrenTabSelected:selectedItem.appName, ${selectedItem.leftNavigationBarSectionalItem.appName}");
    var selectedChildIndex = 0;
    selectedChildIndex = childItems.indexWhere((childItem) =>
        childItem.leftNavigationBarSectionalItem.appName ==
        selectedItem.leftNavigationBarSectionalItem.appName);
    print("onChildrenTabSelected:selectedChildIndex, ${selectedChildIndex}");
    print(
        "onChildrenTabSelected:selectedChildIndex.appName, ${AppFlowManager.instance.getNavigationBarItems()![newIndex].leftNavigationBarSectionalItem.appName}");
    print(
        "onChildrenTabSelected:selectedChildIndex.currentState, ${AppFlowManager.instance.getNavigationBarItems()![newIndex].navigatorKey.currentState}");
    if (_currentlySelectedChildrenIndex == newIndex) {
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
      AppFlowManager.instance
          .getNavigationBarItems()![newIndex]
          .navigatorKey
          .currentState!
          .popUntil((route) => route.isFirst);
    }

    // If we're running on iOS there's no need to rebuild the Widget to reflect
    // the tab change.
    setState(() {
      _currentlySelectedChildrenIndex = newIndex;
    });
    print(
        "onChildrenTabSelected, done: $newIndex, $selectedChildIndex, $_currentlySelectedChildrenIndex");
  }

  /// Called when a tab selection occurs.
  void onParentTabSelected(int newIndex) {
    if (_currentlySelectedParentIndex == newIndex) {
      print(_currentlySelectedParentIndex);
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
      var appName = AppFlowManager.instance
          .getNavigationBarItems()![newIndex]
          .leftNavigationBarSectionalItem
          .appName;
      var isParentApp = parentStackAppNames.contains(appName);

      AppFlowManager.instance
          .getNavigationBarItems()![newIndex]
          .navigatorKey
          .currentState!
          .popUntil((route) => route.isFirst);
    }

    // If we're running on iOS there's no need to rebuild the Widget to reflect
    // the tab change.
    setState(() {
      _currentlySelectedParentIndex = newIndex;
    });
  }
}
