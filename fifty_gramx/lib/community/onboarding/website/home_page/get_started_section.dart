import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildHomePageGetStartedSection() {
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
            'Getting Started',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '1. Reserve Your Galaxy\n2. Launch Your Domain\n3. Interact with Open Domains',
          ),
        ],
      ),
    ),
  );
}
