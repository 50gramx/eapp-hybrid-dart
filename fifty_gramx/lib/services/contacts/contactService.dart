/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

import 'package:contacts_service/contacts_service.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/connect_account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/discover_account.pb.dart';
import 'package:fifty_gramx/services/identity/account/connectAccountService.dart';
import 'package:fifty_gramx/services/identity/account/discoverAccountService.dart';
import 'package:permission_handler/permission_handler.dart';

class ContactService {
  ContactService._();

  void dispose() {}

  static List<Contact>? _contacts;
  static List<List<String>>? _contactPhones;
  static List<List<AccountMobile>>? _accountMobiles;

  static Future<List<Contact>> get contacts async =>
      _contacts ??= await fetchContacts();

  static Future<List<List<String>>> get contactPhones async =>
      _contactPhones ??= await fetchContactsPhones();

  static Future<List<List<AccountMobile>>> get accountMobiles async =>
      _accountMobiles ??= await fetchAccountMobiles();

  static syncAccountConnectionsWithExistingAccountMobiles() async {
    List<AccountMobile> listOfAccountMobiles =
        (await accountMobiles).expand((i) => i).toList();
    Stream<AreAccountsExistingWithMobileResponse> streamController =
        await DiscoverAccountService.areAccountsExistingWithMobile(
            listOfAccountMobiles);
    streamController.listen((event) {
      if (event.accountMobilesExists.accountExists) {
        print(
            "Account Exists: ${event.accountMobilesExists.accountMobileNumber}, connecting now...");
        var temporaryResponse = ConnectAccountService.syncAccountConnections(
            AccountMobile(
                accountCountryCode:
                    event.accountMobilesExists.accountCountryCode,
                accountMobileNumber:
                    event.accountMobilesExists.accountMobileNumber));
      }
    });
  }

  static Future<List<List<AccountMobile>>> fetchAccountMobiles() async {
    List<List<AccountMobile>> accountMobiles = [];

    Stream<ParseStreamingAccountMobilesRequest> outgoingNotes() async* {
      for (List<String> contactPhone in await contactPhones) {
        var request = ParseStreamingAccountMobilesRequest()
          ..connectingAccountMobileNumbers.addAll(contactPhone);
        yield request;
      }
    }

    final call = (await ConnectAccountService.serviceClient)
        .parseStreamingAccountMobiles(outgoingNotes());
    await for (var note in call) {
      accountMobiles.add(note.accountMobiles);
    }
    return accountMobiles;
  }

  static Future<List<List<String>>> fetchContactsPhones() async {
    List<List<String>> listOfContactPhones = [];
    for (Contact contact in await contacts) {
      if (contact.phones != null) {
        if (contact.phones!.length > 0) {
          List<String> contactPhones = [];
          for (var phone in contact.phones!) {
            if (!contactPhones
                .contains(phone.value!.trim().replaceAll(" ", ""))) {
              contactPhones.add(phone.value!.trim().replaceAll(" ", ""));
            }
          }
          listOfContactPhones.add(contactPhones);
        } else {
          listOfContactPhones.add([]);
        }
      } else {
        listOfContactPhones.add([]);
      }
    }
    return listOfContactPhones;
  }

  static Future<List<Contact>> fetchContacts() async {
    if (await Permission.contacts.request().isGranted) {
      var fetchedContacts =
          await ContactsService.getContacts(withThumbnails: false);
      List<Contact> listOfContacts = [];
      for (var fetchedContact in fetchedContacts) {
        listOfContacts.add(fetchedContact);
      }
      return listOfContacts;
    } else {
      return [];
    }
  }
}
