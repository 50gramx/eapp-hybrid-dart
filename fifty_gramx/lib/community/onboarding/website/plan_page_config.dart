import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Container/NeuContainer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PlanData {
  final String name;
  final String description;
  final String price;
  final String buttonName;
  final List<Map<String, String>> features;

  PlanData({
    required this.name,
    required this.description,
    required this.price,
    required this.buttonName,
    required this.features,
  });
}

class ComparisonFeature {
  final String feature;

  ComparisonFeature({
    required this.feature,
  });
}

class PlanPageConfig {
  final String title;
  final List<PlanData> plans;
  final List<ComparisonFeature> comparisonFeatures;

  PlanPageConfig({
    required this.title,
    required this.plans,
    this.comparisonFeatures = const [],
  });

  // Method to build the plan section widget
  Widget buildPlansSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Adjust based on the screen size or layout requirements
        MediaQuery.of(context).size.width < 600
            ? Column(
                children: plans
                    .map((plan) => _buildPricingCard(
                          plan.name,
                          plan.description,
                          plan.price,
                          plan.buttonName,
                          plan.features,
                          context,
                        ))
                    .toList(),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: plans
                    .map((plan) => Expanded(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: _buildPricingCard(
                              plan.name,
                              plan.description,
                              plan.price,
                              plan.buttonName,
                              plan.features,
                              context,
                            ),
                          ),
                        ))
                    .toList(),
              ),
      ],
    );
  }

  Widget buildComparisonSection(BuildContext context) {
    final bool isMobile = MediaQuery.of(context).size.width < 600;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 64),
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
              height: 1.14285714,
            ),
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(height: 32),
        isMobile
            ? _buildMobileFeatureSelector(plans, context)
            : NeuContainer(
                containerChild: Table(
                  border: TableBorder.symmetric(
                    inside: BorderSide(
                      color: AppColors.backgroundTertiary(context),
                    ),
                  ),
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

  List<TableRow> _buildFeatureRows(List<PlanData> plans, BuildContext context) {
    final features = comparisonFeatures.map((f) => f.feature).toList();
    return features.map((feature) {
      return TableRow(
        children: [
          buildTableCell(feature, context, header: true),
          ...plans.map((plan) {
            final featureMap = plan.features.firstWhere(
                (f) => f['feature'] == feature,
                orElse: () => {'value': 'N/A'});
            final value = featureMap['value'] ?? 'N/A';
            return buildTableCell(value, context);
          }).toList(),
        ],
      );
    }).toList();
  }

  Widget _buildMobileFeatureSelector(
      List<PlanData> plans, BuildContext context) {
    final ValueNotifier<String> selectedFeature =
        ValueNotifier(comparisonFeatures.first.feature);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Feature Selector
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ValueListenableBuilder<String>(
            valueListenable: selectedFeature,
            builder: (context, featureName, child) {
              return DropdownButton<String>(
                value: featureName,
                items: comparisonFeatures.map((feature) {
                  return DropdownMenuItem<String>(
                    value: feature.feature,
                    child: Text(
                      feature.feature,
                      style: TextStyle(
                        color: AppColors.contentPrimary(context),
                        fontSize: 18,
                        fontFamily: "Montserrat",
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) {
                  selectedFeature.value = newValue!;
                },
                underline: Container(),
                isExpanded: true,
                icon: Icon(
                  Icons.arrow_drop_down,
                  color: AppColors.contentPrimary(context),
                ),
                style: TextStyle(
                  color: AppColors.contentPrimary(context),
                  fontSize: 18,
                  fontFamily: "Montserrat",
                ),
              );
            },
          ),
        ),
        SizedBox(height: 16),
        // Display Selected Feature Details
        ValueListenableBuilder<String>(
          valueListenable: selectedFeature,
          builder: (context, featureName, child) {
            return NeuContainer(
              containerChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: plans.map((plan) {
                  final featureMap = plan.features.firstWhere(
                      (f) => f['feature'] == featureName,
                      orElse: () => {'value': 'N/A'});
                  final value = featureMap['value'] ?? 'N/A';
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            plan.name,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Text(
                          value,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Montserrat",
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
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
      child: Text(
        text,
        textAlign: header ? TextAlign.start : TextAlign.center,
        style: TextStyle(
          color: AppColors.contentPrimary(context),
          fontSize: 18,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w600,
          height: 1.14285714,
        ),
      ),
    );
    return TableCell(
      child: header ? paddedChild : Center(child: paddedChild),
    );
  }

  Widget _buildPricingCard(
    String planName,
    String planDescription,
    String planPrice,
    String buttonName,
    List<Map<String, String>> features,
    BuildContext context,
  ) {
    return NeuContainer(
      containerChild: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 8),
            Text(
              planName,
              style: TextStyle(
                color: AppColors.contentPrimary(context),
                fontSize: 24,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
                height: 1.14285714,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 16),
            Text(
              planDescription,
              style: TextStyle(
                color: AppColors.contentPrimary(context),
                fontSize: 18,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w400,
                height: 1.14285714,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 16),
            Text(
              planPrice,
              style: TextStyle(
                color: AppColors.contentPrimary(context),
                fontSize: 48,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                height: 1.14285714,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 32),
            ActionNeuButton(
                buttonTitle: buttonName, buttonActionOnPressed: () {}),
            SizedBox(height: 16),
            Divider(
              height: 1,
              color: AppColors.backgroundTertiary(context),
            ),
            SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: features
                  .map(
                    (feature) => ListTile(
                      leading: NeumorphicCheckbox(
                        value: false,
                        onChanged: (value) {
                          // Handle checkbox state change if needed
                        },
                        isEnabled: false,
                        style: NeumorphicCheckboxStyle(
                          lightSource: NeumorphicTheme.isUsingDark(context)
                              ? LightSource.bottomRight
                              : LightSource.topLeft,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(24)),
                          selectedColor: AppColors.contentPrimary(context),
                          border: NeumorphicBorder(
                            isEnabled: true,
                            color: AppColors.backgroundPrimary(context),
                            width: 2,
                          ),
                        ),
                      ),
                      title: Text(
                        feature['feature'] ?? 'N/A', // Accessing feature name
                        style: TextStyle(
                          color: AppColors.contentPrimary(context),
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                          height: 1.14285714,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
