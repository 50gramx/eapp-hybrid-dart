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

import 'dart:async';

import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/ethosapps/eapp_flow_bob.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/onboarding/getStartedWidget.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// Page that displays its index, flow's title and color.
///
/// Has a button for pushing another one of its kind with an incremented index,
///  and another button for starting a new flow named 'New' with
/// a random background color.

class WebViewPage extends StatefulWidget {
  const WebViewPage({
    required this.index,
    required this.containingFlowTitle,
    Key? key,
  }) : super(key: key);

  final int index;
  final String containingFlowTitle;

  @override
  State<WebViewPage> createState() {
    return _WebViewPageState();
  }
}

class _WebViewPageState extends State<WebViewPage> {
  Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final GlobalKey<SliverAnimatedListState> _spacesEntityListKey =
      GlobalKey<SliverAnimatedListState>();

  @override
  Widget build(BuildContext context) {
    Widget scaffold = Scaffold(
        backgroundColor: AppColors.backgroundPrimary(context),
        body: CustomScrollView(slivers: <Widget>[
          CustomSliverAppBar(
            labelText: "Ethos Identity",
            actionLabelText: "EthosPod",
            isBackEnabled: false,
            trailingButtonCallback: () {},
            isActionEnabled: false,
            onStretchTriggerCallback: () {},
          ),
          SliverAnimatedList(
              key: _spacesEntityListKey,
              initialItemCount: 1,
              itemBuilder: (BuildContext context, int position,
                  Animation<double> animation) {
                return Column(
                  children: [
                    EthosAppFlowBob.gramxAppsInteractionTiles[50]
                    ['ethos-identity']['EAIT1004']['value'],
                  ],
                );
              }),
        ]));
    Widget getStarted = GetStartedWidget();
    return getStarted;
  }
}
