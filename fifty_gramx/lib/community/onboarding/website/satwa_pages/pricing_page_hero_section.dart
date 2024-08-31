import 'package:fifty_gramx/community/onboarding/website/satwa_pages/plan_page_config.dart';
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
          SatwaPlanPageConfig().buildPlansSection(context),
          SatwaPlanPageConfig().buildComparisonSection(context),
          _buildCallToAction(),
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

Widget _buildPlansSection() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Plans',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        _buildPlanCard('Plan Plus One', 'Staff a Single Remote Consultant',
            '\$499/month', false),
        _buildPlanCard('Plan Plus Plus', 'Staff 3+ Remote Consultants',
            '\$1299/month', false),
        _buildPlanCard('Full Plan', 'Staff Regional FTEs/TVCs',
            'Custom Pricing', true), // Highlighted Plan
      ],
    ),
  );
}

Widget _buildPlanCard(
    String title, String description, String price, bool isHighlighted) {
  return Neumorphic(
    margin: EdgeInsets.symmetric(vertical: 8.0),
    padding: EdgeInsets.all(16.0),
    style: NeumorphicStyle(
      depth: isHighlighted ? 8 : 5, // Deeper shadow for the highlighted plan
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
      color: isHighlighted
          ? Colors.lightBlue[50]
          : null, // Different background for highlighted plan
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        Text(description, style: TextStyle(fontSize: 16)),
        SizedBox(height: 10),
        Text(price,
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent)),
        SizedBox(height: 10),
        NeumorphicButton(
          onPressed: () {
            // Navigate to plan details or contact form
          },
          style: NeumorphicStyle(
            color: Colors.blueAccent,
          ),
          child: Text(
            'Select Plan',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}

Widget _buildPlanComparisonSection() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Compare Our Plans',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Neumorphic(
          padding: EdgeInsets.all(16.0),
          style: NeumorphicStyle(
            depth: 5,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          ),
          child: Column(
            children: [
              _buildComparisonRow(
                  'Feature', 'Plan Plus One', 'Plan Plus Plus', 'Full Plan'),
              Divider(),
              _buildComparisonRow('Remote Consultant', '1', '3+', 'Custom'),
              Divider(),
              _buildComparisonRow(
                  'Support', 'Email', 'Phone & Email', 'Dedicated Manager'),
              Divider(),
              _buildComparisonRow(
                  'Customization', 'Basic', 'Standard', 'Full Customization'),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildComparisonRow(
    String feature, String plan1, String plan2, String plan3) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            flex: 2,
            child:
                Text(feature, style: TextStyle(fontWeight: FontWeight.bold))),
        Expanded(child: Center(child: Text(plan1))),
        Expanded(child: Center(child: Text(plan2))),
        Expanded(child: Center(child: Text(plan3))),
      ],
    ),
  );
}

Widget _buildCallToAction() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
    child: Center(
      child: NeumorphicButton(
        onPressed: () {
          // Navigate to contact form or CTA action
        },
        style: NeumorphicStyle(
          color: Colors.blueAccent,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Text(
            'Contact Us to Get Started',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    ),
  );
}
