import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/account_assistant.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/conversation/message/message_conversation.pb.dart';
import 'package:fifty_gramx/services/identity/account/connectAccountService.dart';
import 'package:fifty_gramx/services/identity/account/discoverAccountService.dart';
import 'package:fifty_gramx/services/identity/accountAssistant/discoverAccountAssistantService.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
import 'package:fifty_gramx/services/product/conversation/message/messageConversationService.dart';

class LocalConnectionsService {
  LocalConnectionsService._();

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

  void dispose() {}

  static getMyConnections() async {
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
