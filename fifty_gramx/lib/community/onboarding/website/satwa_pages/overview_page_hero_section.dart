import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildSatwaOverviewPageHeroSection(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Hero Section
          Neumorphic(
            margin: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(16),
              ),
              depth: 8,
              intensity: 0.8,
              color: Colors.orange,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'Unlock Your Potential with Premier Temporary Staffing Solutions!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Connecting Talent with Temporary Opportunities - Your Gateway to Flexibility.',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
          // Value Proposition Section
          Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.convex,
              depth: 8,
              intensity: 0.8,
              color: Colors.orange,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    'Welcome to SAtWA - Your Trusted Partner in Temporary Staffing Solutions.',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Access Top Temporary Talent, Streamlined Hiring Process, Customized Solutions.',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.0),
                  // Testimonials can be added here
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),

          // Temporary Staffing Services Section
          Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(16),
              ),
              depth: 8,
              intensity: 0.8,
              color: Colors.orange,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Temporary Staffing Services',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Comprehensive Temporary Staffing Solutions Tailored to Your Needs.',
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Key Features:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('- Temporary Staffing'),
                  Text('- On-Demand Workers'),
                  Text('- Flexible Assignments'),
                  Text('- Immediate Availability'),
                  SizedBox(height: 10.0),
                  Text(
                    'Benefits of Temporary Staffing:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('- Streamlined Process'),
                  Text('- Real-Time Updates'),
                  Text('- Customized Solutions'),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),

          // Client Portal Section
          Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(16),
              ),
              depth: 8,
              intensity: 0.8,
              color: Colors.orange,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Client Portal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Efficiently Manage Your Temporary Staffing Needs with Our Client Portal.',
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Features:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('- Job Posting'),
                  Text('- Candidate Search'),
                  Text('- Assignment Management'),
                  Text('- Billing and Invoicing'),
                  SizedBox(height: 10.0),
                  Text(
                    'Benefits for Clients:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('- Streamlined Process'),
                  Text('- Real-Time Updates'),
                  Text('- Customized Solutions'),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),

          // Temporary Worker Portal Section
          Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(16),
              ),
              depth: 8,
              intensity: 0.8,
              color: AppColors.orange(context),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Temporary Worker Portal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Explore Temporary Job Opportunities with Our Worker Portal.',
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Features:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('- Job Listings'),
                  Text('- Profile Management'),
                  Text('- Availability Status'),
                  Text('- Payroll Information'),
                  SizedBox(height: 10.0),
                  Text(
                    'Benefits for Temporary Workers:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('- Access to Diverse Opportunities'),
                  Text('- Flexibility'),
                  Text('- Transparent Communication'),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),

// Company Overview Section
          Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(16),
              ),
              depth: 8,
              intensity: 0.8,
              color: Colors.orange,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Company Overview',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Learn About Our Dedication to Temporary Staffing Excellence.',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),

// Team Section
          Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(16),
              ),
              depth: 8,
              intensity: 0.8,
              color: Colors.orange,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Team',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Introduce key team members and their expertise in temporary staffing.',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),

// Differentiators Section
          Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(16),
              ),
              depth: 8,
              intensity: 0.8,
              color: Colors.orange,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Differentiators',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'What Sets Us Apart - Temporary Staffing Focus, Industry Expertise, Personalized Approach.',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),

          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Why Choose Satwa?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '1. Streamlined temporary staffing solutions\n'
                  '2. Diverse pool of skilled workers\n'
                  '3. Seamless job assignment process\n'
                  '4. Client portal for easy management\n'
                  '5. Transparent invoicing and billing',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
      Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Mission Statement',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'At SAtWA, we are committed to revolutionizing the temporary staffing landscape. Our mission is to connect talented temporary workers with organizations in need, fostering collaboration and excellence across various sectors.',
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ],
        ),
      ),

      // Add other sections similarly...
    ],
  );
}
