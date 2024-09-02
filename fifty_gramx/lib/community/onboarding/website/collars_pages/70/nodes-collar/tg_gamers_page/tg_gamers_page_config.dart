import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/benefits_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/experience_section.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/get_started_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/hero_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/highlights_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/how_helps_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/problem_identification_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/success_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/target_group_page_config.dart';

class Things50DC500000000TGGamersPageConfig extends TargetGroupPageConfig {
  Things50DC500000000TGGamersPageConfig()
      : super(
          heroSectionConfig: HeroSectionConfig(
              title: "Turn Your Gaming PC into a Money-Making Machine",
              subtitle: "Monetize your powerful GPU while you game.",
              backgroundImage: "assets/images/hero_background.png",
              buttonText: "Start Earning – Download Now",
              buttonAction: () {
                // Define the action to download the app
              }),
          problemIdentificationSectionConfig:
              ProblemIdentificationSectionConfig(
                  headline: "The Problem with Idle GPU Power",
                  points: [
                    "GPU power going underutilized",
                    "Missed income opportunities",
                  ],
                  visual: "assets/images/idle_gpu_usage.png"),
          howHelpsSectionConfig: HowHelpsSectionConfig(
            headline: "How 50GRAMx Benefits Gamers",
            points: [
              "Monetize spare GPU power",
              "Seamless integration with gaming setup",
              "Additional income without interrupting gaming",
            ],
            visual: "assets/images/how_50gramx_helps.png",
          ),
          successSectionConfig: SuccessSectionConfig(
            headline: "Success Stories from Gamers",
            testimonials: [
              "I've been earning extra cash effortlessly while gaming!",
              "50GRAMx made it easy to monetize my idle GPU power.",
              "A great way to put my gaming rig to work even when I'm not using it!",
            ],
            visual: "assets/images/success_stories.png",
          ),
          benefitSectionConfig: BenefitSectionConfig(
            headline: "Benefits for Gamers",
            benefitPoints: [
              "Extra income without disrupting gaming",
              "Easy setup and management",
              "Contribute to a global network",
            ],
          ),
          getStartedSectionConfig: GetStartedSectionConfig(
              headline: "Ready to Get Started?",
              steps: [
                "Download the 50GRAMx eNodes Desktop App",
                "Install and set up",
                "Start earning and contributing",
              ],
              downloadUrl: "https://example.com/download"),
          highlightsSectionConfig: HighlightsSectionConfig(
            headline: "Key Features at a Glance",
            featurePoints: [
              "Real-time earnings tracking",
              "Robust security features",
              "24/7 support",
            ],
          ),
          experienceSectionConfig: ExperienceSectionConfig(
              headline: "Experience the Power of Distributed Computing",
              content:
                  "Discover how your gaming setup can be more than just a gaming machine. With 50GRAMx, turn idle GPU power into earnings while enjoying your games.",
              visualUrls: ["assets/images/app_in_action.png"]),
        );

  // Additional methods or properties specific to the Gamers page can be added here
}
