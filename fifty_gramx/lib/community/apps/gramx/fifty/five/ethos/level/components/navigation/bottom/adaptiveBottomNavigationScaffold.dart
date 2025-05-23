/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/bottom/tab/bottomNavigationTab.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/bottom/cupertinoBottomNavigationScaffold.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/bottom/materialBottomNavigationScaffold.dart';
import 'package:flutter/widgets.dart';

/// A platform-aware Scaffold which encapsulates the common behaviour between
/// material's and cupertino's bottom navigation pattern.
class AdaptiveBottomNavigationScaffold extends StatefulWidget {
  const AdaptiveBottomNavigationScaffold({
    required this.navigationBarItems,
    Key? key,
  })  : assert(navigationBarItems != null),
        super(key: key);

  /// List of the tabs to be displayed with their respective navigator's keys.
  final List<BottomNavigationTab> navigationBarItems;

  @override
  _AdaptiveBottomNavigationScaffoldState createState() =>
      _AdaptiveBottomNavigationScaffoldState();
}

class _AdaptiveBottomNavigationScaffoldState
    extends State<AdaptiveBottomNavigationScaffold> {
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
        child: Platform.isAndroid
            ? _buildMaterial(context)
            : _buildCupertino(context),
      );

  Widget _buildCupertino(BuildContext context) =>
      CupertinoBottomNavigationScaffold(
        navigationBarItems: widget.navigationBarItems,
        onItemSelected: onTabSelected,
        selectedIndex: _currentlySelectedIndex,
      );

  Widget _buildMaterial(BuildContext context) =>
      MaterialBottomNavigationScaffold(
        navigationBarItems: widget.navigationBarItems,
        onItemSelected: onTabSelected,
        selectedIndex: _currentlySelectedIndex,
      );

  /// Called when a tab selection occurs.
  void onTabSelected(int newIndex) {
    if (_currentlySelectedIndex == newIndex) {
      // If the user is re-selecting the tab, the common
      // behavior is to empty the stack.
      widget.navigationBarItems[newIndex].navigatorKey.currentState!
          .popUntil((route) => route.isFirst);
    }

    // If we're running on iOS there's no need to rebuild the Widget to reflect
    // the tab change.
    if (Platform.isAndroid) {
      setState(() {
        _currentlySelectedIndex = newIndex;
      });
    } else {
      _currentlySelectedIndex = newIndex;
    }
  }
}
