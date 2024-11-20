import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/space.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/conversation/message/account/receive_account_message.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/conversation/message/account/send_account_message.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/knowledge/space_knowledge/discover_space_knowledge.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/knowledge/space_knowledge_domain/discover_space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Progress/AppProgressIndeterminateWidget.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Text/Form/FormInfoText.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/screen/CustomSliverAppBar.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/spaces/knowledge/domain/CreateSpaceKnowledgeDomainPage.dart';
import 'package:fifty_gramx/community/apps/gramx/seventy/zero/ethos/pods/MachineConfigurationPage.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/basicConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/configurations/selectorConfigurationItem.dart';
import 'package:fifty_gramx/community/homeScreenWidgets/custom/pushHorizontalPage.dart';
import 'package:fifty_gramx/community/onboarding/getStartedWidget.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:fifty_gramx/data/spaceData.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/receiveAccountMessageService.dart';
import 'package:fifty_gramx/services/product/conversation/message/account/sendAccountMessageService.dart';
import 'package:fifty_gramx/services/product/knowledge/domain/discoverSpaceKnowledgeDomainService.dart';
import 'package:fifty_gramx/services/product/knowledge/space/discoverSpaceKnowledgeService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/// This is the stateful widget that the main application instantiates.
class EthosPodConfigurationPage extends StatefulWidget {
  const EthosPodConfigurationPage({
    required this.index,
    required this.containingFlowTitle,
    Key? key,
  }) : super(key: key);

  final int index;
  final String containingFlowTitle;

  @override
  State<EthosPodConfigurationPage> createState() =>
      _EthosPodConfigurationPageState();
}

AppBar buildLandingPageAppBar(context) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Row(
      children: <Widget>[
        Image.network(
          'https://media.licdn.com/dms/image/C560BAQH9-bR31lVxow/company-logo_200_200/0/1648480086355/runpod_io_logo?e=2147483647&v=beta&t=TkhT7gHg7uSPz_nIo74XX3N72MDQ09DN7sqxz358WXc',
          fit: BoxFit.cover,
          width: 24,
          // Replace with your actual logo image URL
        ),
        SizedBox(width: 20),
        Text('Overview'),
        SizedBox(width: 10),
        Text('Solutions'),
        SizedBox(width: 10),
        Text('Products'),
        SizedBox(width: 10),
        Text('Pricing'),
        SizedBox(width: 10),
        Text('Resources'),
        TextButton(
          onPressed: () {
            // Handle "Contact Us" button press
          },
          child: Text('Contact Us', style: TextStyle(color: Colors.blue)),
        ),
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          // Handle search icon press
        },
      ),
      TextButton(
        onPressed: () {
          // Handle "Docs" button press
        },
        child: Text('Docs', style: TextStyle(color: Colors.blue)),
      ),
      TextButton(
        onPressed: () {
          // Handle "Support" button press
        },
        child: Text('Support', style: TextStyle(color: Colors.blue)),
      ),
      DropdownButton<String>(
        items: <String>['English', 'Español', 'Français'].map((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (_) {
          // Handle language change
        },
      ),
      TextButton(
        onPressed: () {
          // Handle "Sign in" button press
        },
        child: Text('Sign in', style: TextStyle(color: Colors.blue)),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => GetStartedWidget(
                        isAccountLoggedIn: false,
                      )));
        },
        child: Text('Start free', style: TextStyle(color: Colors.white)),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
      ),
    ],
    iconTheme: IconThemeData(color: Colors.blue),
  );
}

Widget buildLandingPageFirstSection() {
  return Container(
    padding: EdgeInsets.all(20), // Adjust the padding as needed
    decoration: BoxDecoration(
      color: Colors.black, // Assuming a black background
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'The Cloud Built for AI',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36, // Adjust the font size as needed
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16), // Provides spacing between text widgets
        Text(
          'Globally distributed GPU cloud built for production.\n'
          'Develop, train, and scale AI applications.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18, // Adjust the font size as needed
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 32), // Provides spacing before the button
        ElevatedButton(
          onPressed: () {
            // Add your onPressed code here
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                Colors.deepPurple, // Background color of the button
            foregroundColor: Colors.white, // Text color of the button
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Text('Start Building'),
          ),
        ),
        SizedBox(height: 48), // Provides spacing after the button
        // Add your logos here as Row of Image.network or AssetImage widgets
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            // Replace with actual Image widgets for your logos
            Icon(Icons.ac_unit, color: Colors.white),
            Icon(Icons.ac_unit, color: Colors.white),
            // ... other logos
          ],
        ),
      ],
    ),
  );
}

