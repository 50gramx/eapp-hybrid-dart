import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/layout_breakpoint.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// Configuration class for the pricing section
class PricingSectionConfig {
  final String headline;
  final List<PricingPlan> pricingPlans;
  final String variant;

  PricingSectionConfig({
    required this.headline,
    required this.pricingPlans,
    this.variant = 'default', // Default variant
  });

  // Method to build the pricing section widget
  Widget buildPricingSection(BuildContext context) {
    Widget defaultVariant = Neumorphic(
      style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
        color: AppColors.backgroundPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
          width: 2,
        ),
        disableDepth: true,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              headline,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat', // Apply Montserrat font family
                color: AppColors.contentPrimary(context),
              ),
            ),
            SizedBox(height: 20),
            // Pricing table or infographic
            _buildPricingTable(context),
          ],
        ),
      ),
    );

    // Use default variant for now; can add more cases for different variants
    switch (variant) {
      case 'default':
      default:
        return defaultVariant;
    }
  }

  // Helper method to build the pricing table
  Widget _buildPricingTable(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isDesktop = LayoutBreakpoint().isNavigatingLeft(
            context); // Use LayoutBreakpoints to determine desktop view

        // Show only the first plan on mobile and first two plans on desktop
        int itemCount =
            isDesktop ? (pricingPlans.length > 2 ? 2 : pricingPlans.length) : 1;

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            itemCount,
            (index) => _buildPricingPlanCard(context, pricingPlans[index]),
          ),
        );
      },
    );
  }

  // Helper method to build individual pricing plan card
  Widget _buildPricingPlanCard(BuildContext context, PricingPlan plan) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 4,
        color: AppColors.backgroundPrimary(context),
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              plan.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat', // Apply Montserrat font family
                color: AppColors.contentPrimary(context),
              ),
            ),
            SizedBox(height: 10),
            Text(
              plan.description,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Montserrat', // Apply Montserrat font family
                color: AppColors.contentSecondary(context),
              ),
            ),
            SizedBox(height: 10),
            Text(
              plan.price,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat', // Apply Montserrat font family
                color: AppColors.contentPrimary(context),
              ),
            ),
            SizedBox(height: 20),
            NeumorphicButton(
              onPressed: plan.onSelect,
              style: NeumorphicStyle(
                color: AppColors.contentPrimary(context),
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Select Plan',
                style: TextStyle(
                  color: AppColors.contentInversePrimary(context),
                  fontSize: 16.0,
                  fontFamily: 'Montserrat', // Apply Montserrat font family
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// PricingPlan class to store individual pricing plan data
class PricingPlan {
  final String title;
  final String description;
  final String price;
  final VoidCallback onSelect;

  PricingPlan({
    required this.title,
    required this.description,
    required this.price,
    required this.onSelect,
  });
}
