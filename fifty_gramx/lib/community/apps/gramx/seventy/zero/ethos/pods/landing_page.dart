import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/spaces/knowledge/domain/CreateSpaceKnowledgeDomainPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/MachineConfigurationPage.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/basicConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/pushHorizontalPage.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/data/spaceData.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/account/receive_account_message.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/account/send_account_message.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge/discover_space_knowledge.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/knowledge/space_knowledge_domain/discover_space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/receiveAccountMessageService.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/sendAccountMessageService.dart';
import 'package:fifty_gramx/services/product/knowledge/domain/discoverSpaceKnowledgeDomainService.dart';
import 'package:fifty_gramx/services/product/knowledge/space/discoverSpaceKnowledgeService.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  State<EthosPodsLandingPage> createState() =>
      _EthosPodsLandingPageState();
}

class _EthosPodsLandingPageState extends State<EthosPodsLandingPage> {
  @override
  Widget build(BuildContext context) {
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
              color: Colors.blue,  // Choose a color that matches your branding.
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
                  SizedBox(height: 20.0),  // Provides some spacing between text and button
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
                    subtitle: Text('Pay by the second for your compute usage, scaling dynamically to meet the needs of your workloads.'),
                  ),
                  // Feature 2
                  ListTile(
                    leading: Icon(Icons.attach_money),
                    title: Text('Competitive Pricing'),
                    subtitle: Text('Affordable rates with a transparent billing system, making cloud computing accessible to all.'),
                  ),
                  // Feature 3
                  ListTile(
                    leading: Icon(Icons.security),
                    title: Text('Secure Environment'),
                    subtitle: Text('Robust security features ensuring the safety and integrity of your data and applications.'),
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

  @override
  void initState() {
    super.initState();
  }
}

