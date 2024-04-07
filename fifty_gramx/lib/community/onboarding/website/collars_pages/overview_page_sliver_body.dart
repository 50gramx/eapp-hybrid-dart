import 'package:fifty_gramx/community/onboarding/website/collars_pages/app_bar.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/overview_page_hero_section.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/app_bar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

CustomScrollView buildCollarsOverviewPageSliverBody() {
  return CustomScrollView(
    slivers: <Widget>[
      HomePageSliverAppBar(
        isPinned: false,
      ),
      CollarsOverviewPageSliverAppBar(),
      SliverAnimatedList(
          initialItemCount: 1,
          itemBuilder: (BuildContext context, int position,
              Animation<double> animation) {
            if (position == 0) {
              return buildCollarsOverviewPageHeroSection(context);
            } else {
              return SizedBox();
            }
          })
    ],
  );
}
