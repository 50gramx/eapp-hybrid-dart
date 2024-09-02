import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// Configuration class for the Get Started section
class GetStartedSectionConfig {
  final String headline;
  final List<String> steps;
  final String downloadUrl;
  final String variant;

  GetStartedSectionConfig({
    required this.headline,
    required this.steps,
    required this.downloadUrl,
    this.variant = 'default', // Default variant
  });

  // Method to build the Get Started section widget
  Widget buildGetStartedSection(BuildContext context) {
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
            // Steps list
            _buildStepsList(context),
            SizedBox(height: 20),
            // CTA Button
            NeumorphicButton(
              onPressed: () {
                _initiateDownload();
              },
              style: NeumorphicStyle(
                color: AppColors.contentPrimary(context),
                shape: NeumorphicShape.flat,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Download Now',
                style: TextStyle(
                  color: AppColors.contentInversePrimary(context),
                  fontSize: 16.0,
                ),
              ),
            ),
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

  // Helper method to build the list of steps
  Widget _buildStepsList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: steps.map((step) => _buildStepItem(context, step)).toList(),
    );
  }

  // Helper method to build individual step item
  Widget _buildStepItem(BuildContext context, String step) {
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
            Icon(Icons.check_circle, color: AppColors.contentPrimary(context)),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                step,
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

  // Method to initiate the download
  void _initiateDownload() {
    // Implement the logic to initiate download
    // This might involve launching a URL or triggering a download in the app
    print('Initiating download from $downloadUrl');
    // Example:
    // launch(downloadUrl);
  }
}
