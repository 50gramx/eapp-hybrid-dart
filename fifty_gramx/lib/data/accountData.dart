import 'package:fifty_gramx/protos/ethos/elint/entities/account.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/entities/generic.pb.dart';
import 'package:fifty_gramx/protos/ethos/elint/services/product/identity/account/access_account.pb.dart';
import 'package:fifty_gramx/services/identity/account/accessAccountService.dart';
import 'package:fifty_gramx/services/identity/account/notifyAccountService.dart';
import 'package:fifty_gramx/services/notification/notifications_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccountData {
  saveAccountId(String accountId) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('accountId', accountId);
  }

  Future<String> readAccountId() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('accountId') ?? "";
  }

  saveIsAccountBillingActive(bool isAccountBillingActive) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isAccountBillingActive', isAccountBillingActive);
  }

  Future<bool> readIsAccountBillingActive() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isAccountBillingActive') ?? false;
  }

  saveAccount(Account account) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('account', account.writeToJson());
  }

  Future<Account> readAccount() async {
    final prefs = await SharedPreferences.getInstance();
    var details = prefs.getString('account') ?? "";
    if (details == "") {
      return Account.getDefault();
    } else {
      return Account.fromJson(details);
    }
  }

  saveAccountServicesAccessSessionTokenDetails(
      PersistentSessionTokenDetails
          accountServicesAccessSessionTokenDetails) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("accountServicesAccessSessionTokenDetails",
        accountServicesAccessSessionTokenDetails.writeToJson());
  }

  Future<PersistentSessionTokenDetails>
      readAccountServicesAccessSessionTokenDetails() async {
    final prefs = await SharedPreferences.getInstance();
    var details =
        prefs.getString('accountServicesAccessSessionTokenDetails') ?? "";
    if (details == "") {
      return PersistentSessionTokenDetails.getDefault();
    } else {
      return PersistentSessionTokenDetails.fromJson(details);
    }
  }

  saveAccountServicesAccessAuthDetails(
      AccountServicesAccessAuthDetails accountServicesAccessAuthDetails) async {
    final prefs = await SharedPreferences.getInstance();
    if (accountServicesAccessAuthDetails.account.accountBillingActive) {
      saveIsAccountBillingActive(true);
    } else {
      saveIsAccountBillingActive(false);
    }
    saveAccount(accountServicesAccessAuthDetails.account);
    saveAccountServicesAccessSessionTokenDetails(
        accountServicesAccessAuthDetails
            .accountServicesAccessSessionTokenDetails);
    // TODO: remove this, modify read services
    prefs.setString('accountServicesAccessAuthDetails',
        accountServicesAccessAuthDetails.writeToJson());
  }

  Future<AccountServicesAccessAuthDetails>
      readAccountServicesAccessAuthDetails() async {
    print("invoked readAccountServicesAccessAuthDetails");
    var accountServicesAccessAuthDetails = AccountServicesAccessAuthDetails(
        account: await readAccount(),
        accountServicesAccessSessionTokenDetails:
            await readAccountServicesAccessSessionTokenDetails(),
        requestedAt: Timestamp.fromDateTime(DateTime.now()));

    var validateAccountServicesResponse =
        await AccessAccountService.validateAccountServices(
            accountServicesAccessAuthDetails);
    print("response: validateAccountServicesResponse");

    if (validateAccountServicesResponse.accountServiceAccessValidationDone ==
        false) {
      if (validateAccountServicesResponse
              .accountServiceAccessValidationMessage ==
          "Session has expired. Retrieve a new session.") {
        var reAccountAccessTokenResponse =
            await AccessAccountService.reAccountAccessToken(
                accountServicesAccessAuthDetails);
        if (reAccountAccessTokenResponse.responseMeta.metaDone) {
          AccountData().saveAccountServicesAccessAuthDetails(
              reAccountAccessTokenResponse.accountServiceAccessAuthDetails);
          NotifyAccountService.updateAccountDeviceDetails(
              await PushNotificationService.instance.getAccountDeviceDetails());
          return reAccountAccessTokenResponse.accountServiceAccessAuthDetails;
        } else {
          return AccountServicesAccessAuthDetails.getDefault();
        }
      } else {
        return AccountServicesAccessAuthDetails.getDefault();
      }
    } else {
      return accountServicesAccessAuthDetails;
    }
  }
}
