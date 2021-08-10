import 'package:fifty_gramx/assets/colors/AppColors.dart';
import 'package:fifty_gramx/widgets/onboarding/galaxyMachineInfoWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SpaceViewCard extends StatelessWidget {
  @override
  const SpaceViewCard({
    Key? key,
    this.identityMetaCount = 0,
    this.conversationsMetaCount = 0,
    this.knowledgeDomainsMetaCount = 0,
  }) : super(key: key);

  final int identityMetaCount;
  final int conversationsMetaCount;
  final int knowledgeDomainsMetaCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(6, 12, 6, 12),
      child: Column(
        children: [
          Neumorphic(
            style: NeumorphicStyle(
              lightSource: NeumorphicTheme.isUsingDark(context)
                  ? LightSource.bottomRight
                  : LightSource.topLeft,
              shadowLightColor: NeumorphicTheme.isUsingDark(context)
                  ? AppColors.gray600
                  : AppColors.backgroundSecondary(context),
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
              color: AppColors.backgroundPrimary(context),
              border: NeumorphicBorder(
                isEnabled: true,
                color: AppColors.backgroundPrimary(context),
                width: 2,
              ),
            ),
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Container(
              height: 115,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GalaxyMachineInfoWidget(
                    machinePodName: "Identity Pod",
                    machineTypeName: "X2 Spaces",
                    machineMetaCount: identityMetaCount,
                    machineMetaLabel: "49 Spaces left",
                  ),
                  GalaxyMachineInfoWidget(
                    machinePodName: "Conversations Pod",
                    machineTypeName: "X2 Spaces",
                    machineMetaCount: conversationsMetaCount,
                    machineMetaLabel: "49 Spaces left",
                  ),
                  GalaxyMachineInfoWidget(
                    machinePodName: "Knowledge Pod",
                    machineTypeName: "M2 Spaces",
                    machineMetaCount: knowledgeDomainsMetaCount,
                    machineMetaLabel: "49 Spaces left",
                  ),
                ],
              ),
            ),
          ),
          // Neumorphic(
          //   style: NeumorphicStyle(
          //     lightSource: NeumorphicTheme.isUsingDark(context)
          //         ? LightSource.bottomRight
          //         : LightSource.topLeft,
          //     shadowLightColor: NeumorphicTheme.isUsingDark(context)
          //         ? AppColors.gray600
          //         : AppColors.backgroundSecondary(context),
          //     shape: NeumorphicShape.flat,
          //     boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only(bottomRight: Radius.circular(24), bottomLeft: Radius.circular(24))),
          //     color: AppColors.backgroundPrimary(context),
          //     border: NeumorphicBorder(
          //       isEnabled: true,
          //       color: AppColors.backgroundPrimary(context),
          //       width: 2,
          //     ),
          //   ),
          //   child: Row(
          //     children: [
          //       Expanded(
          //         child: Align(
          //           alignment: Alignment.centerLeft,
          //           child: Padding(
          //             padding:
          //             EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
          //             child: RichText(
          //               text: TextSpan(
          //                 text: "${accountDetails.accountFirstName}'s Ethos Galaxy",
          //                 style: TextStyle(
          //                     color: AppColors.contentSecondary(context),
          //                     fontSize: 14,
          //                     fontFamily: "Montserrat",
          //                     fontWeight: FontWeight.w600,
          //                     height: 1.14285714),
          //               ),
          //             ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
