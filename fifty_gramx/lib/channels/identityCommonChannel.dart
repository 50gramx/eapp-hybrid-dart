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

import 'package:fifty_gramx/channels/grpcChannelBuilder.dart';
import 'package:grpc/grpc.dart';

class IdentityCommonChannel {
  static ClientChannel? _identityChannel;

  IdentityCommonChannel._();

  void dispose() {
    _identityChannel!.shutdown();
  }

  static Future<ClientChannel> get identityChannel async =>
      _identityChannel ??= await buildGrpcChannel();

  static Future<ClientChannel> buildGrpcChannel() async {
    var channel = await grpcChannelBuilder(
        "122.166.150.115", 50501);
    return channel;
  }
}
