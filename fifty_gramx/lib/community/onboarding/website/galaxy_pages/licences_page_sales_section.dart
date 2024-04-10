import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildGalaxyLicencesPageSalesSection(BuildContext context) {
  return Visibility(
    visible: false,
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Title
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Recognize your Organization and License Associates',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          // Feature List and Contact Sales Button
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Feature List
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFeatureListItem('Publish open domains', true),
                      _buildFeatureListItem(
                          'Practice Experts Consultation', true),
                      _buildFeatureListItem('Community Advisors Reviews', true),
                    ],
                  ),
                ),
                // Contact Sales Button
                NeumorphicButton(
                  onPressed: () {
                    // Add your action here
                  },
                  style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    depth: 5,
                    intensity: 0.7,
                    color: AppColors.contentPrimary(context),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Contact Sales',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildFeatureListItem(String featureName, bool isChecked) {
  return Row(
    children: [
      Icon(
        isChecked ? Icons.check : Icons.close,
        color: isChecked ? Colors.green : Colors.red,
      ),
      SizedBox(width: 8),
      Text(featureName),
    ],
  );
}