Widget buildLandingPageSecondSection() {
  return Column(
    children: <Widget>[
      Container(
        padding: EdgeInsets.all(20),
        child: Text(
          'Develop, train, and scale AI models.\nAll in one cloud.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildInfoSection('Develop',
                'With over 50 template environments, you\'re just three clicks away from a fully configured development workspace.'),
            buildInfoSection('Train',
                'RunPod is engineered to streamline the training process, allowing you to benchmark and train your models efficiently.'),
            buildInfoSection('Scale',
                'Deploy your models to production and scale from 0 to millions of inference requests with our Serverless endpoints.'),
          ],
        ),
      ),
    ],
  );
}

Widget buildInfoSection(String title, String content) {
  return Expanded(
    child: Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(
          content,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

Widget buildLandingPageThirdSection() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 48.0, horizontal: 24.0),
    color: Colors.black, // Assuming a dark theme from your image
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Launch a GPU instance in seconds',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Run any GPU workload seamlessly, so you can focus less on ML ops and more on building your application.',
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 18,
          ),
        ),
        SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildFeatureTile(
              icon: Icons.storage, // Replace with your own icons
              title: '50+ Template Environments',
              description:
                  'Choose from 50+ templates ready out-of-the-box, or bring your own custom container.',
            ),
            buildGPUPricingInfo(
              gpuType: 'A100',
              memory: '80 GB',
              pricePerHour: '\$1.89 / hr',
            ),
            // ... Other GPU types
          ],
        ),
        SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildFeatureTile(
              icon: Icons.language, // Replace with your own icons
              title: 'Global Interoperability',
              description:
                  'Select from 30+ regions across North America, Europe, and South America.',
            ),
            buildFeatureTile(
              icon: Icons.sd_storage, // Replace with your own icons
              title: 'Limitless Storage',
              description:
                  'Ultra-fast NVMe storage for your datasets and models, so you can rapidly scale development.',
            ),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple, // Button background color
              ),
              child: Text('See all GPUs'),
            ),
          ],
        ),
        SizedBox(height: 32),
        buildFeatureTile(
          icon: Icons.flash_on, // Replace with your own icons
          title: 'Deploy in Seconds',
          description: 'Configure your deployment and launch in seconds.',
        ),
        SizedBox(height: 8),
        LinearProgressIndicator(
          value: 1.0, // Represents 100%
          backgroundColor: Colors.grey[800],
          valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
        ),
        SizedBox(height: 4),
        Text(
          '500 MiB/s',
          style: TextStyle(color: Colors.grey[500]),
        ),
        SizedBox(height: 24),
        ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple, // Button background color
          ),
          child: Text('Get Started'),
        ),
      ],
    ),
  );
}

Widget buildFeatureTile(
    {required IconData icon,
    required String title,
    required String description}) {
  return Column(
    children: <Widget>[
      Icon(icon, size: 48, color: Colors.purple),
      SizedBox(height: 8),
      Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 8),
      Text(
        description,
        style: TextStyle(
          color: Colors.grey[500],
          fontSize: 16,
        ),
      ),
    ],
  );
}

