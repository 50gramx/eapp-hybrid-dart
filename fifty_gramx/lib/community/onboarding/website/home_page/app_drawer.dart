import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/app_bar.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/header_config.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildHomePageAppDrawer(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    color: AppColors.backgroundSecondary(context),
    child: Stack(
      children: [
        ListView(
          padding: EdgeInsets.only(top: 48, left: 16, right: 16, bottom: 48),
          children: <Widget>[
            // GalaxyPageHeaderConfig().buildCollapsibleMenu(context),
            // SpacePageHeaderConfig().buildCollapsibleMenu(context),
            HomePageHeaderConfig().buildCollapsibleMenu(context),
            // Add more items here as needed
          ],
        ),
        Positioned(
          top: 8,
          left: 16,
          child: buildHerotitle(context),
        ),
        Positioned(
          top: 8,
          right: 4,
          child: IconButton(
            icon: Icon(
              FeatherIcons.x,
              color: AppColors.contentPrimary(context),
            ),
            onPressed: () {
              Navigator.pop(context); // Closes the drawer
            },
          ),
        ),
      ],
    ),
  );
}
