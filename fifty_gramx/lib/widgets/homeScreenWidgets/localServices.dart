import 'package:fifty_gramx/widgets/homeScreenWidgets/connections/LocalConnectionsService.dart';
import 'package:fifty_gramx/widgets/homeScreenWidgets/conversations/LocalConversationsService.dart';

class LocalServices {

  loadLocalServices() async {
    await LocalConnectionsService.getMyConnections();
    LocalConversationsService.getMyConversations();
  }
}