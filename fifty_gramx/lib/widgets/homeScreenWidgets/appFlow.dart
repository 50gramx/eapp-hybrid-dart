import 'package:flutter/widgets.dart';

/// Holds information about our app's flows.
class AppFlow {
  const AppFlow({
    required this.index,
    required this.title,
    required this.mainColor,
    required this.iconData,
    required this.navigatorKey,
  });

  final int index;
  final String title;
  final Color mainColor;
  final IconData iconData;
  final GlobalKey<NavigatorState> navigatorKey;
}
