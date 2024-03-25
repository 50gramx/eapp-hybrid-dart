import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildHomePageHighlightsSection() {
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
            'Professional Highlights',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Empower Your Professional Journey with 50GRAMx Galaxy',
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Learn More'),
          ),
        ],
      ),
    ),
  );
}
