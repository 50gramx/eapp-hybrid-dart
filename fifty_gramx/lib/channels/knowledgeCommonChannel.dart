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
