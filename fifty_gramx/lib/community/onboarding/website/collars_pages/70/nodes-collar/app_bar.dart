import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/header_config.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/70/nodes-collar/header_config.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Things50DC500000000OverviewPageSliverAppBar extends StatefulWidget {
  Things50DC500000000OverviewPageSliverAppBar({
    Key? key,
  })  : preferredSize = Size.fromHeight(64.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _Things50DC500000000OverviewPageSliverAppBarState createState() =>
      _Things50DC500000000OverviewPageSliverAppBarState();
}

class _Things50DC500000000OverviewPageSliverAppBarState
    extends State<Things50DC500000000OverviewPageSliverAppBar> {
  @override
  Widget build(BuildContext context) {
    Widget titleText = Text(
      Things50DC500000000PageHeaderConfig().header,
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
        Navigator.pushNamed(context, '/70/nodes');
      },
      child: titleText,
    );
    var title = Hero(
        tag: "50gramx-collar-Things50DC500000000-title-app-bar-hero",
        transitionOnUserGestures: true,
        child: Align(
          alignment: Alignment.centerLeft,
          child: tappableTitleText,
        ));
    return SliverAppBar(
      title: title,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.backgroundPrimary(context),
      pinned: true,
      stretch: true,
      actions: Things50DC500000000PageHeaderConfig().buildActions(context),
      onStretchTrigger: () async {
        print("OnStretchTrigger:start");
        print("OnStretchTrigger:finish");
      },
    );
  }
}
