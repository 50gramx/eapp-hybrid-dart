import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildSatwaPricingPageHeroSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Hero Section
          _buildHeroSection(context),
        ],
      ),
    ],
  );
}

Widget _buildHeroSection(BuildContext context) {
  return Neumorphic(
    margin: EdgeInsets.all(16.0),
    padding: EdgeInsets.all(20.0),
    style: NeumorphicStyle(
      depth: -5,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Choose the Perfect Staffing Plan',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Our flexible staffing plans are designed to meet your unique hiring needs. Whether you need a single consultant or a full team, Satwa has you covered.',
          style: TextStyle(fontSize: 18),
        ),
      ],
    ),
  );
}
