import 'package:fifty_gramx/community/onboarding/website/home_page/app_bar.dart';
import 'package:fifty_gramx/community/onboarding/website/satwa_pages/app_bar.dart';
import 'package:fifty_gramx/community/onboarding/website/satwa_pages/plans_page/plan_page_config.dart';
import 'package:fifty_gramx/community/onboarding/website/satwa_pages/plans_page/pricing_page_hero_section.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

CustomScrollView buildSatwaPricingPageSliverBody() {
  return CustomScrollView(
    slivers: <Widget>[
      HomePageSliverAppBar(
        isPinned: false,
      ),
      SatwaOverviewPageSliverAppBar(),
      SliverAnimatedList(
          initialItemCount: 3,
          itemBuilder: (BuildContext context, int position,
              Animation<double> animation) {
            if (position == 0) {
              return buildSatwaPricingPageHeroSection(context);
            } else if (position == 1) {
              return SatwaPlanPageConfig().buildPlansSection(context);
            } else if (position == 2) {
              return SatwaPlanPageConfig().buildComparisonSection(context);
            } else {
              return SizedBox();
            }
          })
    ],
  );
}
