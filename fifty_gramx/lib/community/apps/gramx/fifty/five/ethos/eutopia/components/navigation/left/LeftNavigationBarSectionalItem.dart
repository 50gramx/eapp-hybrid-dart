import 'package:flutter/widgets.dart';

class LeftNavigationBarSectionalItem {
  const LeftNavigationBarSectionalItem({
    required this.icon,
    required this.code,
    this.label,
    Widget? activeIcon,
    this.backgroundColor,
    this.tooltip,
  })  : activeIcon = activeIcon ?? icon,
        assert(icon != null);

  final Widget icon;
  final int code;
  final Widget activeIcon;
  final String? label;
  final Color? backgroundColor;
  final String? tooltip;
}
