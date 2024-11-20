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

import 'package:flutter/widgets.dart';

/// Holds information about our app's flows.
class AppFlow {
  const AppFlow({
    required this.index,
    required this.title,
    required this.communityCode,
    required this.orgName,
    required this.appName,
    required this.collarNameCode,
    required this.pageNameCode,
    required this.identifier,
    required this.pageIdentifiers,
    required this.code,
    required this.mainColor,
    required this.iconData,
    required this.navigatorKey,
    required this.firstPage,
  });

  final int index;
  final String title;
  final int communityCode;
  final String orgName;
  final String appName;
  final String collarNameCode;
  final String pageNameCode;
  final String? identifier;
  final Map<String, String> pageIdentifiers;
  final int code;
  final Color mainColor;
  final IconData iconData;
  final GlobalKey<NavigatorState> navigatorKey;
  final Widget firstPage;
}
