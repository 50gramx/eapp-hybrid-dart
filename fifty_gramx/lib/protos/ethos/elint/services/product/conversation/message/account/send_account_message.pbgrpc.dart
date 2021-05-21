///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/conversation/message/account/send_account_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'send_account_message.pb.dart' as $45;
import '../../../identity/account/access_account.pb.dart' as $0;
export 'send_account_message.pb.dart';

class SendAccountMessageServiceClient extends $grpc.Client {
  static final _$sendMessageToAccountAssistant = $grpc.ClientMethod<
          $45.MessageForAccountAssistant, $45.MessageForAccountAssistantSent>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/SendMessageToAccountAssistant',
      ($45.MessageForAccountAssistant value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $45.MessageForAccountAssistantSent.fromBuffer(value));
  static final _$sendMessageToAccount = $grpc.ClientMethod<
          $45.MessageForAccount, $45.MessageForAccountSent>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/SendMessageToAccount',
      ($45.MessageForAccount value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $45.MessageForAccountSent.fromBuffer(value));
  static final _$sendSpeedMessageToAccount = $grpc.ClientMethod<
          $45.MessageForAccount, $45.FullMessageForAccountSent>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/SendSpeedMessageToAccount',
      ($45.MessageForAccount value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $45.FullMessageForAccountSent.fromBuffer(value));
  static final _$syncAccountAssistantSentMessages = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $45.AccountAssistantSentMessage>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/SyncAccountAssistantSentMessages',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $45.AccountAssistantSentMessage.fromBuffer(value));
  static final _$syncAccountSentMessages = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $45.SyncAccountSentMessagesResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/SyncAccountSentMessages',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $45.SyncAccountSentMessagesResponse.fromBuffer(value));
  static final _$syncAccountConnectedAccountSentMessages = $grpc.ClientMethod<
          $45.SyncAccountConnectedAccountSentMessagesRequest,
          $45.SyncAccountConnectedAccountSentMessagesResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/SyncAccountConnectedAccountSentMessages',
      ($45.SyncAccountConnectedAccountSentMessagesRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $45.SyncAccountConnectedAccountSentMessagesResponse.fromBuffer(
              value));

  SendAccountMessageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$45.MessageForAccountAssistantSent>
      sendMessageToAccountAssistant($45.MessageForAccountAssistant request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessageToAccountAssistant, request,
        options: options);
  }

  $grpc.ResponseFuture<$45.MessageForAccountSent> sendMessageToAccount(
      $45.MessageForAccount request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessageToAccount, request, options: options);
  }

  $grpc.ResponseStream<$45.FullMessageForAccountSent> sendSpeedMessageToAccount(
      $async.Stream<$45.MessageForAccount> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$sendSpeedMessageToAccount, request,
        options: options);
  }

  $grpc.ResponseStream<$45.AccountAssistantSentMessage>
      syncAccountAssistantSentMessages(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$syncAccountAssistantSentMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$45.SyncAccountSentMessagesResponse>
      syncAccountSentMessages($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$syncAccountSentMessages, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$45.SyncAccountConnectedAccountSentMessagesResponse>
      syncAccountConnectedAccountSentMessages(
          $45.SyncAccountConnectedAccountSentMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$syncAccountConnectedAccountSentMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class SendAccountMessageServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.conversation.message.account.SendAccountMessageService';

  SendAccountMessageServiceBase() {
    $addMethod($grpc.ServiceMethod<$45.MessageForAccountAssistant,
            $45.MessageForAccountAssistantSent>(
        'SendMessageToAccountAssistant',
        sendMessageToAccountAssistant_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $45.MessageForAccountAssistant.fromBuffer(value),
        ($45.MessageForAccountAssistantSent value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$45.MessageForAccount, $45.MessageForAccountSent>(
            'SendMessageToAccount',
            sendMessageToAccount_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $45.MessageForAccount.fromBuffer(value),
            ($45.MessageForAccountSent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$45.MessageForAccount,
            $45.FullMessageForAccountSent>(
        'SendSpeedMessageToAccount',
        sendSpeedMessageToAccount,
        true,
        true,
        ($core.List<$core.int> value) =>
            $45.MessageForAccount.fromBuffer(value),
        ($45.FullMessageForAccountSent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $45.AccountAssistantSentMessage>(
        'SyncAccountAssistantSentMessages',
        syncAccountAssistantSentMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($45.AccountAssistantSentMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $45.SyncAccountSentMessagesResponse>(
        'SyncAccountSentMessages',
        syncAccountSentMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($45.SyncAccountSentMessagesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $45.SyncAccountConnectedAccountSentMessagesRequest,
            $45.SyncAccountConnectedAccountSentMessagesResponse>(
        'SyncAccountConnectedAccountSentMessages',
        syncAccountConnectedAccountSentMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $45.SyncAccountConnectedAccountSentMessagesRequest.fromBuffer(
                value),
        ($45.SyncAccountConnectedAccountSentMessagesResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$45.MessageForAccountAssistantSent>
      sendMessageToAccountAssistant_Pre($grpc.ServiceCall call,
          $async.Future<$45.MessageForAccountAssistant> request) async {
    return sendMessageToAccountAssistant(call, await request);
  }

  $async.Future<$45.MessageForAccountSent> sendMessageToAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$45.MessageForAccount> request) async {
    return sendMessageToAccount(call, await request);
  }

  $async.Stream<$45.AccountAssistantSentMessage>
      syncAccountAssistantSentMessages_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async* {
    yield* syncAccountAssistantSentMessages(call, await request);
  }

  $async.Stream<$45.SyncAccountSentMessagesResponse>
      syncAccountSentMessages_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async* {
    yield* syncAccountSentMessages(call, await request);
  }

  $async.Stream<$45.SyncAccountConnectedAccountSentMessagesResponse>
      syncAccountConnectedAccountSentMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<$45.SyncAccountConnectedAccountSentMessagesRequest>
              request) async* {
    yield* syncAccountConnectedAccountSentMessages(call, await request);
  }

  $async.Future<$45.MessageForAccountAssistantSent>
      sendMessageToAccountAssistant(
          $grpc.ServiceCall call, $45.MessageForAccountAssistant request);
  $async.Future<$45.MessageForAccountSent> sendMessageToAccount(
      $grpc.ServiceCall call, $45.MessageForAccount request);
  $async.Stream<$45.FullMessageForAccountSent> sendSpeedMessageToAccount(
      $grpc.ServiceCall call, $async.Stream<$45.MessageForAccount> request);
  $async.Stream<$45.AccountAssistantSentMessage>
      syncAccountAssistantSentMessages(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Stream<$45.SyncAccountSentMessagesResponse> syncAccountSentMessages(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Stream<$45.SyncAccountConnectedAccountSentMessagesResponse>
      syncAccountConnectedAccountSentMessages($grpc.ServiceCall call,
          $45.SyncAccountConnectedAccountSentMessagesRequest request);
}
