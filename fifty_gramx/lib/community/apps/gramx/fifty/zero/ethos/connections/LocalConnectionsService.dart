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

import 'package:eapp_dart_domain/ethos/elint/entities/account.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/services/identity/account/connectAccountService.dart';
import 'package:fifty_gramx/services/identity/account/discoverAccountService.dart';
import 'package:fifty_gramx/services/identity/accountAssistant/discoverAccountAssistantService.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';

class LocalConnectionsService {
  /// singleton definition
  static LocalConnectionsService? _instance;

  LocalConnectionsService._();

  factory LocalConnectionsService() {
    if (_instance == null) {
      _instance = LocalConnectionsService._();
      _instance!.getMyConnections();
    }
    return _instance!;
  }

  static Map<AccountConnectedAccountAssistant, AccountAssistantMeta>
      fullyConnectedAccountAssistants = {};
  static Map<Account, AccountConnectedAccount> inverseConnectedAccountMap = {};
  static Map<AccountAssistantMeta, AccountConnectedAccountAssistant>
      inverseConnectedAccountAssistantMap = {};
  static Map<AccountConnectedAccount, Account> fullyConnectedAccounts = {};
  static Map<AccountConnectedAccount, Account>
      interestedPartiallyConnectedAccounts = {};
  static Map<AccountConnectedAccount, Account>
      notInterestedPartiallyConnectedAccounts = {};
  static Map<AccountConnectedAccount, Account> onlyConnectedAccounts = {};
  static Map<String, AccountAssistant> mappedAccountAssistant = {};

  void dispose() {}

  int countAccounts() {
    return onlyConnectedAccounts.length;
  }

  Future<void> getMyConnections() async {
    var connectedAccountAssistants =
        await ConnectAccountService.getAllConnectedAccountAssistants();

    for (int index = 0;
        index < connectedAccountAssistants.connectedAccountAssistants.length;
        index++) {
      var accountAssistant = (await DiscoverAccountAssistantService
          .getAccountAssistantMetaByAccountAssistantId(
              connectedAccountAssistants
                  .connectedAccountAssistants[index].accountAssistantId));
      fullyConnectedAccountAssistants[
              connectedAccountAssistants.connectedAccountAssistants[index]] =
          accountAssistant.accountAssistantMeta;

      // Adding the meta to inverse map
      inverseConnectedAccountAssistantMap[
              accountAssistant.accountAssistantMeta] =
          connectedAccountAssistants.connectedAccountAssistants[index];
      notifyInsertFullyConnectedAccountAssistant(index);
      mapAccountAssistant(
          accountAssistant.accountAssistantMeta.accountAssistantId);
    }

    var connectedAccounts =
        await ConnectAccountService.getAllConnectedAccounts();

    for (int index = 0;
        index < connectedAccounts.connectedAccounts.length;
        index++) {
      var connectedAccount = connectedAccounts.connectedAccounts[index];
      var account = (await DiscoverAccountService.getAccountById(
              connectedAccount.accountId))
          .account;

      // Adding the account to inverse map
      inverseConnectedAccountMap[account] = connectedAccount;

      if (connectedAccount.accountInterestedInConnection) {
        if (connectedAccount.connectedAccountInterestedInConnection) {
          fullyConnectedAccounts[connectedAccount] = account;
          notifyInsertFullyConnectedAccount(index);
        } else {
          interestedPartiallyConnectedAccounts[connectedAccount] = account;
          notifyInsertInterestedPartiallyConnectedAccount(index);
        }
      } else {
        if (connectedAccount.connectedAccountInterestedInConnection) {
          notInterestedPartiallyConnectedAccounts[connectedAccount] = account;
          notifyInsertNotInterestedPartiallyConnectedAccount(index);
        } else {
          onlyConnectedAccounts[connectedAccount] = account;
          notifyInsertOnlyConnectedAccount(index);
        }
      }
    }
  }

  static mapAccountAssistant(String accountAssistantId) async {
    mappedAccountAssistant[accountAssistantId] =
        (await DiscoverAccountAssistantService.getAccountAssistantById(
                accountAssistantId))
            .accountAssistant;
  }

  static notifyInsertFullyConnectedAccountAssistant(int index) {
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalConnectionsService",
        {"subType": "InsertFullyConnectedAccountAssistant", "at": index}));
  }

  static notifyInsertFullyConnectedAccount(int index) {
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalConnectionsService",
        {"subType": "InsertFullyConnectedAccount", "at": index}));
  }

  static notifyInsertInterestedPartiallyConnectedAccount(int index) {
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalConnectionsService",
        {"subType": "InsertInterestedPartiallyConnectedAccount", "at": index}));
  }

  static notifyInsertNotInterestedPartiallyConnectedAccount(int index) {
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalConnectionsService", {
      "subType": "InsertNotInterestedPartiallyConnectedAccount",
      "at": index
    }));
  }

  static notifyInsertOnlyConnectedAccount(int index) {
    NotificationsBloc.instance.newNotification(LocalNotification(
        "LocalConnectionsService",
        {"subType": "InsertOnlyConnectedAccount", "at": index}));
  }
}
