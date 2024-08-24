import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
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
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: NeumorphicTheme.isUsingDark(context)
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              knowledgeDomain.spaceKnowledgeDomainDescription,
              style: TextStyle(
                fontSize: 14.0,
                color: NeumorphicTheme.isUsingDark(context)
                    ? Colors.grey[400]
                    : Colors.grey[700],
              ),
            ),
            const SizedBox(height: 12.0),
            Row(
              children: [
                Icon(Icons.star, size: 16.0, color: Colors.amber[600]),
                const SizedBox(width: 4.0),
                Text(
                  '4.6 / 5.0',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: NeumorphicTheme.isUsingDark(context)
                        ? Colors.grey[300]
                        : Colors.grey[600],
                  ),
                ),
                const SizedBox(width: 16.0),
                Icon(Icons.date_range, size: 16.0, color: Colors.grey[600]),
                const SizedBox(width: 4.0),
                Text(
                  'Updated: ${knowledgeDomain.lastUpdatedAt.toDateTime().toLocal().month}/${knowledgeDomain.lastUpdatedAt.toDateTime().toLocal().year}',
                  style: TextStyle(
                    fontSize: 12.0,
                    color: NeumorphicTheme.isUsingDark(context)
                        ? Colors.grey[300]
                        : Colors.grey[600],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context,
                        "${knowledgeDomain.spaceKnowledgeDomainId}" + "/plans");
                  },
                  child: Text('Purchase'),
                ),
                const SizedBox(width: 8.0),
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, knowledgeDomain.spaceKnowledgeDomainId);
                  },
                  child: Text('View Details'),
                ),
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
