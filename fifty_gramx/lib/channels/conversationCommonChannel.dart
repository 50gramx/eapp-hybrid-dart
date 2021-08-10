import 'package:fifty_gramx/channels/grpcChannelBuilder.dart';
import 'package:grpc/grpc.dart';

class ConversationCommonChannel {
  static ClientChannel? _conversationChannel;

  ConversationCommonChannel._();

  void dispose() {
    _conversationChannel!.shutdown();
  }

  static Future<ClientChannel> get conversationChannel async =>
      _conversationChannel ??= await buildGrpcChannel();

  static Future<ClientChannel> buildGrpcChannel() async {
    var channel = await grpcChannelBuilder("conversation.50gramx.com", 50504,
        "lib/assets/certs/conversationServer.crt");
    return channel;
  }
}
