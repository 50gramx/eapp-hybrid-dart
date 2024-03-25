import 'package:flutter_neumorphic/flutter_neumorphic.dart';

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

Widget buildHomePagePricingSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      // Licences Title
      Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'Galaxy Licences',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      // Two Cards Row
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Card 1
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: _buildPricingCard(
                'Standard',
                '\$99.99/year',
                [
                  'Personal Knowledge Domains',
                  'Access to Open Knowledge Domains',
                  'Feature 3',
                  'Feature 4',
                ],
                context,
              ),
            ),
          ),
          // Card 2
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: _buildPricingCard(
                'Professional',
                '\$999.99/year',
                [
                  'Private Galaxy',
                  'Professional Pass',
                  'Domain Launch',
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
