import 'package:fifty_gramx/community/onboarding/website/configs/plan_page_config.dart';

class Things50DC500000000PlanPageConfig extends PlanPageConfig {
  Things50DC500000000PlanPageConfig()
      : super(
          title: 'Choose Your Ethos Nodes Plans',
          plans: _getPlanData(),
          comparisonFeatures: _getComparisonFeatures(),
        );

  // Method to provide plan data
  static List<PlanData> _getPlanData() {
    return [
      PlanData(
        name: 'Host Node',
        description:
            'Start hosting your resources and earn Ethos Coin with no cost.',
        price: 'Free',
        buttonName: 'Get Started',
        features: [
          {
            'feature': 'Resource Hosting',
            'value': 'Host your CPU and GPU resources.'
          },
          {
            'feature': 'Earnings',
            'value': 'Earn Ethos Coin based on resource utilization.'
          },
          {
            'feature': 'Node Management',
            'value': 'Add as many nodes as you want.'
          },
          {
            'feature': 'Basic Support',
            'value': 'Standard support for managing nodes.'
          },
        ],
      ),
      PlanData(
        name: 'Star Node',
        description:
            'Enhance your node’s performance and handle private workloads.',
        price: '₹649 per node',
        buttonName: 'Upgrade Now',
        features: [
          {
            'feature': 'Resource Hosting',
            'value': 'Host your CPU and GPU resources.'
          },
          {
            'feature': 'Earnings',
            'value': 'Earn Ethos Coin based on resource utilization.'
          },
          {
            'feature': 'Node Management',
            'value': 'Add as many nodes as you want.'
          },
          {
            'feature': 'Basic Support',
            'value': 'Standard support for managing nodes.'
          },
          {
            'feature': 'Enhanced Performance',
            'value': 'Optimized for secure and fast load handling.'
          },
          {
            'feature': 'Private Workloads',
            'value': 'Support for private and sensitive workloads.'
          },
          {
            'feature': 'Advanced Node Management',
            'value': 'Tools for better control and optimization.'
          },
          {
            'feature': 'Priority Support',
            'value': 'Enhanced support with faster response times.'
          },
        ],
      ),
    ];
  }

  // Method to provide comparison features data
  static List<ComparisonFeature> _getComparisonFeatures() {
    // Collect all unique feature names from the plans
    final Set<String> featureSet = {};
    for (var plan in _getPlanData()) {
      for (var feature in plan.features) {
        featureSet.add(feature['feature']!);
      }
    }

    // Convert the set to a list of ComparisonFeature
    return featureSet
        .map((feature) => ComparisonFeature(feature: feature))
        .toList();
  }
}
