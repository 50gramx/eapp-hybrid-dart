import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildOfferLetterCISKDCOverviewPageSocialProofSection(
    BuildContext context) {
  return Neumorphic(
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
        disableDepth: true),
    child: Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        color: Colors.white, // Adjust the background color as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'What Our Customers Say',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // Add testimonial cards or reviews here
            _buildTestimonialCard(
              'John Doe',
              'Vinayak helped me negotiate better terms in my job offer. Highly recommended!',
            ),
            _buildTestimonialCard(
              'Jane Smith',
              'The chat feature with Vinayak is a game-changer. It saved me a lot of time and effort.',
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildTestimonialCard(String name, String testimonial) {
  return Card(
    elevation: 2,
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '"$testimonial"',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Text(
            '- $name',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ],
      ),
    ),
  );
}
