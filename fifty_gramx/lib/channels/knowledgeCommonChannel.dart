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

class KnowledgeCommonChannel {
  static ClientChannel? _knowledgeChannel;

  KnowledgeCommonChannel._();

  void dispose() {
    print("KnowledgeCommonChannel:dispose");
    _knowledgeChannel!.shutdown();
  }

  static Future<ClientChannel> get knowledgeChannel async =>
      _knowledgeChannel ??= await buildGrpcChannel();

  static Future<ClientChannel> buildGrpcChannel() async {
    var channel = await grpcChannelBuilder(
        "knowledge.50gramx.com", 50502, "lib/assets/certs/knowledgeServer.crt");
    return channel;
  }
}
