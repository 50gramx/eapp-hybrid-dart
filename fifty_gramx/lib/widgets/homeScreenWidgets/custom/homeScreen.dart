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

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/appFlow.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/connections/connectionsHomePage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/conversations/conversationsHomePage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/custom/bottomNavigationTab.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/spacesHomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'adaptiveBottomNavigationScaffold.dart';

/// Contains our different pages flows and bottom navigation menu for
/// alternating between them.
///
/// It's called Screen — not Page — to avoid confusion, this one displays
/// Pages inside it.
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  setStatusBarTheme() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: NeumorphicTheme.isUsingDark(context)
          ? AppColors.gray900
          : AppColors.white,
      statusBarBrightness: NeumorphicTheme.isUsingDark(context)
          ? Brightness.light
          : Brightness.dark,
      statusBarIconBrightness: NeumorphicTheme.isUsingDark(context)
          ? Brightness.light
          : Brightness.dark,
    ));
  }

  final List<AppFlow> appFlows = [
    AppFlow(
      index: 0,
      title: 'Conversations',
      iconData: FeatherIcons.messageCircle,
      mainColor: AppColors.lightNeuPrimaryBackground,
      navigatorKey: GlobalKey<NavigatorState>(),
    ),
    AppFlow(
      index: 1,
      title: 'Spaces',
      iconData: FeatherIcons.hexagon,
      mainColor: AppColors.lightNeuPrimaryBackground,
      navigatorKey: GlobalKey<NavigatorState>(),
    ),
    AppFlow(
      index: 2,
      title: 'Connections',
      iconData: FeatherIcons.user,
      mainColor: AppColors.lightNeuPrimaryBackground,
      navigatorKey: GlobalKey<NavigatorState>(),
    ),
  ];

  @override
  Widget build(BuildContext context) => AdaptiveBottomNavigationScaffold(
        navigationBarItems: appFlows
            .map(
              (flow) => BottomNavigationTab(
                bottomNavigationBarItem: BottomNavigationBarItem(
                  label: flow.title,
                  icon: Icon(flow.iconData),
                ),
                navigatorKey: flow.navigatorKey,
                initialPageBuilder: (context) {
                  setStatusBarTheme();
                  if (flow.index == 0) {
                    return ConversationsHomePage(
                        index: 1, containingFlowTitle: flow.title);
                  } else if (flow.index == 1) {
                    return SpacesHomePage(
                        index: 1, containingFlowTitle: flow.title);
                  } else {
                    return ConnectionsHomePage(index: 1);
                  }
                },
              ),
            )
            .toList(),
      );
}
