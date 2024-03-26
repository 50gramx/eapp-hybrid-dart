import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildGalaxyLicencesPagePlansSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      // Licences Title
      Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'Licences',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      // Four Cards Row
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Plan 1
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: _buildPricingCard(
                'Starter',
                '\₹0',
                [
                  'Feature 1',
                  'Feature 2',
                  'Feature 3',
                  'Feature 4',
                ],
                context,
              ),
            ),
          ),
          // Plan 2
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: _buildPricingCard(
                'Basic',
                '\₹0',
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
                'Standard',
                '\₹16,000',
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
                'Professional',
                '\₹99,999',
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
  String planPrice,
  List<String> features,
  BuildContext context,
) {
  return Card(
    elevation: 3,
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Plan Name
          Text(
            planName,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          // Plan Price
          Text(
            planPrice,
            style: TextStyle(
              fontSize: 16,
              color: Colors.green,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          // Plan Start Button
          ElevatedButton(
            onPressed: () {
              // Add onPressed logic
            },
            child: Text('Start Plan'),
          ),
          SizedBox(height: 20),
          // Line
          Divider(
            height: 1,
            color: Colors.grey,
          ),
          SizedBox(height: 20),
          // Features List
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: features
                .map(
                  (feature) => Text(
                    feature,
                    style: TextStyle(fontSize: 14),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    ),
  );
}
