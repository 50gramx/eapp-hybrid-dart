import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/LeftNavigationBarSectionalItem.dart';
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
