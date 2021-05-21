///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/conversation/message/account_assistant/receive_account_assistant_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'receive_account_assistant_message.pb.dart' as $46;
export 'receive_account_assistant_message.pb.dart';

class ReceiveAccountAssistantMessageServiceClient extends $grpc.Client {
  static final _$receiveMessageFromAccount = $grpc.ClientMethod<
          $46.MessageFromAccount, $46.MessageFromAccountReceived>(
      '/elint.services.product.conversation.message.account.assistant.ReceiveAccountAssistantMessageService/ReceiveMessageFromAccount',
      ($46.MessageFromAccount value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $46.MessageFromAccountReceived.fromBuffer(value));

  ReceiveAccountAssistantMessageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$46.MessageFromAccountReceived>
      receiveMessageFromAccount($46.MessageFromAccount request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$receiveMessageFromAccount, request,
        options: options);
  }
}

abstract class ReceiveAccountAssistantMessageServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.conversation.message.account.assistant.ReceiveAccountAssistantMessageService';

  ReceiveAccountAssistantMessageServiceBase() {
    $addMethod($grpc.ServiceMethod<$46.MessageFromAccount,
            $46.MessageFromAccountReceived>(
        'ReceiveMessageFromAccount',
        receiveMessageFromAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $46.MessageFromAccount.fromBuffer(value),
        ($46.MessageFromAccountReceived value) => value.writeToBuffer()));
  }

  $async.Future<$46.MessageFromAccountReceived> receiveMessageFromAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$46.MessageFromAccount> request) async {
    return receiveMessageFromAccount(call, await request);
  }

  $async.Future<$46.MessageFromAccountReceived> receiveMessageFromAccount(
      $grpc.ServiceCall call, $46.MessageFromAccount request);
}
