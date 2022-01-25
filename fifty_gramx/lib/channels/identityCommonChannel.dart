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
        "identity.50gramx.com", 50501, "lib/assets/certs/identityServer.crt");
    return channel;
  }
}
