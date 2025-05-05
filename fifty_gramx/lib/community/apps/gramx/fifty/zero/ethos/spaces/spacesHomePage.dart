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

import 'package:eapp_dart_domain/ethos/elint/entities/space_service_domain.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/eutopia/managers/eapp_flow_manager.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/spaces/LocalSpacesService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/spaces/knowledge/domain/DiscoverSpaceKnowledgeDomainFilesPage.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/pushHorizontalPage.dart';
import 'package:fifty_gramx/services/datetime/DateTimeService.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// Page that displays its index, flow's title and color.
///
/// Has a button for pushing another one of its kind with an incremented index,
///  and another button for starting a new flow named 'New' with
/// a random background color.

class SpacesHomePage extends StatefulWidget {
  const SpacesHomePage({
    required this.index,
    required this.containingFlowTitle,
    required this.focusPaneShift,
    Key? key,
  }) : super(key: key);

  final int index;
  final String containingFlowTitle;
  final Function(String) focusPaneShift;

  @override
  State<SpacesHomePage> createState() {
    return _SpacesHomePageState();
  }
}

class _SpacesHomePageState extends State<SpacesHomePage> {
  Stream<LocalNotification> _notificationsStream =
      NotificationsBloc.instance.notificationsStream;

  @override
  void initState() {
    loadMySpaces();
    listenForLocalNotifications();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  loadMySpaces() async {
    // Update list
    for (int index = 0;
        index < LocalSpacesService.mySpaceKnowledgeDomains.length;
        index++) {
      _spacesEntityListKey.currentState?.insertItem(index);
    }
    for (int index = 0;
        index < LocalSpacesService.mySpaceServiceDomains.length;
        index++) {
      _spacesServiceListKey.currentState?.insertItem(index);
    }
    for (int index = 0;
        index < LocalSpacesService.mySpaceProductDomains.length;
        index++) {
      _spacesProductListKey.currentState?.insertItem(index);
    }
  }

  listenForLocalNotifications() {
    _notificationsStream.listen((notification) {
      if (notification.type == "LocalSpacesService") {
        if (notification.data["subType"] == "AddedSpaceKnowledgeDomain") {
          _spacesEntityListKey.currentState!
              .insertItem(notification.data["at"]);
        } else if (notification.data["subType"] == "AddedSpaceServiceDomain") {
          _spacesServiceListKey.currentState!
              .insertItem(notification.data["at"]);
        } else if (notification.data["subType"] == "AddedSpaceProductDomain") {
          _spacesProductListKey.currentState!
              .insertItem(notification.data["at"]);
        }
      }
    });
  }

  final GlobalKey<SliverAnimatedListState> _spacesEntityListKey =
      GlobalKey<SliverAnimatedListState>();
  final GlobalKey<SliverAnimatedListState> _spacesServiceListKey =
      GlobalKey<SliverAnimatedListState>();
  final GlobalKey<SliverAnimatedListState> _spacesProductListKey =
      GlobalKey<SliverAnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundPrimary(context),
        body: CustomScrollView(slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: NeumorphicText(
                    "MY SPACE DOMAINS",
                    style: NeumorphicStyle(
                      color: AppColors.contentTertiary(context),
                      lightSource: NeumorphicTheme.isUsingDark(context)
                          ? LightSource.bottomRight
                          : LightSource.topLeft,
                      shadowLightColor: NeumorphicTheme.isUsingDark(context)
                          ? AppColors.gray600
                          : AppColors.backgroundSecondary(context),
                      border: NeumorphicBorder(
                          color: AppColors.backgroundPrimary(context),
                          width: 0.25),
                    ),
                    textAlign: TextAlign.start,
                    textStyle: NeumorphicTextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        height: 1.25),
                  ),
                ),
              ),
            ),
          ),
          SliverAnimatedList(
              key: _spacesEntityListKey,
              initialItemCount:
                  LocalSpacesService.mySpaceKnowledgeDomains.length,
              itemBuilder: (BuildContext context, int position,
                  Animation<double> animation) {
                if (position <
                    LocalSpacesService.mySpaceKnowledgeDomains.length) {
                  var spaceKnowledgeDomain =
                      LocalSpacesService.mySpaceKnowledgeDomains[position];
                  return SelectorConfigurationItem(
                    titleText: spaceKnowledgeDomain.spaceKnowledgeDomainName,
                    subtitleText:
                        "${spaceKnowledgeDomain.spaceKnowledgeDomainCollarEnum.name.substring(0, spaceKnowledgeDomain.spaceKnowledgeDomainCollarEnum.name.length - 7)}",
                    selectorCallback: () {
                      AppPushPage().pushHorizontalPage(
                          context,
                          DiscoverSpaceKnowledgeDomainFilesPage(
                            spaceKnowledgeDomain: spaceKnowledgeDomain,
                          ));
                    },
                  );
                } else {
                  return SizedBox.shrink();
                }
              }),
          SliverAnimatedList(
              key: _spacesServiceListKey,
              initialItemCount: LocalSpacesService.mySpaceServiceDomains.length,
              itemBuilder: (BuildContext context, int position,
                  Animation<double> animation) {
                if (position <
                    LocalSpacesService.mySpaceServiceDomains.length) {
                  SpaceServiceDomain spaceServiceDomain =
                      LocalSpacesService.mySpaceServiceDomains[position];
                  String collarCode = resolveSvcCC(spaceServiceDomain);

                  // DC499999999EAIP1001

                  //  pageNameCode for ex,
                  //    home page, manage deployment page,
                  //    use jupyter notebook page, ubuntu cli page
                  //    of deployments collar

                  //  collarNameCode for ex,
                  //    collar code of deployments collar

                  //  identifier for ex,
                  //    domain id of deployments collar

                  return SelectorConfigurationItem(
                    titleText: spaceServiceDomain.name.isEmpty
                        ? "Personal Deployments"
                        : spaceServiceDomain.name,
                    subtitleText:
                        "${DateTimeService().getFormattedTimeOrDate(spaceServiceDomain.createdAt)} ${DateTimeService().getHourMinuteWithMarker(spaceServiceDomain.createdAt)}",
                    selectorCallback: () async {
                      await AppFlowManager.instance.loadAppOnTheGo(
                          appName: "pods",
                          orgName: "ethos",
                          communityCode: 70,
                          appIndex: 0,
                          collarNameCode: "DC499999999",
                          pageNameCode: "EAIP1001",
                          domainIdentifier: spaceServiceDomain.id);
                      widget.focusPaneShift("Open Pages");
                      AppFlowManager.instance.sendOpenDynamicAppNotification(
                          appName: "pods",
                          orgName: "ethos",
                          communityCode: 70,
                          appIndex: 0,
                          collarNameCode: "DC499999999",
                          pageNameCode: "EAIP1001",
                          domainIdentifier: spaceServiceDomain.id);
                    },
                  );
                } else {
                  return SizedBox.shrink();
                }
              }),
          SliverAnimatedList(
              key: _spacesProductListKey,
              initialItemCount: LocalSpacesService.mySpaceProductDomains.length,
              itemBuilder: (BuildContext context, int position,
                  Animation<double> animation) {
                if (position <
                    LocalSpacesService.mySpaceProductDomains.length) {
                  var spaceProductDomain =
                      LocalSpacesService.mySpaceProductDomains[position];
                  return SelectorConfigurationItem(
                    titleText: spaceProductDomain.name,
                    subtitleText: "${spaceProductDomain.description}",
                    selectorCallback: () async {
                      await AppFlowManager.instance.loadAppOnTheGo(
                          appName: "pods",
                          orgName: "ethos",
                          communityCode: 70,
                          appIndex: 0,
                          collarNameCode: "DC499999994",
                          pageNameCode: "EAIP1001",
                          domainIdentifier: spaceProductDomain.id);
                      widget.focusPaneShift("Open Pages");
                      AppFlowManager.instance.sendOpenDynamicAppNotification(
                          appName: "pods",
                          orgName: "ethos",
                          communityCode: 70,
                          appIndex: 0,
                          collarNameCode: "DC499999994",
                          pageNameCode: "EAIP1001",
                          domainIdentifier: spaceProductDomain.id);
                    },
                  );
                } else {
                  return SizedBox.shrink();
                }
              }),
        ]));
  }

  String resolveSvcCC(SpaceServiceDomain svcd) {
    if (svcd.hasDc500000000()) return "DC500000000";
    if (svcd.hasDc499999999()) return "DC499999999";
    if (svcd.hasDc499999998()) return "DC499999998";
    return "";
  }
}
