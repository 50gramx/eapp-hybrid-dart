import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/NeuButton/actionNeuButton.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EthosDomainWidget extends StatelessWidget {
  final SpaceKnowledgeDomain knowledgeDomain;

  const EthosDomainWidget({required this.knowledgeDomain});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      style: NeumorphicStyle(
        depth: 6,
        intensity: 0.9,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(16)),
        color: NeumorphicTheme.isUsingDark(context)
            ? Colors.grey[850]
            : Colors.white,
        shadowLightColor: NeumorphicTheme.isUsingDark(context)
            ? Colors.black.withOpacity(0.5)
            : Colors.grey[300],
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            colors: [
              AppColors.backgroundSecondary(context),
              AppColors.backgroundTertiary(context)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Placeholder for any image or icon
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(12.0),
            //   child: Container(
            //     color: Colors.grey[200],
            //     width: double.infinity,
            //     height: 120.0,
            //     child: Icon(Icons.domain, size: 80.0, color: Colors.grey[600]),
            //   ),
            // ),
            // const SizedBox(height: 16.0),
            Text(
              knowledgeDomain.spaceKnowledgeDomainName,
              style: TextStyle(
                  color: AppColors.contentPrimary(context),
                  fontSize: 20,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8.0),
            Text(
              knowledgeDomain.spaceKnowledgeDomainDescription,
              style: TextStyle(
                  color: AppColors.contentPrimary(context),
                  fontSize: 16,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 12.0),
            Row(
              children: [
                Icon(Icons.star, size: 16.0, color: AppColors.orange(context)),
                const SizedBox(width: 4.0),
                Text(
                  '4.6 / 5.0',
                  style: TextStyle(
                      color: AppColors.contentPrimary(context),
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(width: 16.0),
                Icon(Icons.date_range, size: 16.0, color: Colors.grey[600]),
                const SizedBox(width: 4.0),
                Text(
                  'Updated: ${knowledgeDomain.lastUpdatedAt.toDateTime().toLocal().month}/${knowledgeDomain.lastUpdatedAt.toDateTime().toLocal().year}',
                  style: TextStyle(
                      fontSize: 12.0,
                      fontFamily: "Montserrat",
                      color: AppColors.contentPrimary(context),
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                ActionNeuButton(
                    buttonTitle: "Purchase",
                    isPrimaryButton: true,
                    noBorder: false,
                    buttonActionOnPressed: () {
                      Navigator.pushNamed(
                          context,
                          "${knowledgeDomain.spaceKnowledgeDomainId}" +
                              "/plans");
                    }),
                const SizedBox(width: 8.0),
                ActionNeuButton(
                    buttonTitle: "View Details",
                    isPrimaryButton: false,
                    noBorder: true,
                    buttonActionOnPressed: () {
                      Navigator.pushNamed(
                          context, knowledgeDomain.spaceKnowledgeDomainId);
                    }),
              ],
            ),
            // const SizedBox(height: 8.0),
            // Row(
            //   children: [
            //     IconButton(
            //       icon: Icon(Icons.bookmark_border),
            //       onPressed: () {
            //         // Implement save/bookmark functionality
            //       },
            //     ),
            //     IconButton(
            //       icon: Icon(Icons.share),
            //       onPressed: () {
            //         // Implement share functionality
            //       },
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
