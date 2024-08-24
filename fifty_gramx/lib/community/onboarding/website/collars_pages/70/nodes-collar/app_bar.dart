import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/layout_breakpoint.dart';
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
  Widget buildHeroTitle(BuildContext context) {
    return Hero(
        tag: "50gramx-collar-Things50DC500000000-title-app-bar-hero",
        transitionOnUserGestures: true,
        child: Align(
          alignment: Alignment.centerLeft,
          child: buildTappableTitleText(context),
        ));
  }

  // Method to build the title based on the layout
  Widget buildAppBarTitle(BuildContext context) {
    if (LayoutBreakpoint().isNavigatingLeft(context)) {
      return buildLeftNavigationAppBarTitle(context);
    } else {
      return buildBottomNavigationAppBarTitle(context);
    }
  }

  // Title for left navigation layout
  Widget buildLeftNavigationAppBarTitle(BuildContext context) {
    return Row(
      children: [
        buildTappableTitleText(context),
      ],
    );
  }

  // Title for bottom navigation layout
  Widget buildBottomNavigationAppBarTitle(BuildContext context) {
    return buildTappableTitleText(context); // Existing title widget
  }

  // Build the actions for the AppBar based on the layout
  List<Widget> buildAppBarActions(BuildContext context) {
    if (LayoutBreakpoint().isNavigatingLeft(context)) {
      return buildLeftNavigationActions();
    } else {
      return [];
    }
  }

  FlexibleSpaceBar buildAppBarFlexibleSpaceBar(BuildContext context) {
    if (LayoutBreakpoint().isNavigatingLeft(context)) {
      return FlexibleSpaceBar();
    } else {
      return FlexibleSpaceBar(
          background: Stack(
        children: [
          // Your background widgets here
          Positioned(
            bottom: 0,
            left: 98,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Things50DC500000000PageHeaderConfig()
                  .buildSubHeaderActions(context),
            ),
          ),
        ],
      ));
    }
  }

  // Actions for left navigation layout
  List<Widget> buildLeftNavigationActions() {
    return Things50DC500000000PageHeaderConfig().buildActions(context);
  }

  // Actions for bottom navigation layout
  // List<Widget> buildBottomNavigationActions() {
  //   return Things50DC500000000PageHeaderConfig().buildSubHeaderActions(context);
  // }

  Widget buildTappableTitleText(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/70/nodes');
      },
      child: buildTitleText(context),
    );
  }

  Widget buildTitleText(BuildContext context) {
    return Text(
      Things50DC500000000PageHeaderConfig().header,
      maxLines: 1,
      textAlign: TextAlign.start,
      style: TextStyle(
          color: AppColors.contentPrimary(context),
          fontSize: 24,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w500),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: buildAppBarTitle(context),
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.backgroundPrimary(context),
      centerTitle: false,
      flexibleSpace: buildAppBarFlexibleSpaceBar(context),
      pinned: true,
      stretch: true,
      actions: buildAppBarActions(context),
      onStretchTrigger: () async {
        print("OnStretchTrigger:start");
        print("OnStretchTrigger:finish");
      },
    );
  }
}
