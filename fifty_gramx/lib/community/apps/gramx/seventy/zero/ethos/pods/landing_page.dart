import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// This is the stateful widget that the main application instantiates.
class EthosPodsLandingPage extends StatefulWidget {
  const EthosPodsLandingPage({
    required this.index,
    required this.containingFlowTitle,
    Key? key,
  }) : super(key: key);

  final int index;
  final String containingFlowTitle;

  @override
  State<EthosPodsLandingPage> createState() => _EthosPodsLandingPageState();
}

Widget _buildMetricTile(String title, String value) {
  return Card(
    child: ListTile(
      title: Text(title),
      trailing: Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
    ),
  );
}

Widget _buildCapitalManagementSection() {
  // Dummy Data
  final int investorLeadsGenerated = 150;
  final int investorsPitched = 100;
  final int followUpRequests = 75;
  final int investorsFinalized = 50;
  final int investorsFunded = 30;
  final double totalMoneyInAccount = 500000; // in dol

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      _buildMetricTile(
          'Investor Leads Generated', investorLeadsGenerated.toString()),
      _buildMetricTile('Investors Pitched', investorsPitched.toString()),
      _buildMetricTile('Follow-up Requests', followUpRequests.toString()),
      _buildMetricTile('Investors Finalized', investorsFinalized.toString()),
      _buildMetricTile('Investors Funded', investorsFunded.toString()),
      _buildMetricTile('Total Money in Account',
          '\$${totalMoneyInAccount.toStringAsFixed(2)}'),
    ],
  );
}

Widget buildInternalDashboard() {
  return Scaffold(
    appBar: AppBar(title: Text('EthosPods Dashboard')),
    body: SingleChildScrollView(
      child: Column(
        children: [
          // Section for Capital Management
          _buildCapitalManagementSection(),
          // Section for Product Management
          // _buildProductManagementSection(),
          // Section for Marketing Management
          // _buildMarketingManagementSection(),
        ],
      ),
    ),
  );
}

Widget buildLandingPage() {
  return Scaffold(
    appBar: AppBar(
      title: Text("Ethos Pods"),
    ),
    body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          // Hero Section
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.blue, // Choose a color that matches your branding.
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Simplify Your Container Deployments with Ethos Pods',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Competitive Pricing. Seamless Kubernetes Integration.',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                    height:
                        20.0), // Provides some spacing between text and button
                ElevatedButton(
                  onPressed: () {
                    // Define your action for the button press
                  },
                  child: Text('Get Started'),
                ),
              ],
            ),
          ),
          // Features Section
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Features',
                  style: TextStyle(fontSize: 24),
                ),
                // Feature 1
                ListTile(
                  leading: Icon(Icons.cloud),
                  title: Text('Serverless GPU Computing'),
                  subtitle: Text(
                      'Pay by the second for your compute usage, scaling dynamically to meet the needs of your workloads.'),
                ),
                // Feature 2
                ListTile(
                  leading: Icon(Icons.attach_money),
                  title: Text('Competitive Pricing'),
                  subtitle: Text(
                      'Affordable rates with a transparent billing system, making cloud computing accessible to all.'),
                ),
                // Feature 3
                ListTile(
                  leading: Icon(Icons.security),
                  title: Text('Secure Environment'),
                  subtitle: Text(
                      'Robust security features ensuring the safety and integrity of your data and applications.'),
                ),
                // ... Add more features as needed
              ],
            ),
          ),
          // Pricing Section
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Pricing',
                  style: TextStyle(fontSize: 24),
                ),
                // General Computing Pods Pricing
                Text(
                  'General Computing Pods - Starting at \$20 per month',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Ideal for inferences and non-cognitive functionalities.',
                  style: TextStyle(fontSize: 16),
                ),
                // Accelerated Computing Pods Pricing
                Text(
                  'Accelerated Computing Pods - Starting at \$100 per month',
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  'Ideal for fast inferences, training, and cognitive functionalities.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          // Testimonials Section
          Container(
            child: Text('Testimonials'),
          ),
        ],
      ),
    ),
  );
}

class _EthosPodsLandingPageState extends State<EthosPodsLandingPage> {
  @override
  Widget build(BuildContext context) {
    return buildInternalDashboard();
  }

  @override
  void initState() {
    super.initState();
  }
}
