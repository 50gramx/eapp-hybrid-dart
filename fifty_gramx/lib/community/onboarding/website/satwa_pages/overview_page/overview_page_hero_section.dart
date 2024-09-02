import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildSatwaOverviewPageHeroSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Hero Section
          _buildHeroSection(context),
          // Conversion Factors
          _buildConversionFactors(),
          // Social Proof Section
          _buildSocialProofSection(),
          // Value Proposition Section
          _buildValuePropositionSection(),
          // Pain Points and Solutions Section
          _buildPainPointsSection(),
          // Call to Action
          _buildCallToAction(),
        ],
      ),

      // Add other sections similarly...
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
          'Next-Generation Staffing Solutions',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Empower your workforce with Satwa - a tailored staffing solution designed for your unique business needs.',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 20),
        NeumorphicButton(
          onPressed: () {
            // Navigate to contact form or CTA action
          },
          style: NeumorphicStyle(
            color: Colors.blueAccent,
          ),
          child: Text(
            'Start Hiring Now',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
  );
}

Widget _buildConversionFactors() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      children: [
        _buildFeatureTile('Fast and Easy Hiring',
            'Find the right talent quickly with our streamlined process.'),
        _buildFeatureTile('Access to Top Talent',
            'Leverage our vast network to hire the best candidates.'),
        _buildFeatureTile('Customizable Solutions',
            'Tailor our services to meet your specific staffing needs.'),
      ],
    ),
  );
}

Widget _buildFeatureTile(String title, String description) {
  return Neumorphic(
    margin: EdgeInsets.symmetric(vertical: 8.0),
    padding: EdgeInsets.all(16.0),
    style: NeumorphicStyle(
      depth: 5,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
    ),
    child: ListTile(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(description),
      leading: Icon(Icons.check_circle_outline, color: Colors.green),
    ),
  );
}

Widget _buildSocialProofSection() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Trusted by Leading Companies',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Neumorphic(
          padding: EdgeInsets.all(20.0),
          style: NeumorphicStyle(
            depth: 5,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
          ),
          child: Column(
            children: [
              Text(
                  '“Satwa has revolutionized our hiring process. Highly recommended!” - Company A'),
              SizedBox(height: 10),
              Text(
                  '“Exceptional service and great results. Our go-to staffing partner.” - Company B'),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildValuePropositionSection() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Value Proposition',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'At Satwa, we don’t just fill positions; we build teams. Our staffing solutions are designed to address your unique challenges and help you grow.',
          style: TextStyle(fontSize: 16),
        ),
      ],
    ),
  );
}

Widget _buildPainPointsSection() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Addressing Your Pain Points',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Struggling with high turnover? Need specialized skills fast? Satwa’s tailored solutions help you overcome these challenges and more, with our extensive network and expertise in finding the right fit.',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 10),
        Image.asset(
            'assets/hiring_process.png'), // Example image, replace with actual path
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
            'Get Started with Satwa',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    ),
  );
}
