import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/layout_breakpoint.dart';
import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/header_config.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/header_config.dart';
import 'package:fifty_gramx/community/onboarding/website/space_pages/header_config.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePageSliverAppBar extends StatefulWidget {
  HomePageSliverAppBar({
    Key? key,
    bool this.isPinned = true,
  })  : preferredSize = Size.fromHeight(64.0),
        super(key: key);

  final bool isPinned;

  @override
  final Size preferredSize;

  @override
  _HomePageSliverAppBarState createState() => _HomePageSliverAppBarState();
}

Widget buildTitleText(BuildContext context) {
  return Text(
    "50GRAMx",
    maxLines: 1,
    textAlign: TextAlign.start,
    style: TextStyle(
        color: AppColors.contentPrimary(context),
        fontSize: 24,
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500),
  );
}

Widget buildTappableTitleText(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/');
    },
    child: buildTitleText(context),
  );
}

Widget buildHerotitle(BuildContext context) {
  return Hero(
      tag: "50gramx-title-app-bar-hero",
      transitionOnUserGestures: true,
      child: Align(
        alignment: Alignment.centerLeft,
        child: buildTappableTitleText(context),
      ));
}

class _HomePageSliverAppBarState extends State<HomePageSliverAppBar> {
  Widget buildTappableHubTitleContainer() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: NeumorphicButton(
          provideHapticFeedback: true,
          onPressed: () {
            Navigator.pushNamed(context, '/collars');
          },
          style: NeumorphicStyle(
            lightSource: NeumorphicTheme.isUsingDark(context)
                ? LightSource.bottomRight
                : LightSource.topLeft,
            shadowLightColor: NeumorphicTheme.isUsingDark(context)
                ? AppColors.gray600
                : AppColors.backgroundSecondary(context),
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
            color: AppColors.contentPrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundSecondary(context),
              width: 2,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          margin: const EdgeInsets.fromLTRB(16, 12, 16, 8),
          child: Text(
            "Explore Collars",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.contentInversePrimary(context),
                fontSize: 16,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500),
          )),
    );
  }

  Widget buildHubTitle() {
    return Hero(
      tag: "50gramx-hub-title-app-bar-hero",
      transitionOnUserGestures: true,
      child: Align(
        alignment: Alignment.centerLeft,
        child: buildTappableHubTitleContainer(),
      ),
    );
  }

  Widget buildTappableEthosverseTitle() {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/ethosverse',
        );
      },
      child: Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Container(
            padding: EdgeInsets.only(left: 6, right: 6),
            alignment: Alignment.center,
            child: NeumorphicText(
              "Ethosverse",
              style: NeumorphicStyle(
                lightSource: NeumorphicTheme.isUsingDark(context)
                    ? LightSource.bottomRight
                    : LightSource.topLeft,
                shadowLightColor: NeumorphicTheme.isUsingDark(context)
                    ? AppColors.gray600
                    : AppColors.backgroundSecondary(context),
                shape: NeumorphicShape.flat,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(
                    topRight: Radius.circular(24),
                    bottomRight: Radius.circular(24))),
                color: AppColors.contentPrimary(context),
                depth: 2,
                disableDepth: false,
                border: NeumorphicBorder(
                  isEnabled: true,
                  color: AppColors.backgroundInverseTertiary(context),
                  width: 0.3,
                ),
              ),
              textAlign: TextAlign.left,
              textStyle: NeumorphicTextStyle(
                  fontSize: 20,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w600,
                  height: 1.25),
            ),
          )),
    );
  }

  Widget buildGalaxyPopupMenuButton() {
    return GalaxyPageHeaderConfig().buildPopupMenuButton(context);
  }

  Widget buildSpacePopupMenuButton() {
    return SpacePageHeaderConfig().buildPopupMenuButton(context);
  }

  Widget buildCompanyPopuMenuButton() {
    return HomePageHeaderConfig().buildPopupMenuButton(context);
  }

  buildLeftNavigationAppBarTitle() {
    return Row(
      children: [
        // Add space to separate the title and other actions
        buildHerotitle(context), // Your existing title widget
        SizedBox(width: 16),
        buildTappableEthosverseTitle(),
        // buildGalaxyPopupMenuButton(),
        // buildSpacePopupMenuButton(),
        buildCompanyPopuMenuButton(),
      ],
    );
  }

  buildBottomNavigationAppBarTitle() {
    return Row(
      children: [
        // Add space to separate the title and other actions
        buildHerotitle(context), // Your existing title widget
      ],
    );
  }

  buildAppBarTitle() {
    return LayoutBreakpoint().isNavigatingLeft(context)
        ? buildLeftNavigationAppBarTitle()
        : buildBottomNavigationAppBarTitle();
  }

  buildLeftNavigationActions() {
    return [
      buildHubTitle(),
    ];
  }

  buildBottomNavigationActions() {
    return [
      IconButton(
        icon: Icon(FeatherIcons.search),
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/ethosverse',
          );
        },
      ),
      IconButton(
        icon: Icon(FeatherIcons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    ];
  }

  buildAppBarActions() {
    return LayoutBreakpoint().isNavigatingLeft(context)
        ? buildLeftNavigationActions()
        : buildBottomNavigationActions();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: buildAppBarTitle(),
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.backgroundPrimary(context),
      pinned: widget.isPinned,
      actions: buildAppBarActions(),
      stretch: true,
      onStretchTrigger: () async {
        print("OnStretchTrigger:start");
        print("OnStretchTrigger:finish");
      },
    );
  }
}
