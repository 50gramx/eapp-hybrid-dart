import 'package:fifty_gramx/community/onboarding/website/home_page/app_bar.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/benefits_section.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/experience_section.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/footer.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/get_started_section.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/hero_section.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/highlights_section.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/pricing_section.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/social_proof_section.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/value_prop_section.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

CustomScrollView buildSliverBody(bool signedIn) {
  return CustomScrollView(
    slivers: <Widget>[
      HomePageSliverAppBar(),
      SliverAnimatedList(
          initialItemCount: 9,
          itemBuilder: (BuildContext context, int position,
              Animation<double> animation) {
            if (position == 0) {
              return buildHomePageHeroSection(context, signedIn);
            } else if (position == 1) {
              return buildHomePageValuePropSection(context);
            } else if (position == 2) {
              return buildHomePageSocialProofSection(context);
            } else if (position == 3) {
              return buildHomePagePricingSection();
            } else if (position == 4) {
              return buildHomePageBenefitSection();
            } else if (position == 5) {
              return buildHomePageGetStartedSection();
            } else if (position == 6) {
              return buildHomePageHighlightsSection();
            } else if (position == 7) {
              return buildHomePageExperienceSection();
            } else if (position == 8) {
              return buildHomePageFooterSection();
            } else {
              return SizedBox();
            }
          })
    ],
  );
}
