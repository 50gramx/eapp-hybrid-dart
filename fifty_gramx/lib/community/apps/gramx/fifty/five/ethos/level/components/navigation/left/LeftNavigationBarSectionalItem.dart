import 'package:flutter/widgets.dart';

class LeftNavigationBarSectionalItem {
  const LeftNavigationBarSectionalItem({
    required this.icon,
    required this.code,
    this.label,
    this.backgroundColor,
    this.tooltip,
  });

  final IconData icon;
  final int code;
  final String? label;
  final Color? backgroundColor;
  final String? tooltip;
}
