import 'package:fifty_gramx/community/onboarding/website/configs/overview_page_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/benefits_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/experience_section.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/get_started_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/hero_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/highlights_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/pricing_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/social_proof_section_config.dart';
import 'package:fifty_gramx/community/onboarding/website/configs/section_configs/value_prop_section_config.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

buildValuePropSectionConfig() {
  final icons = <IconData>[
    Icons.monetization_on,
    Icons.network_check,
    Icons.settings,
  ];

  final titles = <String>[
    'Monetize idle CPU and GPU power',
    'Seamless integration with the 50GRAMx network',
    'Easy setup and management',
  ];

  final valuePropSectionConfig = ValuePropSectionConfig(
    title: 'Why Choose 50GRAMx Ethos Nodes?',
    icons: icons,
    titles: titles,
  );

  return valuePropSectionConfig;
}

buildSocialProofSectionConfig() {
  final socialProofSectionConfig = SocialProofSectionConfig(
    title: 'Join Thousands of Satisfied Users',
    testimonials: [
      Testimonial(
        name: 'John Doe',
        message:
            '50GRAMx Ethos Nodes allowed me to make the most of my idle computer time. The earnings are a great bonus!',
        imagePath: 'assets/images/user1.jpg',
      ),
      Testimonial(
        name: 'Jane Smith',
        message:
            'Amazing experience! Easy to set up and I’m already seeing earnings come in. Highly recommended!',
        imagePath: 'assets/images/user2.jpg',
      ),
      Testimonial(
        name: 'Alice Johnson',
        message:
            'The integration with the network was seamless, and I love the extra income. Couldn’t be happier!',
        imagePath: 'assets/images/user3.jpg',
      ),
    ],
    statistics: [
      StatisticItem(value: '5000+', description: 'Active Users'),
      StatisticItem(value: '\$100,000+', description: 'Earnings Distributed'),
      StatisticItem(value: '24/7', description: 'Support'),
    ],
  );
  return socialProofSectionConfig;
}

List<PricingPlan> examplePricingPlans = [
  PricingPlan(
    title: 'Host Plan',
    description:
        'Start hosting your resources and earn Ethos Coin with no cost.',
    price: 'Free',
    onSelect: () {
      // Handle plan selection
      print('Basic Plan selected');
    },
  ),
  PricingPlan(
    title: 'Star Node',
    description:
        "Enhance your node's performance and handle private workloads.",
    price: '₹649 per node',
    onSelect: () {
      // Handle plan selection
      print('Standard Plan selected');
    },
  ),
];

buildPricingSectionConfig() {
  return PricingSectionConfig(
    headline: 'Affordable and Flexible Plans',
    pricingPlans: examplePricingPlans,
    variant: 'default', // Can be adjusted based on requirements
  );
}

buildHighlightsSectionConfig() {
  return HighlightsSectionConfig(
    headline: 'Key Features at a Glance',
    featurePoints: [
      'Real-time earnings tracking',
      'Robust security features',
      '24/7 support',
    ],
    variant: 'default', // Can be adjusted based on requirements
  );
}

buildHeroSectionConfig() {
  return HeroSectionConfig(
    title: 'Transform Your Spare Computing Power into Income',
    subtitle:
        'Join a distributed network and start earning by running a slice of the 50GRAMx',
    backgroundImage: 'https://example.com/background-image.jpg',
    buttonText: 'Start Earning – Download Now',
    variant: 'desktop-download-cta',
    buttonAction: () async {},
    downloadFileName: "50GRAMx-eNodes",
    linuxDownloadUrl:
        "https://storage.googleapis.com/packges/com.50gramx.seventy.zero.ethos.nodes.dev/50GRAMx-eNodes.tar.gz",
    macDownloadUrl:
        "https://storage.googleapis.com/packges/com.50gramx.seventy.zero.ethos.nodes.dev/50GRAMx-eNodes.dmg",
    windowsDownloadUrl:
        "https://storage.googleapis.com/packges/com.50gramx.seventy.zero.ethos.nodes.dev/50GRAMx-eNodes.exe",
  );
}

buildGetStartedSection() {
  return GetStartedSectionConfig(
    headline: 'Ready to Get Started?',
    steps: [
      'Download the 50GRAMx eNodes Desktop App',
      'Install and set up',
      'Start earning and contributing',
    ],
    downloadUrl:
        'https://example.com/download', // Replace with actual download URL
    variant: 'default', // Can be adjusted based on requirements
  );
}

buildExperienceSectionConfig() {
  return ExperienceSectionConfig(
    headline: 'Experience the Power of Distributed Computing',
    content:
        'Discover how distributed computing can transform your operations, offering unparalleled power, flexibility, and efficiency. Our platform leverages a global network of nodes to provide exceptional performance and reliability.',
    visualUrls: [
      'https://example.com/image1.jpg', // Replace with actual image or video URLs
      'https://example.com/image2.jpg',
    ],
    variant: 'default', // Can be adjusted based on requirements
  );
}

buildBenefitSectionConfig() {
  return BenefitSectionConfig(
    headline: 'The Benefits of Joining 50GRAMx',
    benefitPoints: [
      'Earn from unused resources',
      'Contribute to a global network',
      'Easy-to-use interface',
    ],
    variant: 'default', // Can be adjusted based on requirements
  );
}

class Things50DC500000000OverviewPageConfig extends OverviewPageConfig {
  Things50DC500000000OverviewPageConfig()
      : super(
          heroSectionConfig: buildHeroSectionConfig(),
          valuePropSectionConfig: buildValuePropSectionConfig(),
          socialProofSectionConfig: buildSocialProofSectionConfig(),
          pricingSectionConfig: buildPricingSectionConfig(),
          benefitSectionConfig: buildBenefitSectionConfig(),
          getStartedSectionConfig: buildGetStartedSection(),
          highlightsSectionConfig: buildHighlightsSectionConfig(),
          experienceSectionConfig: buildExperienceSectionConfig(),
        );

  // Additional methods or properties specific to this hero section can be added here
}
