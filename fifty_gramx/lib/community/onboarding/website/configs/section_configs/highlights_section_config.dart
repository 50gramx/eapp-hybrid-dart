import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// Configuration class for the Highlights section
class HighlightsSectionConfig {
  final String headline;
  final List<String> featurePoints;
  final String variant;

  HighlightsSectionConfig({
    required this.headline,
    required this.featurePoints,
    this.variant = 'default', // Default variant
  });

  // Method to build the Highlights section widget
  Widget buildHighlightsSection(BuildContext context) {
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
                color: AppColors.contentPrimary(context),
              ),
            ),
            SizedBox(height: 20),
            // Features list with icons or images
            _buildFeatureList(context),
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

  // Helper method to build the list of features
  Widget _buildFeatureList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: featurePoints
          .map((point) => _buildFeaturePoint(context, point))
          .toList(),
    );
  }

  // Helper method to build individual feature point
  Widget _buildFeaturePoint(BuildContext context, String point) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 4,
        color: AppColors.backgroundPrimary(context),
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(Icons.star,
                color: AppColors.contentPrimary(
                    context)), // Replace with appropriate icon
            SizedBox(width: 10),
            Expanded(
              child: Text(
                point,
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.contentSecondary(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
