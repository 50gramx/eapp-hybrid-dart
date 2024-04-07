import 'package:carousel_slider/carousel_slider.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/domains/ethos_domain_widget.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget buildCollarsOverviewPageHeroSection(BuildContext context) {
  return Neumorphic(
    style: NeumorphicStyle(
        lightSource: NeumorphicTheme.isUsingDark(context)
            ? LightSource.bottomRight
            : LightSource.topLeft,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? AppColors.gray600
            : AppColors.backgroundSecondary(context),
        shape: NeumorphicShape.flat,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(25)),
        color: AppColors.backgroundPrimary(context),
        border: NeumorphicBorder(
          isEnabled: true,
          color: AppColors.backgroundPrimary(context),
          width: 2,
        ),
        disableDepth: true),
    child: Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ethos Domain Collars',
                    style: TextStyle(
                        color: AppColors.contentPrimary(context),
                        fontSize: 36,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w900,
                        height: 1.14285714),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height *
                        0.7, // At least 70% of screen height
                    width: MediaQuery.of(context).size.width,
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        depth: 8,
                        intensity: 0.5,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(12)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Offer Letter",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Closed Isolated Space Knowledge Domain Collar For Job Seekers & HR Professionals",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Ability to analyze and interpret offer letters, provide insights on salary, benefits, and terms, and facilitate negotiation.",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 20),
                          NeumorphicButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/53/offer-letter');
                              // Add button functionality
                            },
                            style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(8)),
                            ),
                            child: Text('Checkout Collar'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  EthosDomainWidget(
                      knowledgeDomain: SpaceKnowledgeDomain(
                    spaceKnowledgeDomainName:
                        "Miscesselenous Information Discovery on Private Documents",
                    spaceKnowledgeDomainDescription:
                        "gramx address, brief description and link to know more",
                  ))
                ]),
          ),
        ],
      ),
    ),
  );
}
