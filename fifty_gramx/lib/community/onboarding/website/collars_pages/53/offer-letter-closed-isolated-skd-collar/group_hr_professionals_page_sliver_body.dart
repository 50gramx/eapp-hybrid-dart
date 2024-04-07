import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/app_bar.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/group_hr_professionals_page_benefits_section.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/group_hr_professionals_page_cta_section.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/group_hr_professionals_page_hero_section.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/group_hr_professionals_page_how_helps_section.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/group_hr_professionals_page_problem_identification_section.dart';
import 'package:fifty_gramx/community/onboarding/website/collars_pages/53/offer-letter-closed-isolated-skd-collar/group_hr_professionals_page_success_section.dart';
import 'package:fifty_gramx/community/onboarding/website/home_page/app_bar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

CustomScrollView buildVinayak53GRAMxGroupHRProfessionalsPageSliverBody() {
  return CustomScrollView(
    slivers: <Widget>[
      HomePageSliverAppBar(
        isPinned: false,
      ),
      OfferLetterCISKDCOverviewPageSliverAppBar(),
      SliverAnimatedList(
          initialItemCount: 6,
          itemBuilder: (BuildContext context, int position,
              Animation<double> animation) {
            if (position == 0) {
              return buildVinayak53GRAMxGroupHRProfessionalsPageHeroSection(
                  context);
            } else if (position == 1) {
              return buildVinayak53GRAMxGroupHRProfessionalsPageProblemIdentifcationSection(
                  context);
            } else if (position == 2) {
              return buildVinayak53GRAMxGroupHRProfessionalsPageHowHelpsSection(
                  context);
            } else if (position == 3) {
              return buildVinayak53GRAMxGroupHRProfessionalsPageSuccessSection(
                  context);
            } else if (position == 4) {
              return buildVinayak53GRAMxGroupHRProfessionalsPageCTASection(
                  context);
            } else if (position == 5) {
              return buildVinayak53GRAMxGroupHRProfessionalsPageBenefitsSection(
                  context);
            } else {
              return SizedBox();
            }
          })
    ],
  );
}
