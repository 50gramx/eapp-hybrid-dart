import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildThings50DC500000000COverviewPageSocialProofSection(
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
      disableDepth: true,
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Join Thousands of Satisfied Users',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.contentPrimary(context),
            ),
          ),
          SizedBox(height: 20),
          // Carousel or scrolling container for testimonials
          Container(
            height: 300, // Adjust height based on your design
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildTestimonialCard(
                  context,
                  'John Doe',
                  '50GRAMx Ethos Nodes allowed me to make the most of my idle computer time. The earnings are a great bonus!',
                  'assets/images/user1.jpg', // Add your asset paths
                ),
                _buildTestimonialCard(
                  context,
                  'Jane Smith',
                  'Amazing experience! Easy to set up and I’m already seeing earnings come in. Highly recommended!',
                  'assets/images/user2.jpg', // Add your asset paths
                ),
                _buildTestimonialCard(
                  context,
                  'Alice Johnson',
                  'The integration with the network was seamless, and I love the extra income. Couldn’t be happier!',
                  'assets/images/user3.jpg', // Add your asset paths
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // Statistics section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatisticItem(context, '5000+', 'Active Users'),
              _buildStatisticItem(
                  context, '\$100,000+', 'Earnings Distributed'),
              _buildStatisticItem(context, '24/7', 'Support'),
            ],
          ),
        ],
      ),
    ),
  );
}

Widget _buildTestimonialCard(
    BuildContext context, String name, String testimonial, String imagePath) {
  return Neumorphic(
    style: NeumorphicStyle(
      depth: 4,
      color: AppColors.backgroundPrimary(context),
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
    ),
    margin: EdgeInsets.symmetric(horizontal: 8),
    child: Container(
      width: 250, // Adjust width based on your design
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imagePath),
          ),
          SizedBox(height: 10),
          Text(
            '"$testimonial"',
            style: TextStyle(
              fontSize: 16,
              color: AppColors.contentSecondary(context),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            '- $name',
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

Widget _buildStatisticItem(
    BuildContext context, String value, String description) {
  return Column(
    children: [
      Text(
        value,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.contentPrimary(context),
        ),
      ),
      SizedBox(height: 5),
      Text(
        description,
        style: TextStyle(
          fontSize: 16,
          color: AppColors.contentSecondary(context),
        ),
      ),
    ],
  );
}
