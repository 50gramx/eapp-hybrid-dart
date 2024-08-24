import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildOfferLetterCISKDCOverviewPageHighlightsSection(
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
        color: Colors.grey[200], // Adjust the background color as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Key Highlights',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildFeatureItem(
                  icon: Icons.dashboard,
                  title: 'Streamlined Process',
                  description:
                      'Effortlessly manage your contracts and streamline your workflow.',
                ),
                _buildFeatureItem(
                  icon: Icons.security,
                  title: 'Secure & Reliable',
                  description:
                      'Ensure the security and reliability of your contract data.',
                ),
                _buildFeatureItem(
                  icon: Icons.timeline,
                  title: 'Real-time Updates',
                  description:
                      'Receive real-time updates and notifications for your contracts.',
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildFeatureItem(
    {required IconData icon,
    required String title,
    required String description}) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(icon, size: 48, color: Colors.blue),
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ],
      ),
    ),
  );
}
