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
                'Licence Now',
                [
                  'Pooled Processing Network',
                  'Access Ethosverse Browser',
                  'Invite Upto 3 Accounts',
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
                  'Private Processing Network',
                  'Dedicated Star Nodes',
                  'Access Regional Nodes',
                  'Invite Upto 50 Accounts',
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
                  'Private Processing Network',
                  'Invite Upto 50 Associates',
                  'Invite Upto 10 Teams',
                  'Dedicated GRAMx Passes',
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
                  (feature) => ListTile(
                    leading: NeumorphicCheckbox(
                      value: false, // Set checkbox value as needed
                      onChanged: (value) {
                        // Handle checkbox state change if needed
                      },
                      isEnabled: false,
                      style: NeumorphicCheckboxStyle(
                        lightSource: NeumorphicTheme.isUsingDark(context)
                            ? LightSource.bottomRight
                            : LightSource.topLeft,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(24)),
                        selectedColor: AppColors.contentPrimary(context),
                        border: NeumorphicBorder(
                          isEnabled: true,
                          color: AppColors.backgroundPrimary(context),
                          width: 2,
                        ),
                      ),
                    ),
                    title: Text(
                      feature,
                      style: TextStyle(
                        color: AppColors.contentPrimary(context),
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                        height: 1.14285714,
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    ),
  );
}
