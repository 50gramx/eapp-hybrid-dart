import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildHomePagePricingSection() {
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
            'Exclusive Offer: Licence to 50GRAMx',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue, // Highlight color
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Unlock the Power of 50GRAMx for Just \$1149', // Add pricing details
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87, // Darker color for emphasis
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Experience seamless integration across domains, enhanced security, and access to a thriving professional community.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54, // Lighter color for additional information
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Add action for button press
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
