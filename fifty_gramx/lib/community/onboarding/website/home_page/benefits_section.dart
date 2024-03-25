import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildHomePageBenefitSection() {
  return Neumorphic(
    margin: EdgeInsets.all(20),
    style: NeumorphicStyle(
      shape: NeumorphicShape.concave,
      depth: 5,
      intensity: 0.7,
      color: Colors.grey[200],
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Benefits',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '- Seamless Integration Across Domains\n- Unified Management and Operations\n- Enhanced Security and Privacy\n- Balanced EthosCoin for Transactions',
          ),
        ],
      ),
    ),
  );
}
