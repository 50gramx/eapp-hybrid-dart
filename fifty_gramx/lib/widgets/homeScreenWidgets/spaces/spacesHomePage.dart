import 'dart:async';
import 'dart:io';

import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge/discover_space_knowledge.pb.dart';
import 'package:fifty_gramx/services/product/knowledge/domain/createSpaceKnowledgeDomainService.dart';
import 'package:fifty_gramx/services/product/knowledge/space/discoverSpaceKnowledgeService.dart';
import 'package:fifty_gramx/widgets/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/widgets/components/screen/appTabBar.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/custom/pushHorizontalPage.dart';
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
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundSecondary(context),
      appBar: CustomAppBar(
          labelText: "Spaces",
          actionLabelText: "EthosPod",
          isBackEnabled: false,
          trailingButtonCallback: () {
            _pushEthosPodConfigurationPage();
          }),
      body: Column(children: [
        MyReservedSpaceWidget(),
        Padding(
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
                      color: AppColors.backgroundPrimary(context), width: 0.25),
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
        FutureBuilder<GetSpaceKnowledgeDomainsResponse>(
            future: DiscoverSpaceKnowledgeService.getSpaceKnowledgeDomains(),
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return AppProgressIndeterminateWidget();
              } else {
                return Expanded(
                    child: ListView.builder(
                        itemCount: snap.data!.spaceKnowledgeDomains.length,
                        itemBuilder: (context, snapShot) {
                          return SelectorConfigurationItem(
                            titleText:
                                "${snap.data!.spaceKnowledgeDomains[snapShot].spaceKnowledgeDomainName}",
                            subtitleText:
                                "${snap.data!.spaceKnowledgeDomains[snapShot].spaceKnowledgeDomainCollarEnum.name.substring(0, snap.data!.spaceKnowledgeDomains[snapShot].spaceKnowledgeDomainCollarEnum.name.length - 7)}",
                            selectorCallback: () {
                              AppPushPage().pushHorizontalPage(
                                  context,
                                  DiscoverSpaceKnowledgeDomainFilesPage(
                                    spaceKnowledgeDomain: snap
                                        .data!.spaceKnowledgeDomains[snapShot],
                                  ));
                            },
                          );
                        }));
              }
            }),
      ]),
    );
  }

  void _pushEthosPodConfigurationPage() {
    var isHorizontalNavigation = true;
    // If it's not horizontal navigation,
    // we should use the rootNavigator.
    Navigator.of(context, rootNavigator: !isHorizontalNavigation).push(
      _buildAdaptivePageRoute(
        builder: (context) => EthosPodConfigurationPage(),
        fullscreenDialog: !isHorizontalNavigation,
      ),
    );
  }

  // void _pushPage(BuildContext context, bool isHorizontalNavigation) {
  //   // If it's not horizontal navigation,
  //   // we should use the rootNavigator.
  //   Navigator.of(context, rootNavigator: !isHorizontalNavigation).push(
  //     _buildAdaptivePageRoute(
  //       builder: (context) => IndexedPage(
  //         // If it's a new flow, the displayed index should be 1 again.
  //         index: isHorizontalNavigation ? index + 1 : 1,
  //         // If it's a new flow, we'll randomize its color.
  //         backgroundColor: Colors.primaries[Random().nextInt(Colors.primaries.length)],
  //         // If it's starting a new flow let's just call it 'New.'
  //         containingFlowTitle:
  //             isHorizontalNavigation ? containingFlowTitle : 'New',
  //       ),
  //       fullscreenDialog: !isHorizontalNavigation,
  //     ),
  //   );
  // }

  // Flutter will use the fullscreenDialog property to change the animation
  // and the app bar's left icon to an X instead of an arrow.
  PageRoute<T> _buildAdaptivePageRoute<T>({
    required WidgetBuilder builder,
    bool fullscreenDialog = false,
  }) =>
      Platform.isAndroid
          ? MaterialPageRoute(
              builder: builder,
              fullscreenDialog: fullscreenDialog,
            )
          : CupertinoPageRoute(
              builder: builder,
              fullscreenDialog: fullscreenDialog,
            );
}
