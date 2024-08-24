import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildOfferLetterCISKDCOverviewPagePricingSection(BuildContext context) {
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
        color: Colors.blueGrey[100], // Adjust the background color as needed
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Choose Your Plan',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildPlanCard(
                  'Basic Plan',
                  'INR 29/month',
                  'Access to basic features',
                ),
                SizedBox(width: 20),
                _buildPlanCard(
                  'Pro Plan',
                  'INR 199/month',
                  'Access to premium features',
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildPlanCard(String title, String price, String description) {
  return Card(
    elevation: 2,
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Padding(
      padding: EdgeInsets.all(16),
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
          SizedBox(height: 10),
          Text(
            price,
            style: TextStyle(
              fontSize: 16,
              color: Colors.green,
            ),
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Implement action when plan is selected
            },
            child: Text('Select Plan'),
          ),
        ],
      ),
    ),
  );
}
