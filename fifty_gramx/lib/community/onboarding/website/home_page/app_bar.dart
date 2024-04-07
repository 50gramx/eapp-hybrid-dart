import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold_backup.dart';
import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/header_config.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/header_config.dart';
import 'package:fifty_gramx/community/onboarding/website/space_pages/header_config.dart';
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

class _HomePageSliverAppBarState extends State<HomePageSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    Widget titleText = Text(
      "50GRAMx",
      maxLines: 1,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: AppColors.contentPrimary(context),
          fontSize: 24,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w500),
    );
    Widget tappableTitleText = GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/');
      },
      child: titleText,
    );
    var title = Hero(
        tag: "50gramx-title-app-bar-hero",
        transitionOnUserGestures: true,
        child: Align(
          alignment: Alignment.centerLeft,
          child: tappableTitleText,
        ));

    Widget tappableHubTitleContainer = Padding(
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
            "Try Collars",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.contentInversePrimary(context),
                fontSize: 16,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500),
          )),
    );
    var hubTitle = Hero(
      tag: "50gramx-hub-title-app-bar-hero",
      transitionOnUserGestures: true,
      child: Align(
        alignment: Alignment.centerLeft,
        child: tappableHubTitleContainer,
      ),
    );

    var tappableEthosverseTitle = GestureDetector(
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
    var galaxyPopupMenuButton =
        GalaxyPageHeaderConfig().buildPopupMenuButton(context);
    var spacePopupMenuButton =
        SpacePageHeaderConfig().buildPopupMenuButton(context);
    var companyPopuMenuButton =
        HomePageHeaderConfig().buildPopupMenuButton(context);

    var leftNavigationActions = [
      hubTitle,
    ];

    List<Widget> bottomNavigationActions = [
      IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    ];

    bool isNavigatingLeft = LayoutBreakpoint().isNavigatingLeft(context);

    return SliverAppBar(
      title: Row(
        children: [
          // Add space to separate the title and other actions
          title, // Your existing title widget
          SizedBox(width: 16),
          tappableEthosverseTitle,
          galaxyPopupMenuButton,
          spacePopupMenuButton,
          companyPopuMenuButton,
        ],
      ),
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.backgroundPrimary(context),
      pinned: widget.isPinned,
      actions:
          isNavigatingLeft ? leftNavigationActions : bottomNavigationActions,
      stretch: true,
      onStretchTrigger: () async {
        print("OnStretchTrigger:start");
        print("OnStretchTrigger:finish");
      },
    );
  }
}
