import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildOfferLetterCISKDCOverviewPageExperienceSection(
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
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        color: Colors.white, // Adjust the background color as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'User Experience',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40),
            _buildExperienceItem(
              imageUrl:
                  'assets/images/testimonial1.jpg', // Replace with actual image path
              quote:
                  'Vinayak from Staffing Community helped me streamline my contract management process.',
              author: 'John Doe, HR Manager',
            ),
            SizedBox(height: 20),
            _buildExperienceItem(
              imageUrl:
                  'assets/images/testimonial2.jpg', // Replace with actual image path
              quote:
                  'I\'ve never experienced such a seamless contract negotiation process before Vinayak from Staffing Community.',
              author: 'Jane Smith, Job Seeker',
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildExperienceItem(
    {required String imageUrl, required String quote, required String author}) {
  return Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 20),
        Text(
          quote,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        SizedBox(height: 10),
        Text(
          '- $author',
          textAlign: TextAlign.right,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    ),
  );
}
