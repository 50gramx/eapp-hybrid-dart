import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Container/NeuContainer.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildGalaxyLicencesPagePlansSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      // Four Cards Row
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Plan 2
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: _buildPricingCard(
                'Personal',
                'For individuals just getting started with 50GRAMx Galaxies',
                '\₹1,999',
                'Start Free',
                [
                  'Invite Upto 3 Accounts',
                  'Feature 2',
                  'Feature 3',
                  'Feature 4',
                ],
                context,
              ),
            ),
          ),
          // Plan 3
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: _buildPricingCard(
                'Professional',
                'For dynamic individuals looking to boost productivity',
                '\₹29,999',
                'Licence Now',
                [
                  'Invite Upto 5 Accounts',
                  '1 Reserved Star Node',
                  'Reserve 1 Team Space',
                  'Feature 4',
                ],
                context,
              ),
            ),
          ),
          // Plan 4
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: _buildPricingCard(
                'Organisation',
                'For innovative companies looking to scale securely',
                '\₹149,999',
                'Contact Sales',
                [
                  'Invite Upto 10 Accounts',
                  '3 Reserved Accelerated Star Nodes',
                  'Reserve Upto 3 Teams',
                  'Feature 4',
                ],
                context,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _buildPricingCard(
  String planName,
  String planDescription,
  String planPrice,
  String buttonName,
  List<String> features,
  BuildContext context,
) {
  return NeuContainer(
    containerChild: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Plan Name
          SizedBox(height: 8),

          Text(
            planName,
            style: TextStyle(
                color: AppColors.contentPrimary(context),
                fontSize: 24,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
                height: 1.14285714),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 16),
          // Plan Price
          Text(
            planDescription,
            style: TextStyle(
                color: AppColors.contentPrimary(context),
                fontSize: 18,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w400,
                height: 1.14285714),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 16),
          // Plan Price
          Text(
            planPrice,
            style: TextStyle(
                color: AppColors.contentPrimary(context),
                fontSize: 48,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                height: 1.14285714),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 32),
          ActionNeuButton(
              buttonTitle: buttonName, buttonActionOnPressed: () {}),

          SizedBox(height: 16),
          // Line
          Divider(
            height: 1,
            color: AppColors.backgroundTertiary(context),
          ),
          SizedBox(height: 16),
          // Features List
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: features
                .map(
                  (feature) => Text(
                    feature,
                    style: TextStyle(
                        color: AppColors.contentPrimary(context),
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                        height: 1.14285714),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    ),
  );
}
