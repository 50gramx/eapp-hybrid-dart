// Main class that holds both hero and value prop section configurations
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/benefits_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/experience_section.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/get_started_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/hero_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/highlights_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/how_helps_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/problem_identification_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/success_section_config.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class TargetGroupPageConfig {
  final HeroSectionConfig heroSectionConfig;
  final ProblemIdentificationSectionConfig problemIdentificationSectionConfig;
  final HowHelpsSectionConfig howHelpsSectionConfig;
  final SuccessSectionConfig successSectionConfig;
  final BenefitSectionConfig benefitSectionConfig;
  final GetStartedSectionConfig getStartedSectionConfig;
  final HighlightsSectionConfig highlightsSectionConfig;
  final ExperienceSectionConfig experienceSectionConfig;

  TargetGroupPageConfig({
    required this.heroSectionConfig,
    required this.problemIdentificationSectionConfig,
    required this.howHelpsSectionConfig,
    required this.successSectionConfig,
    required this.benefitSectionConfig,
    required this.getStartedSectionConfig,
    required this.highlightsSectionConfig,
    required this.experienceSectionConfig,
  });

  final GlobalKey<SliverAnimatedListState> _listKey =
      GlobalKey<SliverAnimatedListState>();

  // Method to build the entire page with both sections
  Widget buildPage(BuildContext context) {
    final List<Widget Function(BuildContext)> _sections = [
      (context) => heroSectionConfig.buildHeroSection(context),
      (context) => problemIdentificationSectionConfig
          .buildProblemIdentificationSection(context),
      (context) => howHelpsSectionConfig.buildHowHelpsSection(context),
      (context) => successSectionConfig.buildSuccessSection(context),
      (context) => benefitSectionConfig.buildBenefitSection(context),
      (context) => getStartedSectionConfig.buildGetStartedSection(context),
      (context) => highlightsSectionConfig.buildHighlightsSection(context),
      (context) => experienceSectionConfig.buildExperienceSection(context),
    ];

    return SliverAnimatedList(
      key: _listKey,
      initialItemCount: _sections.length,
      itemBuilder:
          (BuildContext context, int index, Animation<double> animation) {
        return _buildAnimatedItem(context, _sections[index], animation);
      },
    );
  }

  Widget _buildAnimatedItem(
    BuildContext context,
    Widget Function(BuildContext) sectionBuilder,
    Animation<double> animation,
  ) {
    return SizeTransition(
      sizeFactor: animation,
      child: sectionBuilder(context),
    );
  }
}
