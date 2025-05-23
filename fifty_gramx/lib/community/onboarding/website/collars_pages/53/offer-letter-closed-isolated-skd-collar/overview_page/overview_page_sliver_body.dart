import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/app_bar.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/overview_page/overview_page_benefits_section.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/overview_page/overview_page_experience_section.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/overview_page/overview_page_get_started_section.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/overview_page/overview_page_hero_section.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/overview_page/overview_page_highlights_section.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/overview_page/overview_page_pricing_section.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/overview_page/overview_page_social_proof_section.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/overview_page/overview_page_value_prop_section.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/overview_page_hero_section.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/app_bar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

CustomScrollView buildOfferLetterCISKDCOverviewPageSliverBody() {
  return CustomScrollView(
    slivers: <Widget>[
      HomePageSliverAppBar(
        isPinned: false,
      ),
      OfferLetterCISKDCOverviewPageSliverAppBar(),
      SliverAnimatedList(
          initialItemCount: 8,
          itemBuilder: (BuildContext context, int position,
              Animation<double> animation) {
            if (position == 0) {
              return buildOfferLetterCISKDCOverviewPageHeroSection(context);
            } else if (position == 1) {
              return buildOfferLetterCISKDCOverviewPageValuePropSection(
                  context);
            } else if (position == 2) {
              return buildOfferLetterCISKDCOverviewPageSocialProofSection(
                  context);
            } else if (position == 3) {
              return buildOfferLetterCISKDCOverviewPagePricingSection(context);
            } else if (position == 4) {
              return buildOfferLetterCISKDCOverviewPageBenefitsSection(context);
            } else if (position == 5) {
              return buildOfferLetterCISKDCOverviewPageGetStartedSection(
                  context);
            } else if (position == 6) {
              return buildOfferLetterCISKDCOverviewPageHighlightsSection(
                  context);
            } else if (position == 7) {
              return buildOfferLetterCISKDCOverviewPageExperienceSection(
                  context);
            } else {
              return SizedBox();
            }
          })
    ],
  );
}
