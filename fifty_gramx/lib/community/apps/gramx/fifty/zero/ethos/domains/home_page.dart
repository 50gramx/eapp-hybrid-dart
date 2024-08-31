import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/EutopiaLeftNavigationScaffold_backup.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/domains/ethos_domain_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    required this.index,
    this.containingFlowTitle = '',
    Key? key,
  }) : super(key: key);

  final int index;
  final String containingFlowTitle;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<SpaceKnowledgeDomain> ethosKnowledgeDomains = [
    SpaceKnowledgeDomain(
      spaceKnowledgeDomainName: "Patel",
      spaceKnowledgeDomainDescription: "Ask Patel about Mahatma Gandhi",
    ),
    SpaceKnowledgeDomain(
      spaceKnowledgeDomainName: "Olive",
      spaceKnowledgeDomainDescription: "Your digital team assistant on Slack",
    ),
    SpaceKnowledgeDomain(
      spaceKnowledgeDomainName: "Sendil",
      spaceKnowledgeDomainDescription:
          "Sendil is your dedicated digital real estate assistant, designed to streamline and simplify the property prospecting and onboarding process in Indiranagar, Bangalore. With Sendil, you'll experience hassle-free property search, inquiries, and visit scheduling, saving you and your clients valuable time.",
    ),
    SpaceKnowledgeDomain(
      spaceKnowledgeDomainName: "Irani",
      spaceKnowledgeDomainDescription:
          "Irani is your dedicated college admission advisor, specializing in helping aspiring engineering students find their dream colleges. With a friendly and empathetic approach, Irani 88 simplifies the complex task of matching JEE ranks with college cutoffs, ensuring you make informed decisions for your academic future.",
    ),
    SpaceKnowledgeDomain(
      spaceKnowledgeDomainName: "Irani",
      spaceKnowledgeDomainDescription:
          "Rashmi is your dedicated rental property assistant, specially designed to simplify the process of finding a place to rent near your office address in Indiranagar, Bangalore. Whether you're a newcomer to the city or a long-time resident looking for a convenient rental, Rashmi ensures you connect with the right agent who can assist you effectively.",
    ),
  ]; // Replace with fetched data if applicable

  @override
  void initState() {
    super.initState();
    // Fetch product data from an API (if desired)
    // ...
  }

  @override
  Widget build(BuildContext context) {
    bool isNavigatingLeft = LayoutBreakpoint().isNavigatingLeft(context);
    var drawer = isNavigatingLeft
        ? null
        : Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Text('Ethos Domains'),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                  ),
                ),

                // Add more ListTile widgets for additional links
              ],
            ),
          );

    Widget domainList = ListView.builder(
      itemCount: ethosKnowledgeDomains.length,
      itemBuilder: (context, index) {
        return EthosDomainWidget(
          knowledgeDomain: ethosKnowledgeDomains[index],
          primaryCTAtitle: "",
          secondaryCTAtitle: "",
        );
      },
    );
    Widget expandedDomainList = Expanded(child: domainList);
    Widget mainColumn = Flexible(
      child: Column(
        children: [expandedDomainList],
      ),
      flex: 7,
    );
    Widget expandedColumn = isNavigatingLeft
        ? Flexible(
            child: Column(
              children: [],
            ),
            flex: 3,
          )
        : SizedBox();
    Widget mainRow = Row(
      children: [
        mainColumn,
        expandedColumn,
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Ethos Domains'),
      ),
      drawer: drawer,
      body: mainRow,
    );
  }
}
