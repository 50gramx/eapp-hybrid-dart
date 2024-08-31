import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Container/NeuContainer.dart';
import 'package:fifty_gramx/community/onboarding/website/galaxy_pages/plan_comparison_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildGalaxyLicencesPageCompareSection(BuildContext context) {
  final bool isMobile = MediaQuery.of(context).size.width < 600;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      PlanComparisonPage(),
      SizedBox(
        height: 64,
      ),
      // Title
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          'Compare access across licences',
          style: TextStyle(
              color: AppColors.contentPrimary(context),
              fontSize: isMobile ? 24 : 32,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
              height: 1.14285714),
          textAlign: TextAlign.start,
        ),
      ),
      SizedBox(
        height: 32,
      ),
      // Feature Comparison
      isMobile
          ? _buildMobileFeatureSelector(context)
          : NeuContainer(
              containerChild: Table(
                border: TableBorder.symmetric(
                    inside: BorderSide(
                        color: AppColors.backgroundTertiary(context))),
                children: [
                  // Table Header
                  TableRow(
                    children: [
                      buildTableCell('', context),
                      buildTableCell('Personal', context),
                      buildTableCell('Professional', context),
                      buildTableCell('Organisation', context),
                    ],
                  ),

                  // Table Rows (Features)
                  buildFeatureRow(
                      'Access Ethosverse Browser', '✓', '✓', '✓', context),
                  buildFeatureRow(
                      'Access Knowledge Domains', '✓', '✓', '✓', context),
                  buildFeatureRow(
                      'Access Service Domains', '✓', '✓', '✓', context),
                  buildFeatureRow(
                      'Access Product Domains', '✓', '✓', '✓', context),
                  buildFeatureRow(
                      'Access Things Domains', '✓', '✓', '✓', context),
                  buildFeatureRow('Pooled Star Nodes', '✓', '', '', context),
                  buildFeatureRow(
                      'Dedicated Star Nodes', '', '✓', '✓', context),
                  buildFeatureRow(
                      'Account Invitations', '3', '50', '', context),
                  buildFeatureRow(
                      'Associate Invitations', '', '', '250', context),
                  buildFeatureRow('Team Invitations', '', '', '50', context),
                  buildFeatureRow(
                      'Access Domain Coins', '✓', '✓', '✓', context),
                  buildFeatureRow('Access Domain Cards', '', '✓', '✓', context),
                  buildFeatureRow('Access Practice Pass', '', '', '✓', context),
                  buildFeatureRow(
                      'Dedicated Practice Pass', '', '', '✓', context),
                ],
              ),
            ),
    ],
  );
}

Widget _buildMobileFeatureSelector(BuildContext context) {
  // State to manage selected plan
  final ValueNotifier<String> selectedPlan = ValueNotifier('Personal');

  final Map<String, List<Map<String, String>>> planDetails = {
    'Personal': [
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
    'Professional': [
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
    'Organisation': [
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
  };

  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      // Plan Selector
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ValueListenableBuilder<String>(
          valueListenable: selectedPlan,
          builder: (context, plan, child) {
            return DropdownButton<String>(
              value: plan,
              items: ['Personal', 'Professional', 'Organisation']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value,
                      style: TextStyle(
                          color: AppColors.contentPrimary(context),
                          fontSize: 18,
                          fontFamily: "Montserrat")),
                );
              }).toList(),
              onChanged: (newValue) {
                selectedPlan.value = newValue!;
              },
              underline: Container(),
              isExpanded: true,
              icon: Icon(Icons.arrow_drop_down,
                  color: AppColors.contentPrimary(context)),
              style: TextStyle(
                  color: AppColors.contentPrimary(context),
                  fontSize: 18,
                  fontFamily: "Montserrat"),
            );
          },
        ),
      ),
      SizedBox(height: 16),
      // Display Selected Plan Details
      ValueListenableBuilder<String>(
        valueListenable: selectedPlan,
        builder: (context, plan, child) {
          final details = planDetails[plan] ?? [];
          return NeuContainer(
            containerChild: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                for (var detail in details)
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        Expanded(
                            child: Text(detail['feature']!,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600))),
                        SizedBox(width: 16),
                        Text(detail['value']!,
                            style: TextStyle(
                                fontSize: 16, fontFamily: "Montserrat")),
                      ],
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    ],
  );
}

Widget buildTableCell(String text, BuildContext context,
    {bool header = false}) {
  Widget paddedChild = Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(text,
        textAlign: header ? TextAlign.start : TextAlign.center,
        style: TextStyle(
            color: AppColors.contentPrimary(context),
            fontSize: 18,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            height: 1.14285714)),
  );
  return TableCell(
    child: header ? paddedChild : Center(child: paddedChild),
  );
}

TableRow buildFeatureRow(String feature, String planA, String planB,
    String planC, BuildContext context) {
  return TableRow(
    children: [
      buildTableCell(feature, context, header: true),
      buildTableCell(planA, context),
      buildTableCell(planB, context),
      buildTableCell(planC, context),
    ],
  );
}
