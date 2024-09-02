import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/benefits_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/experience_section.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/get_started_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/hero_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/highlights_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/how_helps_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/problem_identification_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/success_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/target_group_page_config.dart';

class Things50DC500000000TGMLResearchersPageConfig
    extends TargetGroupPageConfig {
  Things50DC500000000TGMLResearchersPageConfig()
      : super(
          heroSectionConfig: HeroSectionConfig(
              title: "Boost Your ML Projects and Earn",
              subtitle:
                  "Leverage your GPU power for machine learning while earning passive income.",
              backgroundImage: "assets/images/ml_researchers_hero.png",
              buttonText: "Start Earning – Download Now",
              buttonAction: () {
                // Define the action to download the app
              }),
          problemIdentificationSectionConfig:
              ProblemIdentificationSectionConfig(
                  headline: "The Challenge of Underutilized ML Resources",
                  points: [
                    "High cost of ML infrastructure",
                    "Unused GPU power during non-research hours",
                  ],
                  visual: "assets/images/resource_underutilization.png"),
          howHelpsSectionConfig: HowHelpsSectionConfig(
            headline: "How 50GRAMx Supports ML Researchers",
            points: [
              "Monetize idle GPU resources",
              "Seamless integration with ML workflows",
              "Additional revenue to offset research costs",
            ],
            visual: "assets/images/how_50gramx_supports_ml.png",
          ),
          successSectionConfig: SuccessSectionConfig(
            headline: "Success Stories from ML Researchers",
            testimonials: [
              "Using 50GRAMx has helped me fund my ML projects while optimizing my GPU usage.",
              "The integration was smooth, and I saw immediate results in my passive income.",
              "A fantastic way to make the most of idle GPUs during non-research hours!",
            ],
            visual: "assets/images/success_stories_ml.png",
          ),
          benefitSectionConfig: BenefitSectionConfig(
            headline: "Benefits for ML Researchers",
            benefitPoints: [
              "Extra income to support research",
              "Efficient use of computing resources",
              "Easy to set up and integrate",
            ],
          ),
          getStartedSectionConfig: GetStartedSectionConfig(
              headline: "Ready to Get Started?",
              steps: [
                "Download the 50GRAMx eNodes Desktop App",
                "Install and set up",
                "Start earning and optimizing your resources",
              ],
              downloadUrl: "https://example.com/download"),
          highlightsSectionConfig: HighlightsSectionConfig(
            headline: "Key Features at a Glance",
            featurePoints: [
              "Real-time earnings tracking",
              "Seamless ML integration",
              "Robust security features",
            ],
          ),
          experienceSectionConfig: ExperienceSectionConfig(
              headline: "Experience the Impact of Optimized ML Resources",
              content:
                  "Discover how 50GRAMx can enhance your ML research efficiency and provide additional income. Leverage your idle GPU power effectively and see tangible benefits.",
              visualUrls: ["assets/images/ml_experience.png"]),
        );

  // Additional methods or properties specific to the ML Researchers page can be added here
}