Widget buildGPUPricingInfo(
    {required String gpuType,
    required String memory,
    required String pricePerHour}) {
  return Column(
    children: <Widget>[
      Text(
        gpuType,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      Text(
        memory,
        style: TextStyle(color: Colors.grey[500], fontSize: 16),
      ),
      Text(
        pricePerHour,
        style: TextStyle(color: Colors.grey[500], fontSize: 16),
      ),
    ],
  );
}

Widget buildLandingPageFourthSection() {
  return Container(
    width: double.infinity, // Ensures the container fills the screen width
    padding: EdgeInsets.symmetric(vertical: 48.0, horizontal: 24.0),
    color: Colors.black, // Assuming a dark theme from your image
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Launch your AI application in seconds',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'Experience the most cost-effective GPU cloud platform built for production.',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey[500],
            fontSize: 18,
          ),
        ),
        SizedBox(height: 32),
        ElevatedButton(
          onPressed: () {
            // Handle "Get Started" button press
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple, // Button background color
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          ),
          child: Text('Get Started'),
        ),
      ],
    ),
  );
}

Widget buildLandingPageFooterSection() {
  return Container(
    color: Colors.black, // Assuming the footer has a black background
    padding: EdgeInsets.all(32.0),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            footerColumn(
              title: 'PRODUCTS',
              links: [
                'Secure Cloud',
                'Community Cloud',
                'Serverless',
                'AI Endpoints'
              ],
            ),
            footerColumn(
              title: 'RESOURCES',
              links: ['API Docs', 'FAQ', 'Blog', 'Become a Host'],
            ),
            footerColumn(
              title: 'COMPANY',
              links: [
                'Careers',
                'About',
                'Cookie Policy',
                'Disclaimer',
                'Privacy Policy',
                'Terms of Service'
              ],
            ),
            footerColumn(
              title: 'CONTACT',
              links: [
                'Contact Us',
                'Discord',
                'help@runpod.io',
                'referrals@runpod.io'
              ],
            ),
          ],
        ),
        SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              // Use appropriate icons for each platform
              icon: Icon(Icons.discord, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.chat, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.transfer_within_a_station_rounded,
                  color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.photo, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
        SizedBox(height: 32),
        Text(
          '© RunPod 2024\nPeople illustrations by Storyset',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey[600]),
        ),
      ],
    ),
  );
}

Widget footerColumn({required String title, required List<String> links}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
      ),
      ...links.map((link) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              link,
              style: TextStyle(color: Colors.grey[600], fontSize: 14),
            ),
          )),
    ],
  );
}

Widget buildCallToInvestSubPage(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Image.asset(
            'assets/ai_development.jpg'), // Placeholder for an image related to AI development
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Making AI Development Accessible to All',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Ethos Pods provides affordable access to high-performing GPUs, eliminating the high costs and barriers to AI innovation.',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
        ListTile(
          leading: Icon(Icons.trending_up),
          title: Text('Skyrocketing Demand for AI Tools'),
          subtitle: Text('Projected market growth to \$60 Billion by 2025.'),
        ),
        ListTile(
          leading: Icon(Icons.account_balance_wallet),
          title: Text('Affordable GPU Rentals'),
          subtitle: Text('Starts at ₹13/hour for RTX 3080Ti.'),
        ),
        ListTile(
          leading: Icon(Icons.group),
          title: Text('Join Our Community'),
          subtitle: Text(
              'We\'re looking for partners, investors, and talented individuals.'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: ElevatedButton(
            onPressed: () {
              // Add your contact method or navigation logic here
            },
            child: Text('Get in Touch'),
          ),
        ),
        buildLandingPageFooterSection(),
      ],
    ),
  );
}

Widget buildLandingSubPage() {
  return SingleChildScrollView(
    child: Column(children: [
      buildLandingPageFirstSection(),
      buildLandingPageSecondSection(),
      buildLandingPageThirdSection(),
      buildLandingPageFourthSection(),
      buildLandingPageFooterSection(),
    ]),
  );
}

Widget landingPage(BuildContext context) {
  return Scaffold(
      appBar: buildLandingPageAppBar(context),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          buildLandingSubPage(),
          buildCallToInvestSubPage(context),
          // Footer Section
        ],
      ));
}

