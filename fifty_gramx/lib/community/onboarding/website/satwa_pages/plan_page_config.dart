import 'package:fifty_gramx/community/onboarding/website/plan_page_config.dart';

class SatwaPlanPageConfig extends PlanPageConfig {
  SatwaPlanPageConfig()
      : super(
          title: 'Choose the Perfect Staffing Plan',
          plans: _getPlanData(),
          comparisonFeatures: _getComparisonFeatures(),
        );

  // Method to provide plan data
  static List<PlanData> _getPlanData() {
    return [
      PlanData(
        name: 'Plus One',
        description: 'Staff a Single Remote Consultant',
        price: '₹499',
        buttonName: 'Select Plan',
        features: [
          {'feature': 'Remote Consultant', 'value': '1'},
          {'feature': 'Support', 'value': 'Email'},
          {'feature': 'Customization', 'value': 'Basic'},
        ],
      ),
      PlanData(
        name: 'Plus Plus',
        description: 'Staff 3+ Remote Consultants',
        price: '₹1299/month',
        buttonName: 'Select Plan',
        features: [
          {'feature': 'Remote Consultant', 'value': '3+'},
          {'feature': 'Support', 'value': 'Phone & Email'},
          {'feature': 'Customization', 'value': 'Standard'},
        ],
      ),
      PlanData(
        name: 'Plus Team',
        description: 'Staff Regional FTEs/TVCs',
        price: 'Custom Pricing',
        buttonName: 'Select Plan',
        features: [
          {'feature': 'Remote Consultant', 'value': 'Custom'},
          {'feature': 'Support', 'value': 'Dedicated Manager'},
          {'feature': 'Customization', 'value': 'Full Customization'},
        ],
      ),
    ];
  }

  // Method to provide comparison features data
  static List<ComparisonFeature> _getComparisonFeatures() {
    return [
      ComparisonFeature(feature: 'Remote Consultant'),
      ComparisonFeature(feature: 'Support'),
      ComparisonFeature(feature: 'Customization'),
    ];
  }
}
