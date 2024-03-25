import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/app_bar.dart';
import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/licences_page_compare_section.dart';
import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/licences_page_hero_section.dart';
import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/licences_page_plans_section.dart';
import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/licences_page_sales_section.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/app_bar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

CustomScrollView buildGalaxyLicencesPageSliverBody() {
  return CustomScrollView(
    slivers: <Widget>[
      HomePageSliverAppBar(
        isPinned: false,
      ),
      GalaxyOverviewPageSliverAppBar(),
      SliverAnimatedList(
          initialItemCount: 4,
          itemBuilder: (BuildContext context, int position,
              Animation<double> animation) {
            if (position == 0) {
              return buildGalaxyLicencesPageHeroSection(context);
            } else if (position == 1) {
              return buildGalaxyLicencesPagePlansSection(context);
            } else if (position == 2) {
              return buildGalaxyLicencesPageSalesSection(context);
            } else if (position == 3) {
              return buildGalaxyLicencesPageCompareSection();
            } else {
              return SizedBox();
            }
          })
    ],
  );
}
