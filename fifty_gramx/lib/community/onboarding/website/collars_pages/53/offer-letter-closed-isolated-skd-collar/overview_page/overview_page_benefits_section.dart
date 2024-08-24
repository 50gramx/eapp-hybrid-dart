import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildOfferLetterCISKDCOverviewPageBenefitsSection(BuildContext context) {
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
        color: Colors.grey[200], // Adjust the background color as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Key Benefits',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            _buildBenefitItem(
              'Retrieve Information',
              'Upload offer letters and retrieve precise information from them through chat interaction with Vinayak.',
              Icons.search,
            ),
            SizedBox(height: 20),
            _buildBenefitItem(
              '24/7 Chat with Vinayak',
              'Engage in conversations with Vinayak 24/7 to negotiate terms and conditions more effectively.',
              Icons.chat,
            ),
            SizedBox(height: 20),
            _buildBenefitItem(
              'Organized Storage',
              'Store all your offer letters in a single system, ensuring easy access, organization, and backup.',
              Icons.folder,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildBenefitItem(String title, String description, IconData icon) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Icon(
        icon,
        size: 30,
        color: Colors.blue,
      ),
      SizedBox(width: 10),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    ],
  );
}
