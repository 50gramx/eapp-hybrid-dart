import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/colors/AppColors.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/connect_account.pb.dart';
import 'package:fifty_gramx/services/identity/account/connectAccountService.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/Box/AppBoxDecoration.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/compact/artworknone/chevronWithLabelTrailing.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/connections/listItem/AccountConnectedAccountAssistantListItem.dart';
import 'package:fifty_gramx/community/apps/gramx/fifty/five/ethos/level/components/listItem/connections/listItem/ContactsListItem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// Import package
import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';

/// This is the stateful widget that the main application instantiates.
class ContactsListViewWidget extends StatefulWidget {
  const ContactsListViewWidget({
    Key? key,
    required this.pushContactConversationPage,
    required this.allConnectedAssistantsWithBelongingEntity,
  }) : super(key: key);

  final Function(Contact) pushContactConversationPage;
  final List<ConnectedAssistantsWithBelongingEntity>
      allConnectedAssistantsWithBelongingEntity;

  @override
  State<ContactsListViewWidget> createState() {
    print("AllAssistantsConnectionsStreamingListViewWidget:createState");
    return _ContactsListViewWidgetState();
  }
}

class _ContactsListViewWidgetState extends State<ContactsListViewWidget> {
  // final List<ConnectedAssistantsWithBelongingEntity> getAllConnectedAssistantsWithBelongingEntityStream

  late Iterable<Contact> contacts;
  List<Contact> fetchedContacts = [];

  getAllContacts() async {

    print("getAllContacts");
    if (await Permission.contacts.request().isGranted) {
      print("permissions granted");
      // Get all contacts without thumbnail (faster)
      contacts = await ContactsService.getContacts(withThumbnails: true);
      print("${contacts.length}");
      for (var contact in contacts) {
        setState(() {
          fetchedContacts.add(contact);
        });
      }
    } else {
      print("permissions not granted");
    }
  }

  @override
  void initState() {
    getAllContacts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
      child: Neumorphic(
        style: NeumorphicStyle(
          color: AppColors.backgroundPrimary(context),
          lightSource: NeumorphicTheme.isUsingDark(context)
              ? LightSource.bottomRight
              : LightSource.topLeft,
          shadowLightColor: NeumorphicTheme.isUsingDark(context)
              ? AppColors.gray600
              : AppColors.backgroundSecondary(context),
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(24)),
          border: NeumorphicBorder(
              color: AppColors.backgroundPrimary(context), width: 2),
        ),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChevronWithLabelTrailing(
                  labelText: 'People Contacts',
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: fetchedContacts.length > 5 ? 5 : fetchedContacts.length,
                  itemBuilder: (_, int index) {
                    return ContactListItemWidget(
                      contact: fetchedContacts[index],
                      pushContactConversation: () {
                        widget.pushContactConversationPage(
                            fetchedContacts[index]);
                      },
                    );
                  },
                ),
              ],
            )),
      ),
    );
  }
}
