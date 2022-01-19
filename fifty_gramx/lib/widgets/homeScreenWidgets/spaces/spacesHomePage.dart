import 'dart:async';
import 'dart:io';

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge/discover_space_knowledge.pb.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:fifty_gramx/services/product/knowledge/domain/createSpaceKnowledgeDomainService.dart';
import 'package:fifty_gramx/services/product/knowledge/space/discoverSpaceKnowledgeService.dart';
import 'package:fifty_gramx/widgets/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/widgets/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/widgets/components/screen/appTabBar.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/custom/pushHorizontalPage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/LocalSpacesService.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/MyReservedSpaceWidget.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/ethosPod/EthosPodConfigurationPage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/knowledge/domain/CreateSpaceKnowledgeDomainPage.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/knowledge/domain/DiscoverSpaceKnowledgeDomainFilesPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
    Key? key,
  }) : super(key: key);

  final int index;
  final String containingFlowTitle;

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
      _spacesEntityListKey.currentState!.insertItem(index);
    }
  }

  listenForLocalNotifications() {
    _notificationsStream.listen((notification) {
      if (notification.type == "LocalSpacesService") {
        if (notification.data["subType"] == "AddedSpaceKnowledgeDomain") {
          _spacesEntityListKey.currentState!
              .insertItem(notification.data["at"]);
        }
      }
    });
  }

  final GlobalKey<SliverAnimatedListState> _spacesEntityListKey =
      GlobalKey<SliverAnimatedListState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundPrimary(context),
        body: CustomScrollView(slivers: <Widget>[
          CustomSliverAppBar(
            labelText: "Spaces",
            actionLabelText: "EthosPod",
            isBackEnabled: false,
            trailingButtonCallback: () {
              AppPushPage()
                  .pushHorizontalPage(context, EthosPodConfigurationPage());
            },
            onStretchTriggerCallback: () {},
          ),
          SliverAnimatedList(
              key: _spacesEntityListKey,
              initialItemCount:
                  LocalSpacesService.mySpaceKnowledgeDomains.length + 1,
              itemBuilder: (BuildContext context, int position,
                  Animation<double> animation) {
                if (position == 0) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: NeumorphicText(
                          "MY SPACE DOMAINS",
                          style: NeumorphicStyle(
                            color: AppColors.contentTertiary(context),
                            lightSource: NeumorphicTheme.isUsingDark(context)
                                ? LightSource.bottomRight
                                : LightSource.topLeft,
                            shadowLightColor:
                                NeumorphicTheme.isUsingDark(context)
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
                  );
                } else {
                  var newPosition = position - 1;
                  var spaceKnowledgeDomain =
                      LocalSpacesService.mySpaceKnowledgeDomains[newPosition];
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
                }
              }),
        ]));
  }
}
