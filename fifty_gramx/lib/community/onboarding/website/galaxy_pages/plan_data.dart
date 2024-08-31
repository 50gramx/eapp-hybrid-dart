class PlanData {
  final String name;
  final List<Map<String, String>> features;

  PlanData({required this.name, required this.features});
}

class PlanComparisonData {
  static List<PlanData> getPlans() {
    return [
      PlanData(
        name: 'Personal',
        features: [
          {'feature': 'Access Ethosverse Browser', 'value': '✓'},
          {'feature': 'Access Knowledge Domains', 'value': '✓'},
          {'feature': 'Access Service Domains', 'value': '✓'},
          {'feature': 'Access Product Domains', 'value': '✓'},
          {'feature': 'Access Things Domains', 'value': '✓'},
          {'feature': 'Pooled Star Nodes', 'value': '✓'},
          {'feature': 'Dedicated Star Nodes', 'value': ''},
          {'feature': 'Account Invitations', 'value': '3'},
          {'feature': 'Associate Invitations', 'value': ''},
          {'feature': 'Team Invitations', 'value': ''},
          {'feature': 'Access Domain Coins', 'value': '✓'},
          {'feature': 'Access Domain Cards', 'value': ''},
          {'feature': 'Access Practice Pass', 'value': ''},
          {'feature': 'Dedicated Practice Pass', 'value': ''},
        ],
      ),
      PlanData(
        name: 'Professional',
        features: [
          {'feature': 'Access Ethosverse Browser', 'value': '✓'},
          {'feature': 'Access Knowledge Domains', 'value': '✓'},
          {'feature': 'Access Service Domains', 'value': '✓'},
          {'feature': 'Access Product Domains', 'value': '✓'},
          {'feature': 'Access Things Domains', 'value': '✓'},
          {'feature': 'Pooled Star Nodes', 'value': ''},
          {'feature': 'Dedicated Star Nodes', 'value': '✓'},
          {'feature': 'Account Invitations', 'value': '50'},
          {'feature': 'Associate Invitations', 'value': ''},
          {'feature': 'Team Invitations', 'value': ''},
          {'feature': 'Access Domain Coins', 'value': '✓'},
          {'feature': 'Access Domain Cards', 'value': '✓'},
          {'feature': 'Access Practice Pass', 'value': ''},
          {'feature': 'Dedicated Practice Pass', 'value': ''},
        ],
      ),
      PlanData(
        name: 'Organisation',
        features: [
          {'feature': 'Access Ethosverse Browser', 'value': '✓'},
          {'feature': 'Access Knowledge Domains', 'value': '✓'},
          {'feature': 'Access Service Domains', 'value': '✓'},
          {'feature': 'Access Product Domains', 'value': '✓'},
          {'feature': 'Access Things Domains', 'value': '✓'},
          {'feature': 'Pooled Star Nodes', 'value': ''},
          {'feature': 'Dedicated Star Nodes', 'value': '✓'},
          {'feature': 'Account Invitations', 'value': ''},
          {'feature': 'Associate Invitations', 'value': '250'},
          {'feature': 'Team Invitations', 'value': '50'},
          {'feature': 'Access Domain Coins', 'value': '✓'},
          {'feature': 'Access Domain Cards', 'value': '✓'},
          {'feature': 'Access Practice Pass', 'value': '✓'},
          {'feature': 'Dedicated Practice Pass', 'value': '✓'},
        ],
      ),
    ];
  }
}
