import 'package:flutter/widgets.dart';

//  pageNameCode for ex,
//    home page, manage deployment page,
//    use jupyter notebook page, ubuntu cli page
//    of deployments collar

//  collarNameCode for ex,
//    collar code of deployments collar

//  identifier for ex,
//    domain id of deployments collar

class LeftNavigationBarSectionalItem {
  const LeftNavigationBarSectionalItem({
    required this.orgName,
    required this.appName,
    required this.pageNameCode,
    required this.collarNameCode,
    this.identifier,
    required this.icon,
    required this.code,
    this.label,
    this.backgroundColor,
    this.tooltip,
  });

  final IconData icon;
  final int code;
  final String orgName;
  final String appName;
  final String pageNameCode;
  final String collarNameCode;
  final String? identifier;
  final String? label;
  final Color? backgroundColor;
  final String? tooltip;
}
