import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// Configuration class for the Experience section
class ExperienceSectionConfig {
  final String headline;
  final String content;
  final List<String> visualUrls; // List of URLs for images or videos
  final String variant;

  ExperienceSectionConfig({
    required this.headline,
    required this.content,
    required this.visualUrls,
    this.variant = 'default', // Default variant
  });

  // Method to build the Experience section widget
  Widget buildExperienceSection(BuildContext context) {
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
            Text(
              content,
              style: TextStyle(
                fontSize: 16.0,
                color: AppColors.contentSecondary(context),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            // Visuals (images or videos)
            _buildVisuals(context),
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

  // Helper method to build the visuals (images or videos)
  Widget _buildVisuals(BuildContext context) {
    return Column(
      children:
          visualUrls.map((url) => _buildVisualItem(context, url)).toList(),
    );
  }

  // Helper method to build individual visual item
  Widget _buildVisualItem(BuildContext context, String url) {
    // Assuming the URL is an image for simplicity
    // For videos, you might need a different widget or package
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          url,
          fit: BoxFit.cover,
          width: double.infinity,
          height: 200, // Adjust as needed
        ),
      ),
    );
  }
}
