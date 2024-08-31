import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildSatwaTGCandidatesPageHeroSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Hero Section
          _buildHeroSection(context),
          // Regional Agencies Section
          _buildRegionalAgenciesSection(),
          // Remote Opportunities Section
          _buildRemoteOpportunitiesSection(),
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
          'Explore Opportunities with Leading Agencies',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'Find your next role with Satwa. Browse through various regional and remote opportunities tailored to your skills.',
          style: TextStyle(fontSize: 18),
        ),
      ],
    ),
  );
}

Widget _buildRegionalAgenciesSection() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Regional Opportunities',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        _buildAgencyCard('Mumbai - All Varieties',
            'Explore diverse job roles in Mumbai across multiple industries.'),
        _buildAgencyCard('Pune - All Varieties',
            'Find exciting job opportunities in Pune tailored to your skills.'),
        _buildAgencyCard('Gurugram - All Varieties',
            'Discover a range of job options in Gurugram, from tech to finance.'),
        _buildAgencyCard('Bangalore - All Varieties',
            'Join leading companies in Bangalore with our comprehensive job listings.'),
        _buildAgencyCard('Delaware - Consultants',
            'Work as a consultant in Delaware, USA with top firms in the industry.'),
      ],
    ),
  );
}

Widget _buildRemoteOpportunitiesSection() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Remote Opportunities',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        _buildAgencyCard('Remote - Part-Time Workers',
            'Flexible part-time remote jobs across various sectors.'),
        _buildAgencyCard('Remote - Consultants',
            'Engage with clients globally from the comfort of your home.'),
        _buildAgencyCard('Remote - Full-Time Employees',
            'Secure a full-time remote position with leading companies.'),
        _buildAgencyCard('Remote - Interns',
            'Gain experience with remote internships tailored to students and fresh graduates.'),
      ],
    ),
  );
}

Widget _buildAgencyCard(String title, String description) {
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
      trailing: Icon(Icons.arrow_forward, color: Colors.blueAccent),
      onTap: () {
        // Navigate to detailed listings or agency information
      },
    ),
  );
}

Widget _buildCallToAction() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
    child: Center(
      child: NeumorphicButton(
        onPressed: () {
          // Navigate to signup or explore more opportunities
        },
        style: NeumorphicStyle(
          color: Colors.blueAccent,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
          child: Text(
            'Explore More Opportunities',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    ),
  );
}
