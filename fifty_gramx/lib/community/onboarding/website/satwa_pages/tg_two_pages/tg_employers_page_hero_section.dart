import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildSatwaTGEmployersPageHeroSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Hero Section
          _buildHeroSection(context),
          // Why Employers Choose Satwa
          _buildWhyChooseSatwa(),
          // Our Process Section
          _buildProcessSection(),
          // Social Proof Section
          _buildSocialProofSection(),
          // Call to Action
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
          'Hire Top Talent Effortlessly',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Let Satwa Staffing Solutions streamline your hiring process and connect you with the best candidates in the industry.',
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

Widget _buildWhyChooseSatwa() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Why Employers Choose Satwa',
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
              ListTile(
                leading: Icon(Icons.check_circle_outline, color: Colors.green),
                title: Text('Access to Top Talent'),
                subtitle: Text(
                    'Our extensive network ensures you find the right fit for your company.'),
              ),
              ListTile(
                leading: Icon(Icons.check_circle_outline, color: Colors.green),
                title: Text('Streamlined Hiring Process'),
                subtitle: Text(
                    'From screening to onboarding, we handle all aspects of recruitment.'),
              ),
              ListTile(
                leading: Icon(Icons.check_circle_outline, color: Colors.green),
                title: Text('Customized Solutions'),
                subtitle: Text(
                    'We tailor our services to meet your unique hiring needs.'),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildProcessSection() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Process',
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
              _buildProcessStep('Step 1: Understanding Your Needs',
                  'We take the time to understand your company’s culture and hiring requirements.'),
              _buildProcessStep('Step 2: Sourcing the Best Candidates',
                  'Leveraging our network and advanced tools, we find the best candidates.'),
              _buildProcessStep('Step 3: Comprehensive Screening',
                  'Our rigorous screening ensures only the most qualified candidates move forward.'),
              _buildProcessStep('Step 4: Seamless Onboarding',
                  'We assist with onboarding, making the transition smooth and efficient.'),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildProcessStep(String title, String description) {
  return ListTile(
    title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
    subtitle: Text(description),
    leading: Icon(Icons.arrow_forward, color: Colors.blue),
  );
}

Widget _buildSocialProofSection() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What Our Clients Say',
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
                  '“Satwa helped us find the perfect team members quickly and efficiently!” - Client A'),
              SizedBox(height: 10),
              Text(
                  '“Their process is seamless, and the quality of candidates is top-notch.” - Client B'),
            ],
          ),
        ),
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
            'Partner with Satwa Today',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    ),
  );
}
