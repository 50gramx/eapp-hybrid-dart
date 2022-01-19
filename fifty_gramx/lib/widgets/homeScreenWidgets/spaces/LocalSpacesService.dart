import 'package:fifty_gramx/protos/ethos/elint/entities/space_knowledge_domain.pb.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:fifty_gramx/services/product/knowledge/space/discoverSpaceKnowledgeService.dart';

class LocalSpacesService {
  LocalSpacesService._();

  static List<SpaceKnowledgeDomain> mySpaceKnowledgeDomains = [];

  void dispose() {}

  static getMySpaceKnowledgeDomains() async {
    var getSpaceKnowledgeDomainsResponse =
        await DiscoverSpaceKnowledgeService.getSpaceKnowledgeDomains();
    mySpaceKnowledgeDomains =
        getSpaceKnowledgeDomainsResponse.spaceKnowledgeDomains;
    for (int index = 0; index < mySpaceKnowledgeDomains.length; index++) {
      notifyAddedSpaceKnowledgeDomain(index);
    }
  }

  static notifyAddedSpaceKnowledgeDomain(int index) {
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalSpacesService",
        {"subType": "AddedSpaceKnowledgeDomain", "at": index}));
  }
}
