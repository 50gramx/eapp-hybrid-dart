import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/header_config.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class GalaxyOverviewPageSliverAppBar extends StatefulWidget {
  GalaxyOverviewPageSliverAppBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(64.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _GalaxyOverviewPageSliverAppBarState createState() =>
      _GalaxyOverviewPageSliverAppBarState();
}

class _GalaxyOverviewPageSliverAppBarState
    extends State<GalaxyOverviewPageSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    Widget titleText = Text(
      "Galaxy",
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
        Navigator.pushNamed(context, '/galaxy');
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

    GalaxyPageHeaderConfig galaxyConfig = GalaxyPageHeaderConfig();
    var actions = galaxyConfig.buildActions(context);

    return SliverAppBar(
      title: title,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.backgroundPrimary(context),
      pinned: true,
      actions: actions,
      stretch: true,
      onStretchTrigger: () async {
        print("OnStretchTrigger:start");
        print("OnStretchTrigger:finish");
      },
    );
  }
}
