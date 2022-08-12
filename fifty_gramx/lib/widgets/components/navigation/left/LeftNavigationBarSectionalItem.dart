import 'package:flutter/widgets.dart';

class LeftNavigationBarSectionalItem {
  const LeftNavigationBarSectionalItem({
    required this.icon,
    this.label,
    Widget? activeIcon,
    this.backgroundColor,
    this.tooltip,
  })  : activeIcon = activeIcon ?? icon,
        assert(icon != null);

  final Widget icon;
  final Widget activeIcon;
  final String? label;
  final Color? backgroundColor;
  final String? tooltip;
}
