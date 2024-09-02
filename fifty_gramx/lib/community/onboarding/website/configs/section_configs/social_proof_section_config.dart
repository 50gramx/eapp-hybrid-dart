import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// Configuration class for the social proof section
class SocialProofSectionConfig {
  final String title;
  final List<Testimonial> testimonials;
  final List<StatisticItem> statistics;
  final String variant;

  SocialProofSectionConfig({
    required this.title,
    required this.testimonials,
    required this.statistics,
    this.variant = 'default', // Default variant
  });

  // Method to build the social proof section widget
  Widget buildSocialProofSection(BuildContext context) {
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
              title,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: AppColors.contentPrimary(context),
              ),
            ),
            SizedBox(height: 20),
            // Testimonials carousel or list
            Container(
              height: 300, // Adjust height based on your design
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: testimonials
                    .map((testimonial) =>
                        _buildTestimonialCard(context, testimonial))
                    .toList(),
              ),
            ),
            SizedBox(height: 20),
            // Statistics section
            Wrap(
              spacing: 20.0,
              runSpacing: 20.0,
              children: statistics
                  .map((statistic) => _buildStatisticItem(context, statistic))
                  .toList(),
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

  Widget _buildTestimonialCard(BuildContext context, Testimonial testimonial) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 4,
        color: AppColors.backgroundPrimary(context),
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
      ),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Container(
        width: 250, // Adjust width based on your design
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(testimonial.imagePath),
            ),
            SizedBox(height: 10),
            Text(
              '"${testimonial.message}"',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.contentSecondary(context),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              '- ${testimonial.name}',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: AppColors.contentSecondary(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatisticItem(BuildContext context, StatisticItem statistic) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 0, // Flat appearance
        color: AppColors.backgroundPrimary(context),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            statistic.value,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.contentPrimary(context),
            ),
          ),
          SizedBox(height: 5),
          Text(
            statistic.description,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.contentSecondary(context),
            ),
          ),
        ],
      ),
    );
  }
}

// Testimonial class to store individual testimonial data
class Testimonial {
  final String name;
  final String message;
  final String imagePath;

  Testimonial({
    required this.name,
    required this.message,
    required this.imagePath,
  });
}

// StatisticItem class to store individual statistic data
class StatisticItem {
  final String value;
  final String description;

  StatisticItem({
    required this.value,
    required this.description,
  });
}
