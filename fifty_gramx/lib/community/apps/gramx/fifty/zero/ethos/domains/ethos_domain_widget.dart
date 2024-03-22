import 'package:eapp_dart_domain/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class EthosDomainWidget extends StatelessWidget {
  final SpaceKnowledgeDomain knowledgeDomain;

  const EthosDomainWidget({required this.knowledgeDomain});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  knowledgeDomain.spaceKnowledgeDomainName,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  knowledgeDomain.spaceKnowledgeDomainDescription,
                  style: const TextStyle(fontSize: 12.0),
                ),
                Row(
                  children: [
                    const Icon(Icons.thumb_up_alt_outlined, size: 16.0),
                    Text(knowledgeDomain.lastUpdatedAt.toString()),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
