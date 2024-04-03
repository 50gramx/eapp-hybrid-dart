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
        tag: "",
        transitionOnUserGestures: true,
        child: Align(
          alignment: Alignment.centerLeft,
          child: tappableTitleText,
        ));

    var galaxyPopupMenuButton =
        GalaxyPageHeaderConfig().buildPopupMenuButton(context);
    var spacePopupMenuButton =
        SpacePageHeaderConfig().buildPopupMenuButton(context);
    var companyPopuMenuButton =
        HomePageHeaderConfig().buildPopupMenuButton(context);

    var leftNavigationActions = [
      GestureDetector(
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
      ),
      galaxyPopupMenuButton,
      spacePopupMenuButton,
      companyPopuMenuButton,
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
      title: title,
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
