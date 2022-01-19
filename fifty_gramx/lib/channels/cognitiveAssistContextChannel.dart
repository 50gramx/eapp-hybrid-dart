import 'package:fifty_gramx/channels/grpcChannelBuilder.dart';
import 'package:grpc/grpc.dart';

class CognitiveAssistContextCommonChannel {
  static ClientChannel? _cognitiveAssistContextChannel;

  CognitiveAssistContextCommonChannel._();

  void dispose() {
    print("CognitiveAssistContextCommonChannel:dispose");
    _cognitiveAssistContextChannel!.shutdown();
  }

  static Future<ClientChannel> get cognitiveAssistContextChannel async =>
      _cognitiveAssistContextChannel ??= await buildGrpcChannel();

  static Future<ClientChannel> buildGrpcChannel() async {
    var channel = await grpcChannelBuilder(
        "context.assist.cognitive.50gramx.com", 50507, "lib/assets/certs/identityServer.crt");
    return channel;
  }
}
