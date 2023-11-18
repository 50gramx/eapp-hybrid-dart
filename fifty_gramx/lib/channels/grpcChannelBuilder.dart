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

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';

Future<ClientChannel> grpcChannelBuilder(String authority, int port,
    {String certPath = ""}) async {
  final caCert = certPath == "" ? await rootBundle.loadString(certPath) : "";
  ChannelCredentials insecureCredentials = ChannelCredentials.insecure(
    authority: authority,
  );
  ChannelCredentials secureCredentials = ChannelCredentials.secure(
    certificates: utf8.encode(caCert),
    authority: authority,
    onBadCertificate: (certificate, host) => host == authority,
  );
  return ClientChannel(
    authority,
    port: port,
    options: ChannelOptions(
      idleTimeout: Duration(seconds: 1),
      credentials: certPath == "" ? insecureCredentials : secureCredentials,
    ),
  );
}
