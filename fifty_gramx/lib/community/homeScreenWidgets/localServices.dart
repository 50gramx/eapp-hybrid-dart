import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/connections/LocalConnectionsService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/LocalConversationsService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/spaces/LocalSpacesService.dart';

class LocalServices {
  loadLocalServices() async {
    LocalConnectionsService.getMyConnections();
    LocalSpacesService.getMySpaceKnowledgeDomains();
    LocalConversationsService.getMyConversations();
  }

  reloadConversationsService() {
    LocalConversationsService.getMyConversations();
  }
}
