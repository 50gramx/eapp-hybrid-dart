import 'package:fifty_gramx/community/onboarding/website/configs/plan_page_config.dart';

class PodeageLLAMA7BPlanPageConfig extends PlanPageConfig {
  PodeageLLAMA7BPlanPageConfig()
      : super(
          title: 'Unlock the Power of LLAMA-7B',
          plans: _getPlanData(),
          comparisonFeatures: _getComparisonFeatures(),
        );

  // Method to provide plan data
  static List<PlanData> _getPlanData() {
    return [
      PlanData(
        name: 'Basic',
        description:
            'Explore AI capabilities with limited speed and rate limits.',
        price: '₹6 / 50K tokens',
        buttonName: 'Get Started',
        features: [
          {
            'feature': 'Input Token price (Per 50 Thousand Tokens)',
            'value': '₹5'
          },
          {
            'feature': 'Output Token price (Per 50 Thousand Tokens)',
            'value': '₹7'
          },
          {'feature': 'Current Speed (Upto Tokens per Second)', 'value': '150'},
          {'feature': 'Rate Limits', 'value': 'Capped API requests per minute'},
          {
            'feature': 'Access',
            'value': 'Powerful AI inferences on Ethos Open Galaxy LLAMA-7B Pods'
          },
          {'feature': 'On-Demand Access', 'value': 'Yes'},
          {'feature': 'OpenAI Endpoint Compatibility', 'value': 'Yes'},
        ],
      ),
      PlanData(
        name: 'Pro',
        description:
            'Higher speeds, increased rate limits, and private access for professionals.',
        price: '₹13 / 50K tokens',
        buttonName: 'Upgrade Now',
        features: [
          {
            'feature': 'Input Token price (Per 50 Thousand Tokens)',
            'value': '₹11'
          },
          {
            'feature': 'Output Token price (Per 50 Thousand Tokens)',
            'value': '₹15'
          },
          {
            'feature': 'Current Speed (Upto Tokens per Second)',
            'value': '1250'
          },
          {
            'feature': 'Fastest Inference',
            'value':
                'Enjoy Fastest AI Inferences on Ethos OG/PG LLAMA-7B HA Pods'
          },
          {'feature': 'Rate Limits', 'value': 'Higher API request limits'},
          {
            'feature': 'Access',
            'value':
                'Powerful AI inferences on Ethos Open Galaxy LLAMA-7B HA Pods'
          },
          {
            'feature': 'Private Access',
            'value':
                'Private AI inferences on Ethos Private Galaxies LLAMA-7B Pods'
          },
          {'feature': 'On-Demand Access', 'value': 'Yes'},
          {'feature': 'OpenAI Endpoint Compatibility', 'value': 'Yes'},
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
