import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';

Future<ClientChannel> grpcChannelBuilder(
    String authority, int port, String certPath) async {
  final caCert = await rootBundle.loadString(certPath);
  return ClientChannel(
    authority,
    port: port,
    options: ChannelOptions(
      idleTimeout: Duration(seconds: 1),
      credentials: ChannelCredentials.secure(
        certificates: utf8.encode(caCert),
        authority: authority,
        onBadCertificate: (certificate, host) => host == authority,
      ),
    ),
  );
}
