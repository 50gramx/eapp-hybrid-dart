import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildOverviewPageHeroSection(context) {
  return Neumorphic(
    style: NeumorphicStyle(
      color: AppColors.backgroundInversePrimary(context),
      depth: -4, // Change depth according to your design
    ),
    child: Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Welcome to the Grievance Portal',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Neumorphic(
            style: NeumorphicStyle(
              color: Colors.white,
              depth: -2, // Change depth according to your design
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Grievances...',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
