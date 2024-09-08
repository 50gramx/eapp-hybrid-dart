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
import 'package:eapp_dart_domain/ethos/elint/services/product/identity/account/notify_account.pbgrpc.dart';
import 'package:fifty_gramx/channels/pySyncCapsCommonChannel.dart';
import 'package:fifty_gramx/data/accountData.dart';
import 'package:flutter/foundation.dart';

class NotifyAccountService {
  // Client declarations here
  static NotifyAccountServiceClient? _serviceClient;

  NotifyAccountService._();

  // getting the client on the very first call
  static Future<NotifyAccountServiceClient> get serviceClient async =>
      _serviceClient ??= NotifyAccountServiceClient(
          await PySyncCapsCommonChannel.pySyncCapsCommonChannel);

  void dispose() {
    if (kDebugMode) {
      print("NotifyAccountService:dispose");
    }
  }

  // Service declarations here
  static Future<ResponseMeta> updateAccountDeviceDetails(
      AccountDeviceDetails accountDeviceDetails) async {
    var request = UpdateAccountDeviceDetailsRequest()
      ..accessAuthDetails =
          await AccountData().readAccountServicesAccessAuthDetails()
      ..accountDeviceDetails = accountDeviceDetails;
    return await (await serviceClient).updateAccountDeviceDetails(request);
  }
}
