import 'package:fifty_gramx/widgets/homeScreenWidgets/custom/LeftNavigationBarSectionalItem.dart';
import 'package:flutter/widgets.dart';

class LeftNavigationTab {
  const LeftNavigationTab({
    required this.leftNavigationBarSectionalItem,
    required this.navigatorKey,
    required this.initialPageBuilder,
  });

  final LeftNavigationBarSectionalItem leftNavigationBarSectionalItem;
  final GlobalKey<NavigatorState> navigatorKey;
  final WidgetBuilder initialPageBuilder;
}
