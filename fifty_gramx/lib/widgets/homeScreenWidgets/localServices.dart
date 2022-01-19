import 'package:fifty_gramx/widgets/homeScreenWidgets/connections/LocalConnectionsService.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/conversations/LocalConversationsService.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/spaces/LocalSpacesService.dart';

class LocalServices {
  loadLocalServices() async {
    LocalConnectionsService.getMyConnections();
    LocalSpacesService.getMySpaceKnowledgeDomains();
    LocalConversationsService.getMyConversations();
  }

  reloadConversationsService() {
    print("reloadConversationsService:start");
    LocalConversationsService.getMyConversations();
    print("reloadConversationsService:finish");
  }
}
