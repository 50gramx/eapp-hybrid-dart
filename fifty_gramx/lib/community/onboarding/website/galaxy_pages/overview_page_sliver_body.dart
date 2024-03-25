import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/app_bar.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/app_bar.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/value_prop_section.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

CustomScrollView buildGalaxyOverviewPageSliverBody() {
  return CustomScrollView(
    slivers: <Widget>[
      HomePageSliverAppBar(
        isPinned: false,
      ),
      GalaxyOverviewPageSliverAppBar(),
      SliverAnimatedList(
          initialItemCount: 3,
          itemBuilder: (BuildContext context, int position,
              Animation<double> animation) {
            if (position == 0) {
              return buildHomePageValuePropSection(context);
            } else if (position == 1) {
              return buildHomePageValuePropSection(context);
            } else if (position == 2) {
              return buildHomePageValuePropSection(context);
            } else {
              return SizedBox();
            }
          })
    ],
  );
}
