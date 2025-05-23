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
import 'package:eapp_dart_domain/ethos/elint/entities/generic.pb.dart';
import 'package:eapp_dart_domain/ethos/elint/services/product/identity/account/access_account.pb.dart';
import 'package:fifty_gramx/services/identity/account/accessAccountService.dart';
import 'package:fifty_gramx/services/identity/account/notifyAccountService.dart';
import 'package:fifty_gramx/services/notification/notifications_bloc.dart';
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

  emptyAccount() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('account', Account.getDefault().writeToJson());
  }

  Future<bool> isValid() async {
    // Create a stopwatch and start it
    final stopwatch = Stopwatch()..start();
    await AccountData().readAccountServicesAccessAuthDetails();
    var accountServicesAccessAuthDetails = AccountServicesAccessAuthDetails(
        account: await readAccount(),
        accountServicesAccessSessionTokenDetails:
            await readAccountServicesAccessSessionTokenDetails(),
        requestedAt: Timestamp.fromDateTime(DateTime.now()));

    var validateAccountServicesResponse =
        await AccessAccountService.validateAccountServices(
            accountServicesAccessAuthDetails);
    stopwatch.stop();
    NotificationsBloc.instance.newEAppNotification(
        "50",
        "ethos",
        "identity",
        "EAIP-1001",
        "50DC5000000000000",
        "${stopwatch.elapsedMilliseconds} ms to discover account access.");
    return validateAccountServicesResponse.accountServiceAccessValidationDone;
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
    final stopwatch = Stopwatch()..start();

    var accountServicesAccessAuthDetails = AccountServicesAccessAuthDetails(
        account: await readAccount(),
        accountServicesAccessSessionTokenDetails:
            await readAccountServicesAccessSessionTokenDetails(),
        requestedAt: Timestamp.fromDateTime(DateTime.now()));

    var validateAccountServicesResponse =
        await AccessAccountService.validateAccountServices(
            accountServicesAccessAuthDetails);

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
          stopwatch.stop();
          NotificationsBloc.instance.newEAppNotification(
              "50",
              "ethos",
              "identity",
              "EAIP-1001",
              "50DC5000000000000",
              "Services re-authorised in ${stopwatch.elapsedMilliseconds}ms.");
          return reAccountAccessTokenResponse.accountServiceAccessAuthDetails;
        } else {
          stopwatch.stop();
          NotificationsBloc.instance.newEAppNotification(
              "50",
              "ethos",
              "identity",
              "EAIP-1001",
              "50DC5000000000000",
              "Account services session has expired.");
          return AccountServicesAccessAuthDetails.getDefault();
        }
      } else {
        stopwatch.stop();
        NotificationsBloc.instance.newEAppNotification(
            "50",
            "ethos",
            "identity",
            "EAIP-1001",
            "50DC5000000000000",
            "Invalid account services session.");
        return AccountServicesAccessAuthDetails.getDefault();
      }
    } else {
      stopwatch.stop();
      NotificationsBloc.instance.newEAppNotification(
          "50",
          "ethos",
          "identity",
          "EAIP-1001",
          "50DC5000000000000",
          "Services validated in ${stopwatch.elapsedMilliseconds}ms.");
      return accountServicesAccessAuthDetails;
    }
  }
}
