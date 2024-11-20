import 'dart:io';

import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/connections/LocalConnectionsService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/conversations/LocalConversationsService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/zero/ethos/spaces/LocalSpacesService.dart';
import 'package:fifty_gramx/services/contacts/contactService.dart';
import 'package:fifty_gramx/services/notification/local_notification_service.dart';
import 'package:fifty_gramx/services/notification/notifications_service.dart';
import 'package:permission_handler/permission_handler.dart';

class LocalServices {
  load() async {
    LocalConnectionsService();
    LocalConversationsService();
    LocalNotificationService();
    LocalSpacesService.getMySpaceKnowledgeDomains();
    LocalSpacesService.getMySpaceServiceDomains();
  }

  conversations() async {
    LocalConversationsService().getMyConversations();
  }

  reload() async {
    LocalConnectionsService().getMyConnections();
    LocalConversationsService().getMyConversations();
    LocalSpacesService.getMySpaceKnowledgeDomains();
    LocalSpacesService.getMySpaceServiceDomains();
  }

  notifications() async {
    PushNotificationService.instance.start();
  }

  contacts() async {
    // only performing in mobile devices
    if (Platform.isAndroid || Platform.isIOS) {
      if (await Permission.contacts.request().isGranted) {
        ContactService.syncAccountConnectionsWithExistingAccountMobiles();
      }
    }
  }

  user() async {
    LocalServices().reload();
    LocalServices().notifications();
    LocalServices().contacts();
  }
}
