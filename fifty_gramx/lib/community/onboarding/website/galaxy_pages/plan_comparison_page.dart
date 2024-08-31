import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Container/NeuContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'plan_data.dart'; // Import the PlanData class

class PlanComparisonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;
    final plans = PlanComparisonData.getPlans();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
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
        isMobile
            ? _buildMobileFeatureSelector(plans, context)
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
                        ...plans
                            .map((plan) => buildTableCell(plan.name, context))
                            .toList(),
                      ],
                    ),
                    // Table Rows (Features)
                    ..._buildFeatureRows(plans, context),
                  ],
                ),
              ),
      ],
    );
  }

  Widget _buildMobileFeatureSelector(
      List<PlanData> plans, BuildContext context) {
    final ValueNotifier<String> selectedPlan = ValueNotifier(plans.first.name);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Plan Selector
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ValueListenableBuilder<String>(
            valueListenable: selectedPlan,
            builder: (context, planName, child) {
              return DropdownButton<String>(
                value: planName,
                items: plans.map((plan) {
                  return DropdownMenuItem<String>(
                    value: plan.name,
                    child: Text(plan.name,
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
          builder: (context, planName, child) {
            final selectedPlanData =
                plans.firstWhere((plan) => plan.name == planName);
            return NeuContainer(
              containerChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (var detail in selectedPlanData.features)
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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

  List<TableRow> _buildFeatureRows(List<PlanData> plans, BuildContext context) {
    final features =
        plans.first.features.map((f) => f['feature']!).toSet().toList();
    return features.map((feature) {
      return TableRow(
        children: [
          buildTableCell(feature, context, header: true),
          ...plans.map((plan) {
            final value = plan.features
                .firstWhere((f) => f['feature'] == feature)['value']!;
            return buildTableCell(value, context);
          }).toList(),
        ],
      );
    }).toList();
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
}
