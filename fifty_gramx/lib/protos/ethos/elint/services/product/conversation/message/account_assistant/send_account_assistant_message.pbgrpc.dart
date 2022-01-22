///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/conversation/message/account_assistant/send_account_assistant_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'send_account_assistant_message.pb.dart' as $44;
export 'send_account_assistant_message.pb.dart';

class SendAccountAssistantMessageServiceClient extends $grpc.Client {
  static final _$sendMessageToAccount = $grpc.ClientMethod<
          $44.MessageForAccount, $44.MessageForAccountSent>(
      '/elint.services.product.conversation.message.account.assistant.SendAccountAssistantMessageService/SendMessageToAccount',
      ($44.MessageForAccount value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.MessageForAccountSent.fromBuffer(value));

  SendAccountAssistantMessageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$44.MessageForAccountSent> sendMessageToAccount(
      $44.MessageForAccount request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessageToAccount, request, options: options);
  }
}

abstract class SendAccountAssistantMessageServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.conversation.message.account.assistant.SendAccountAssistantMessageService';

  SendAccountAssistantMessageServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$44.MessageForAccount, $44.MessageForAccountSent>(
            'SendMessageToAccount',
            sendMessageToAccount_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $44.MessageForAccount.fromBuffer(value),
            ($44.MessageForAccountSent value) => value.writeToBuffer()));
  }

  $async.Future<$44.MessageForAccountSent> sendMessageToAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$44.MessageForAccount> request) async {
    return sendMessageToAccount(call, await request);
  }

  $async.Future<$44.MessageForAccountSent> sendMessageToAccount(
      $grpc.ServiceCall call, $44.MessageForAccount request);
}
