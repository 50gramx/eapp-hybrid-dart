import 'package:fifty_gramx/community/onboarding/website/ethosverse/app_bar.dart';
import 'package:fifty_gramx/community/onboarding/website/ethosverse/overview_page_hero_section.dart';
import 'package:fifty_gramx/community/onboarding/website/ethosverse/overview_page_trending_section.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/app_bar.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/value_prop_section.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

CustomScrollView buildEthosverseCollectionPageSliverBody() {
  return CustomScrollView(
    slivers: <Widget>[
      HomePageSliverAppBar(
        isPinned: false,
      ),
      EthosverseOverviewPageSliverAppBar(),
      SliverAnimatedList(
          initialItemCount: 1,
          itemBuilder: (BuildContext context, int position,
              Animation<double> animation) {
            if (position == 0) {
              return buildOverviewPageHeroSection(context);
            } else if (position == 1) {
              return buildOverviewPageTrendingSection(context);
            } else if (position == 2) {
              return buildHomePageValuePropSection(context);
            } else {
              return SizedBox();
            }
          })
    ],
  );
}
