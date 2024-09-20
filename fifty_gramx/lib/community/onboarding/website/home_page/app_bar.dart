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
            color: AppColors.backgroundPrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundSecondary(context),
              width: 2,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          margin: const EdgeInsets.fromLTRB(8, 2, 16, 2),
          child: Text(
            "Access In",
            maxLines: 1,
            textAlign: TextAlign.end,
            style: TextStyle(
                color: AppColors.contentPrimary(context),
                fontSize: 18,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700),
          )),
    );
  }

  Widget buildTappableHubSignUpTitleContainer() {
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
            color: AppColors.backgroundInversePrimary(context),
            border: NeumorphicBorder(
              isEnabled: true,
              color: AppColors.backgroundSecondary(context),
              width: 2,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          margin: const EdgeInsets.fromLTRB(8, 2, 8, 2),
          child: Text(
            "Join Now",
            maxLines: 1,
            textAlign: TextAlign.end,
            style: TextStyle(
                color: AppColors.contentInversePrimary(context),
                fontSize: 18,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700),
          )),
    );
  }

  Widget buildHubTitle() {
    return Hero(
      tag: "50gramx-hub-title-app-bar-sign-in",
      transitionOnUserGestures: true,
      child: Align(
        alignment: Alignment.centerLeft,
        child: buildTappableHubTitleContainer(),
      ),
    );
  }

  Widget buildHubSignUpTitle() {
    return Hero(
      tag: "50gramx-hub-title-app-bar-sign-up",
      transitionOnUserGestures: true,
      child: Align(
        alignment: Alignment.centerLeft,
        child: buildTappableHubSignUpTitleContainer(),
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
        buildGalaxyPopupMenuButton(),
        buildSpacePopupMenuButton(),
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
      // buildTappableEthosverseTitle(),
      buildHubSignUpTitle(),
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
      shadowColor: AppColors.backgroundPrimary(context),
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
