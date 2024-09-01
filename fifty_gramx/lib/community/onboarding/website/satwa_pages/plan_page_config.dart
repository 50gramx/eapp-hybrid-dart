import 'package:fifty_gramx/community/onboarding/website/plan_page_config.dart';

class SatwaPlanPageConfig extends PlanPageConfig {
  SatwaPlanPageConfig()
      : super(
          title: 'Find Your Perfect Staffing Solution',
          plans: _getPlanData(),
          comparisonFeatures: _getComparisonFeatures(),
        );

  // Method to provide plan data
  static List<PlanData> _getPlanData() {
    return [
      PlanData(
        name: 'Plus One',
        description:
            'Perfect for Small Teams - Efficiently Hire a Remote Consultant',
        price: '₹12,999',
        buttonName: 'Get Started',
        features: [
          {
            'feature': 'Lead Generation & Acquisition',
            'value': '1 position with 5 high-quality leads included'
          },
          {
            'feature': 'Additional Leads',
            'value': '6 extra leads at a low cost of ₹999'
          },
          {
            'feature': 'Diverse Sourcing Channels',
            'value':
                'Reach talent through Referral, LinkedIn, Email, and SATWA Talent Pool'
          },
          {
            'feature': 'Thorough Lead Screening',
            'value':
                'In-depth qualification: Cultural fit, Commitment, Budget suitability'
          },
          {
            'feature': 'Identity Verification Option',
            'value': 'Secure identity checks for an additional ₹899'
          },
          {
            'feature': 'Interview Scheduling',
            'value': '1 interview included; Additional interviews at ₹199 each'
          },
          {
            'feature': 'Expert Interview & Selection',
            'value': 'Professional review at ₹1,999 per interviewer'
          },
          {
            'feature': 'Regional Coverage',
            'value': 'Focused on APAC Remote-In regions'
          },
          {
            'feature': 'Flexible Employment Types',
            'value': 'Contractual consultants to fit your needs'
          },
          {
            'feature': 'Remote Work Option',
            'value': '100% remote staffing for flexibility'
          },
        ],
      ),
      PlanData(
        name: 'Plus Plus',
        description: 'Scale Your Team - Efficiently Hire 3+ Remote Consultants',
        price: '₹39,999',
        buttonName: 'Scale Now',
        features: [
          {
            'feature': 'Lead Generation & Acquisition',
            'value': '3 positions with 50 premium leads included'
          },
          {
            'feature': 'Bulk Lead Discount',
            'value': '50 additional leads for ₹12,999'
          },
          {
            'feature': 'Comprehensive Sourcing Channels',
            'value':
                'Broad reach: Referral, LinkedIn, Email, and SATWA Talent Pool'
          },
          {
            'feature': 'Detailed Lead Screening',
            'value':
                'Extensive vetting: Cultural fit, Commitment, Budget alignment'
          },
          {
            'feature': 'Enhanced Identity Verification',
            'value': 'Secure checks for ₹899'
          },
          {
            'feature': 'Interview Scheduling',
            'value': '1 interview included; Additional interviews at ₹199 each'
          },
          {
            'feature': 'Thorough Interview & Selection',
            'value': 'In-depth evaluation at ₹1,999 per interviewer'
          },
          {
            'feature': 'Regional Coverage',
            'value': 'Covering APAC Remote-In regions'
          },
          {
            'feature': 'Flexible Employment Types',
            'value': 'Contractual consultants with flexibility'
          },
          {
            'feature': 'Remote Work Option',
            'value': 'Remote staffing solutions'
          },
        ],
      ),
      PlanData(
        name: 'Team Plus',
        description:
            'Comprehensive Staffing for Large Teams - Regional FTEs and TVCs',
        price: 'Custom Plan',
        buttonName: 'Contact Sales',
        features: [
          {
            'feature': 'Lead Generation & Acquisition',
            'value': '12 positions with 120 high-quality leads included'
          },
          {
            'feature': 'Custom Lead Pricing',
            'value': 'Tailored pricing for extra positions and leads'
          },
          {
            'feature': 'Expanded Sourcing Channels',
            'value':
                'Reach talent through Referral, LinkedIn, Email, SATWA Talent Pool, Naukri, and Monster'
          },
          {
            'feature': 'Extensive Lead Screening',
            'value':
                'Comprehensive qualification: Cultural fit, Commitment, Budget alignment'
          },
          {
            'feature': 'Advanced Identity Verification',
            'value': 'Thorough checks for ₹899'
          },
          {
            'feature': 'Interview Scheduling',
            'value': '3 interviews included; Additional interviews at ₹699 each'
          },
          {
            'feature': 'In-Depth Interview & Selection',
            'value':
                'Rigorous process at ₹3,999 per interviewer with pre-interview assignments'
          },
          {
            'feature': 'Global Coverage',
            'value': 'North Americas & APAC On-Site and Remote regions'
          },
          {
            'feature': 'Versatile Employment Types',
            'value': 'Consultants, FTEs, and various employment types'
          },
          {
            'feature': 'Flexible Work Options',
            'value': 'On-Site and Remote opportunities'
          },
          {
            'feature': 'Top Talent Pool Access',
            'value': 'Exclusive access to SATWA\'s top 10% talent pool'
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
