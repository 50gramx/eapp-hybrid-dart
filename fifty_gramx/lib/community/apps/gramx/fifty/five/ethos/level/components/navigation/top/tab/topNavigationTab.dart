import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/top/tab/TopNavigationBarSectionalItem.dart';
import 'package:flutter/widgets.dart';

class TopNavigationTab {
  const TopNavigationTab({
    required this.topNavigationBarSectionalItem,
    required this.navigatorKey,
    required this.initialPageBuilder,
  });

  final TopNavigationBarSectionalItem topNavigationBarSectionalItem;
  final GlobalKey<NavigatorState> navigatorKey;
  final WidgetBuilder initialPageBuilder;
}
