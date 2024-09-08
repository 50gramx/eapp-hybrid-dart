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

import 'package:fifty_gramx/channels/grpcChannelBuilder.dart'
    if (dart.library.html) 'package:fifty_gramx/channels/grpcWebChannelBuilder.dart';
import 'package:flutter/foundation.dart';

class PySyncCapsCommonChannel {
  static dynamic _pySyncCapsCommonChannel;

  PySyncCapsCommonChannel._();

  void dispose() {
    _pySyncCapsCommonChannel!.shutdown();
  }

  static Future<dynamic> get pySyncCapsCommonChannel async =>
      _pySyncCapsCommonChannel ??= await buildGrpcChannel();

  static Future<dynamic> buildGrpcChannel() async {
    if (kDebugMode) {
      print("buildGrpcChannel");
    }
    // final web_channel = GrpcWebClientChannel.xhr(Uri.parse('http://122.166.150.115:50503'));
    //   final web_client = AccessAccountServiceClient(web_channel);
    var channel;
    var uri;
    var port = 443;
    if (kIsWeb) {
      if (kDebugMode) {
        print('is web');
      }
      uri =
          "https://capabilities.atlas.starflare.bangalore.in.networks.50gramx.com";
    } else {
      uri = '122.166.150.115';
      port = 50501;
    }
    channel = await grpcChannelBuilder(uri, port);
    if (kDebugMode) {
      print("returning ${channel.runtimeType}");
    }
    return channel;
  }
}
