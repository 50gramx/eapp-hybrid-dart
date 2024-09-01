import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/navigation/left/layout_breakpoint.dart';
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
                  Container(
                    padding: LayoutBreakpoint().isNavigatingLeft(context)
                        ? EdgeInsets.symmetric(
                            vertical: 60.0,
                            horizontal: 80.0) // More padding for desktop
                        : EdgeInsets.symmetric(
                            vertical: 40.0,
                            horizontal: 20.0), // Less padding for mobile
                    child: Text(
                      "Trending Collars",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: AppColors.contentPrimary(context),
                          fontSize: 36,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 10),
                  // EthosDomainWidget(
                  //     knowledgeDomain: SpaceKnowledgeDomain(
                  //   spaceKnowledgeDomainId: "/53/vinayak",
                  //   spaceKnowledgeDomainName:
                  //       "Vianayak Domain Collar For Job Seekers & HR Professionals",
                  //   spaceKnowledgeDomainDescription:
                  //       "Ability to analyze and interpret offer letters, provide insights on salary, benefits, and terms, and facilitate negotiation.",
                  // )),
                  EthosDomainWidget(
                    knowledgeDomain: SpaceKnowledgeDomain(
                      spaceKnowledgeDomainId: "/70/ethos-nodes",
                      spaceKnowledgeDomainName:
                          "Start earning by running a slice of 50GRAMx network",
                      spaceKnowledgeDomainDescription:
                          "Transform Your Spare Computing Power into Income with 50GRAMx Ethos Nodes",
                      lastUpdatedAt: Timestamp.fromDateTime(DateTime.now()),
                    ),
                    primaryCTAtitle: "Join Now",
                    secondaryCTAtitle: "Learn more",
                  ),
                  EthosDomainWidget(
                    knowledgeDomain: SpaceKnowledgeDomain(
                      spaceKnowledgeDomainId: "/53/satwa-plus",
                      spaceKnowledgeDomainName:
                          "SATWA - Next-Generation Staffing Solutions",
                      spaceKnowledgeDomainDescription:
                          "Empower your workforce with S.A.t.W.A. - A tailored staffing solution designed for your unique business needs",
                      lastUpdatedAt: Timestamp.fromDateTime(DateTime.now()),
                    ),
                    primaryCTAtitle: "Contact Us",
                    secondaryCTAtitle: "View Details",
                  ),
                  // EthosDomainWidget(
                  //     knowledgeDomain: SpaceKnowledgeDomain(
                  //   spaceKnowledgeDomainId: "/66/offer",
                  //   spaceKnowledgeDomainName:
                  //       "Miscesselenous Information Discovery on Private Documents",
                  //   spaceKnowledgeDomainDescription:
                  //       "gramx address, brief description and link to know more",
                  // ))
                ]),
          ),
        ],
      ),
    ),
  );
}
