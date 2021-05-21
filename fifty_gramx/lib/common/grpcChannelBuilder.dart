import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:grpc/grpc.dart';

Future<ClientChannel> grpcChannelBuilder(
    String authority, int port, String certPath) async {
  final caCert = await rootBundle.loadString(certPath);
  return ClientChannel(
    'identity.50gramx.com',
    port: 50501,
    options: ChannelOptions(
      credentials: ChannelCredentials.secure(
        certificates: utf8.encode(caCert),
        authority: "identity.50gramx.com",
        onBadCertificate: (certificate, host) => host == 'identity.50gramx.com',
      ),
    ),
  );
}
