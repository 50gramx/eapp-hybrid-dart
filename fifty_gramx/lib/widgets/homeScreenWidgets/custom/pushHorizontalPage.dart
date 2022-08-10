import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppPushPage {
  // warn: Assuming that pushHorizontalPage on web means on Single screen only
  void pushHorizontalPage(BuildContext context, Widget page) {
    if (!kIsWeb) {
      var isHorizontalNavigation = true;
      // If it's not horizontal navigation,
      // we should use the rootNavigator.
      Navigator.of(context, rootNavigator: !isHorizontalNavigation).push(
        _buildAdaptivePageRoute(
          builder: (context) => page,
          fullscreenDialog: !isHorizontalNavigation,
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      );
    }
  }

  void pushVerticalPage(BuildContext context, Widget page) {
    var isHorizontalNavigation = false;
    // If it's not horizontal navigation,
    // we should use the rootNavigator.
    Navigator.of(context, rootNavigator: !isHorizontalNavigation).push(
      _buildAdaptivePageRoute(
        builder: (context) => page,
        fullscreenDialog: !isHorizontalNavigation,
      ),
    );
  }

  // Flutter will use the fullscreenDialog property to change the animation
  // and the app bar's left icon to an X instead of an arrow.
  PageRoute<T> _buildAdaptivePageRoute<T>({
    required WidgetBuilder builder,
    bool fullscreenDialog = false,
  }) =>
      Platform.isAndroid
          ? MaterialPageRoute(
              builder: builder,
              fullscreenDialog: fullscreenDialog,
            )
          : CupertinoPageRoute(
              builder: builder,
              fullscreenDialog: fullscreenDialog,
            );
}