Widget buildConsolePage(BuildContext context, String containingFlowTitle) {
  return Scaffold(
    backgroundColor: AppColors.backgroundPrimary(context),
    bottomNavigationBar: BottomAppBar(
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Animate a bottom drawer
            },
          ),
          Spacer(),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
    ),
    body: CustomScrollView(slivers: <Widget>[
      CustomSliverAppBar(
        labelText: containingFlowTitle,
        actionLabelText: "",
        isBackEnabled: false,
        isActionEnabled: false,
        trailingButtonCallback: () {},
        onStretchTriggerCallback: () {},
      ),
      SliverList(
        delegate: SliverChildListDelegate([
          Container(
              margin: EdgeInsets.only(top: 16, bottom: 4, right: 16, left: 16),
              child: FormInfoText("ABOUT").build(context)),
          FutureBuilder<Space>(
            future: SpaceData().readSpace(),
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return AppProgressIndeterminateWidget();
              } else {
                return BasicConfigurationItem(
                    titleText: "Universe",
                    subtitleText: snap.data!.galaxy.universe.universeName);
              }
            },
          ),
          FutureBuilder<Space>(
            future: SpaceData().readSpace(),
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return AppProgressIndeterminateWidget();
              } else {
                return BasicConfigurationItem(
                    titleText: "Galaxy",
                    subtitleText: snap.data!.galaxy.galaxyName);
              }
            },
          ),
          FutureBuilder<Account>(
            future: AccountData().readAccount(),
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return AppProgressIndeterminateWidget();
              } else {
                return BasicConfigurationItem(
                    titleText: "Space",
                    subtitleText: "${snap.data!.accountFirstName}'s Space");
              }
            },
          ),
          FutureBuilder<Space>(
            future: SpaceData().readSpace(),
            builder: (context, snap) {
              if (snap.connectionState == ConnectionState.waiting) {
                return AppProgressIndeterminateWidget();
              } else if (snap.connectionState == ConnectionState.done) {
                if (snap.data!.spaceId.isNotEmpty) {
                  return BasicConfigurationItem(
                      titleText: "Serial Number",
                      subtitleText: "#${snap.data!.spaceId.substring(0, 12)}");
                } else {
                  return BasicConfigurationItem(
                      titleText: "Serial Number", subtitleText: "###NA###");
                }
              } else {
                return BasicConfigurationItem(
                    titleText: "Serial Number", subtitleText: "NA");
              }
            },
          ),

          // ------------------------------------------------
          // GALAXY NETWORK
          // ------------------------------------------------
          Container(
              margin: EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
              child: FormInfoText("GALAXY NETWORK").build(context)),
          BasicConfigurationItem(
              titleText: "Computing Cores", subtitleText: "1 Core"),
          // TODO: Fetch actual data
          BasicConfigurationItem(
              titleText: "Hot Storage", subtitleText: "1 GiB"),
          // TODO: Fetch actual data
          BasicConfigurationItem(
              titleText: "Fast Storage", subtitleText: "20 GiB"),
          // TODO: Fetch actual data
          BasicConfigurationItem(
              titleText: "Standard Storage", subtitleText: "0 GiB"),
          // TODO: Fetch actual data
          SelectorConfigurationItem(
            titleText: "Galaxy Machines",
            subtitleText: "1 Node",
            selectorCallback: () {
              AppPushPage()
                  .pushHorizontalPage(context, MachineConfigurationPage());
            },
          ),
          // ------------------------------------------------
          // MY SPACE CONTAINERS
          // ------------------------------------------------
          Container(
              margin: EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
              child: FormInfoText("MY SPACE PODS").build(context)),
          BasicConfigurationItem(titleText: "Identity", subtitleText: "X1"),
          BasicConfigurationItem(
              titleText: "Conversations", subtitleText: "X1"),
          Container(
              margin: EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
              child: FormInfoText("MY SPACE KNOWLEDGE PODS").build(context)),
          SelectorConfigurationItem(
            titleText: "Launch Knowledge Domain",
            subtitleText: "Isolated",
            selectorCallback: () {
              AppPushPage().pushHorizontalPage(
                  context, CreateSpaceKnowledgeDomainPage());
            },
          ),
          SelectorConfigurationItem(
            titleText: "Launch Knowledge Domain",
            subtitleText: "Shared",
            selectorCallback: () {
              AppPushPage().pushHorizontalPage(
                  context,
                  CreateSpaceKnowledgeDomainPage(
                    createIsolatedDomain: false,
                  ));
            },
          ),
          Container(
            child: FutureBuilder<GetSpaceKnowledgeDomainsResponse>(
                future:
                    DiscoverSpaceKnowledgeService.getSpaceKnowledgeDomains(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return AppProgressIndeterminateWidget();
                  } else {
                    if (snapshot.hasData) {
                      if (snapshot.data!.responseMeta.metaDone) {
                        if (snapshot.data!.spaceKnowledgeDomains.length > 0) {
                          return Container(
                            height:
                                snapshot.data!.spaceKnowledgeDomains.length *
                                    62,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount:
                                    snapshot.data!.spaceKnowledgeDomains.length,
                                itemBuilder: (context, position) {
                                  String domainName = snapshot
                                      .data!
                                      .spaceKnowledgeDomains[position]
                                      .spaceKnowledgeDomainName;
                                  return BasicConfigurationItem(
                                      titleText: domainName,
                                      subtitleText: "K1");
                                }),
                          );
                        } else {
                          return SizedBox();
                        }
                      } else {
                        return SizedBox();
                      }
                    } else {
                      return AppProgressIndeterminateWidget();
                    }
                  }
                }),
          ),
          Container(
              margin: EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
              child: FormInfoText("MY SPACE SERVICE PODS").build(context)),
          SelectorConfigurationItem(
            titleText: "Launch Service Domain",
            subtitleText: "Isolated",
            selectorCallback: () {
              AppPushPage().pushHorizontalPage(
                  context,
                  CreateSpaceKnowledgeDomainPage(
                    spaceKind: SpaceKind.SERVICE,
                  ));
            },
          ),
          SelectorConfigurationItem(
            titleText: "Launch Service Domain",
            subtitleText: "Shared",
            selectorCallback: () {
              AppPushPage().pushHorizontalPage(
                  context,
                  CreateSpaceKnowledgeDomainPage(
                    createIsolatedDomain: false,
                    spaceKind: SpaceKind.SERVICE,
                  ));
            },
          ),
          Container(
              margin: EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
              child: FormInfoText("MY SPACE ISOLATED PAGES").build(context)),
          FutureBuilder<AccountSentMessagesCountResponse>(
              future: SendAccountMessageService.getAccountSentMessagesCount(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Speed Messages",
                      subtitleText:
                          "SENT ${snap.data!.accountSentMessagesCount}");
                }
              }),
          FutureBuilder<AccountReceivedMessagesCountResponse>(
              future: ReceiveAccountMessageService
                  .getAccountReceivedMessagesCount(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Speed Messages",
                      subtitleText:
                          "RECEIVED ${snap.data!.accountReceivedMessagesCount}");
                }
              }),
          FutureBuilder<AccountAssistantSentMessagesCountResponse>(
              future: SendAccountMessageService
                  .getAccountAssistantSentMessagesCount(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Actionable Messages",
                      subtitleText:
                          "SENT ${snap.data!.accountAssistantSentMessagesCount}");
                }
              }),
          FutureBuilder<AccountAssistantReceivedMessagesCountResponse>(
              future: ReceiveAccountMessageService
                  .getAccountAssistantReceivedMessagesCount(),
              builder: (context, snap) {
                if (snap.connectionState == ConnectionState.waiting) {
                  return AppProgressIndeterminateWidget();
                } else {
                  return BasicConfigurationItem(
                      titleText: "Actionable Messages",
                      subtitleText:
                          "RECEIVED ${snap.data!.accountAssistantReceivedMessagesCount}");
                }
              }),
          Container(
            child: FutureBuilder<GetSpaceKnowledgeDomainsResponse>(
                future:
                    DiscoverSpaceKnowledgeService.getSpaceKnowledgeDomains(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return AppProgressIndeterminateWidget();
                  } else {
                    if (snapshot.hasData) {
                      if (snapshot.data!.responseMeta.metaDone) {
                        if (snapshot.data!.spaceKnowledgeDomains.length > 0) {
                          double containerHeight = 0;
                          for (var domain
                              in snapshot.data!.spaceKnowledgeDomains) {
                            if (domain.spaceKnowledgeDomainIsolated) {
                              containerHeight += 62;
                            }
                          }
                          return Container(
                            height: containerHeight,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount:
                                    snapshot.data!.spaceKnowledgeDomains.length,
                                itemBuilder: (context, position) {
                                  if (snapshot
                                      .data!
                                      .spaceKnowledgeDomains[position]
                                      .spaceKnowledgeDomainIsolated) {
                                    SpaceKnowledgeDomain domain = snapshot
                                        .data!.spaceKnowledgeDomains[position];
                                    return FutureBuilder<PageCountResponse>(
                                      future:
                                          DiscoverSpaceKnowledgeDomainService
                                              .getPageCount(domain),
                                      builder: (context, snap) {
                                        if (snap.connectionState ==
                                            ConnectionState.waiting) {
                                          return AppProgressIndeterminateWidget();
                                        } else {
                                          return BasicConfigurationItem(
                                              titleText: domain
                                                  .spaceKnowledgeDomainName,
                                              subtitleText:
                                                  "PAGES ${snap.data!.pageCount}");
                                        }
                                      },
                                    );
                                  } else {
                                    return SizedBox();
                                  }
                                }),
                          );
                        } else {
                          return SizedBox();
                        }
                      } else {
                        return SizedBox();
                      }
                    } else {
                      return AppProgressIndeterminateWidget();
                    }
                  }
                }),
          ),
          Container(
              margin: EdgeInsets.only(top: 32, bottom: 4, right: 16, left: 16),
              child: FormInfoText("MY SPACE SHARED PAGES").build(context)),
          Container(
            child: FutureBuilder<GetSpaceKnowledgeDomainsResponse>(
                future:
                    DiscoverSpaceKnowledgeService.getSpaceKnowledgeDomains(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return AppProgressIndeterminateWidget();
                  } else {
                    if (snapshot.hasData) {
                      if (snapshot.data!.responseMeta.metaDone) {
                        if (snapshot.data!.spaceKnowledgeDomains.length > 0) {
                          double containerHeight = 0;
                          for (var domain
                              in snapshot.data!.spaceKnowledgeDomains) {
                            if (!domain.spaceKnowledgeDomainIsolated) {
                              containerHeight += 62;
                            }
                          }
                          return Container(
                            height: containerHeight,
                            child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount:
                                    snapshot.data!.spaceKnowledgeDomains.length,
                                itemBuilder: (context, position) {
                                  if (!snapshot
                                      .data!
                                      .spaceKnowledgeDomains[position]
                                      .spaceKnowledgeDomainIsolated) {
                                    String domainName = snapshot
                                        .data!
                                        .spaceKnowledgeDomains[position]
                                        .spaceKnowledgeDomainName;
                                    return BasicConfigurationItem(
                                        titleText: domainName,
                                        subtitleText: "0");
                                  } else {
                                    return SizedBox();
                                  }
                                }),
                          );
                        } else {
                          return SizedBox();
                        }
                      } else {
                        return SizedBox();
                      }
                    } else {
                      return AppProgressIndeterminateWidget();
                    }
                  }
                }),
          ),
          SizedBox(height: 32),
        ]),
      )
    ]),
  );
}

class _EthosPodConfigurationPageState extends State<EthosPodConfigurationPage> {
  @override
  Widget build(BuildContext context) {
    Widget progress = Scaffold(
      body: Center(
        child: AppProgressIndeterminateWidget(),
      ),
    );
    return FutureBuilder<bool>(
        future: AccountData().isValid(),
        builder: (context, snap) {
          if (snap.connectionState == ConnectionState.done) {
            if (snap.data == true) {
              return buildConsolePage(context, widget.containingFlowTitle);
            } else {
              return landingPage(context);
            }
          } else {
            return progress;
          }
        });
  }

  @override
  void initState() {
    super.initState();
  }
}
