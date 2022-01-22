///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/conversation/message/account/send_account_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'send_account_message.pb.dart' as $42;
import '../../../identity/account/access_account.pb.dart' as $0;
export 'send_account_message.pb.dart';

class SendAccountMessageServiceClient extends $grpc.Client {
  static final _$sendMessageToAccountAssistant = $grpc.ClientMethod<
          $42.MessageForAccountAssistant, $42.MessageForAccountAssistantSent>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/SendMessageToAccountAssistant',
      ($42.MessageForAccountAssistant value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $42.MessageForAccountAssistantSent.fromBuffer(value));
  static final _$sendMessageToAccount = $grpc.ClientMethod<
          $42.MessageForAccount, $42.MessageForAccountSent>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/SendMessageToAccount',
      ($42.MessageForAccount value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $42.MessageForAccountSent.fromBuffer(value));
  static final _$sendSpeedMessageToAccount = $grpc.ClientMethod<
          $42.MessageForAccount, $42.FullMessageForAccountSent>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/SendSpeedMessageToAccount',
      ($42.MessageForAccount value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $42.FullMessageForAccountSent.fromBuffer(value));
  static final _$syncAccountAssistantSentMessages = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $42.AccountAssistantSentMessage>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/SyncAccountAssistantSentMessages',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $42.AccountAssistantSentMessage.fromBuffer(value));
  static final _$syncAccountSentMessages = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $42.SyncAccountSentMessagesResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/SyncAccountSentMessages',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $42.SyncAccountSentMessagesResponse.fromBuffer(value));
  static final _$syncAccountConnectedAccountSentMessages = $grpc.ClientMethod<
          $42.SyncAccountConnectedAccountSentMessagesRequest,
          $42.SyncAccountConnectedAccountSentMessagesResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/SyncAccountConnectedAccountSentMessages',
      ($42.SyncAccountConnectedAccountSentMessagesRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $42.SyncAccountConnectedAccountSentMessagesResponse.fromBuffer(
              value));
  static final _$syncAccountConnectedAccountAssistantSentMessages =
      $grpc.ClientMethod<
              $42.SyncAccountConnectedAccountAssistantSentMessagesRequest,
              $42.SyncAccountConnectedAccountAssistantSentMessagesResponse>(
          '/elint.services.product.conversation.message.account.SendAccountMessageService/SyncAccountConnectedAccountAssistantSentMessages',
          ($42.SyncAccountConnectedAccountAssistantSentMessagesRequest value) =>
              value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $42.SyncAccountConnectedAccountAssistantSentMessagesResponse
                  .fromBuffer(value));
  static final _$getLast24ProductNSentMessages = $grpc.ClientMethod<
          $42.GetLast24ProductNSentMessagesRequest,
          $42.GetLast24ProductNSentMessagesResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/GetLast24ProductNSentMessages',
      ($42.GetLast24ProductNSentMessagesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $42.GetLast24ProductNSentMessagesResponse.fromBuffer(value));
  static final _$getAccountSentMessagesCount = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $42.AccountSentMessagesCountResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/GetAccountSentMessagesCount',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $42.AccountSentMessagesCountResponse.fromBuffer(value));
  static final _$getAccountAssistantSentMessagesCount = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $42.AccountAssistantSentMessagesCountResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/GetAccountAssistantSentMessagesCount',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $42.AccountAssistantSentMessagesCountResponse.fromBuffer(value));
  static final _$getAccountLastSentMessage = $grpc.ClientMethod<
          $42.GetAccountLastSentMessageRequest,
          $42.GetAccountLastSentMessageResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/GetAccountLastSentMessage',
      ($42.GetAccountLastSentMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $42.GetAccountLastSentMessageResponse.fromBuffer(value));
  static final _$getAccountAssistantLastSentMessage = $grpc.ClientMethod<
          $42.GetAccountAssistantLastSentMessageRequest,
          $42.GetAccountAssistantLastSentMessageResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/GetAccountAssistantLastSentMessage',
      ($42.GetAccountAssistantLastSentMessageRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $42.GetAccountAssistantLastSentMessageResponse.fromBuffer(value));
  static final _$getSentMessagesAccounts = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $42.GetSentMessagesAccountsResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/GetSentMessagesAccounts',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $42.GetSentMessagesAccountsResponse.fromBuffer(value));
  static final _$getSentMessagesAccountAssistants = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $42.GetSentMessagesAccountAssistantsResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/GetSentMessagesAccountAssistants',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $42.GetSentMessagesAccountAssistantsResponse.fromBuffer(value));

  SendAccountMessageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$42.MessageForAccountAssistantSent>
      sendMessageToAccountAssistant($42.MessageForAccountAssistant request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessageToAccountAssistant, request,
        options: options);
  }

  $grpc.ResponseFuture<$42.MessageForAccountSent> sendMessageToAccount(
      $42.MessageForAccount request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessageToAccount, request, options: options);
  }

  $grpc.ResponseStream<$42.FullMessageForAccountSent> sendSpeedMessageToAccount(
      $async.Stream<$42.MessageForAccount> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$sendSpeedMessageToAccount, request,
        options: options);
  }

  $grpc.ResponseStream<$42.AccountAssistantSentMessage>
      syncAccountAssistantSentMessages(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$syncAccountAssistantSentMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$42.SyncAccountSentMessagesResponse>
      syncAccountSentMessages($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$syncAccountSentMessages, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$42.SyncAccountConnectedAccountSentMessagesResponse>
      syncAccountConnectedAccountSentMessages(
          $42.SyncAccountConnectedAccountSentMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$syncAccountConnectedAccountSentMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<
          $42.SyncAccountConnectedAccountAssistantSentMessagesResponse>
      syncAccountConnectedAccountAssistantSentMessages(
          $42.SyncAccountConnectedAccountAssistantSentMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$syncAccountConnectedAccountAssistantSentMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$42.GetLast24ProductNSentMessagesResponse>
      getLast24ProductNSentMessages(
          $42.GetLast24ProductNSentMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLast24ProductNSentMessages, request,
        options: options);
  }

  $grpc.ResponseFuture<$42.AccountSentMessagesCountResponse>
      getAccountSentMessagesCount($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountSentMessagesCount, request,
        options: options);
  }

  $grpc.ResponseFuture<$42.AccountAssistantSentMessagesCountResponse>
      getAccountAssistantSentMessagesCount(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantSentMessagesCount, request,
        options: options);
  }

  $grpc.ResponseFuture<$42.GetAccountLastSentMessageResponse>
      getAccountLastSentMessage($42.GetAccountLastSentMessageRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountLastSentMessage, request,
        options: options);
  }

  $grpc.ResponseFuture<$42.GetAccountAssistantLastSentMessageResponse>
      getAccountAssistantLastSentMessage(
          $42.GetAccountAssistantLastSentMessageRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantLastSentMessage, request,
        options: options);
  }

  $grpc.ResponseFuture<$42.GetSentMessagesAccountsResponse>
      getSentMessagesAccounts($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSentMessagesAccounts, request,
        options: options);
  }

  $grpc.ResponseFuture<$42.GetSentMessagesAccountAssistantsResponse>
      getSentMessagesAccountAssistants(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSentMessagesAccountAssistants, request,
        options: options);
  }
}

abstract class SendAccountMessageServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.conversation.message.account.SendAccountMessageService';

  SendAccountMessageServiceBase() {
    $addMethod($grpc.ServiceMethod<$42.MessageForAccountAssistant,
            $42.MessageForAccountAssistantSent>(
        'SendMessageToAccountAssistant',
        sendMessageToAccountAssistant_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $42.MessageForAccountAssistant.fromBuffer(value),
        ($42.MessageForAccountAssistantSent value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$42.MessageForAccount, $42.MessageForAccountSent>(
            'SendMessageToAccount',
            sendMessageToAccount_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $42.MessageForAccount.fromBuffer(value),
            ($42.MessageForAccountSent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$42.MessageForAccount,
            $42.FullMessageForAccountSent>(
        'SendSpeedMessageToAccount',
        sendSpeedMessageToAccount,
        true,
        true,
        ($core.List<$core.int> value) =>
            $42.MessageForAccount.fromBuffer(value),
        ($42.FullMessageForAccountSent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $42.AccountAssistantSentMessage>(
        'SyncAccountAssistantSentMessages',
        syncAccountAssistantSentMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($42.AccountAssistantSentMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $42.SyncAccountSentMessagesResponse>(
        'SyncAccountSentMessages',
        syncAccountSentMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($42.SyncAccountSentMessagesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $42.SyncAccountConnectedAccountSentMessagesRequest,
            $42.SyncAccountConnectedAccountSentMessagesResponse>(
        'SyncAccountConnectedAccountSentMessages',
        syncAccountConnectedAccountSentMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $42.SyncAccountConnectedAccountSentMessagesRequest.fromBuffer(
                value),
        ($42.SyncAccountConnectedAccountSentMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $42.SyncAccountConnectedAccountAssistantSentMessagesRequest,
            $42.SyncAccountConnectedAccountAssistantSentMessagesResponse>(
        'SyncAccountConnectedAccountAssistantSentMessages',
        syncAccountConnectedAccountAssistantSentMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $42.SyncAccountConnectedAccountAssistantSentMessagesRequest
                .fromBuffer(value),
        ($42.SyncAccountConnectedAccountAssistantSentMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$42.GetLast24ProductNSentMessagesRequest,
            $42.GetLast24ProductNSentMessagesResponse>(
        'GetLast24ProductNSentMessages',
        getLast24ProductNSentMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $42.GetLast24ProductNSentMessagesRequest.fromBuffer(value),
        ($42.GetLast24ProductNSentMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $42.AccountSentMessagesCountResponse>(
        'GetAccountSentMessagesCount',
        getAccountSentMessagesCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($42.AccountSentMessagesCountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $42.AccountAssistantSentMessagesCountResponse>(
        'GetAccountAssistantSentMessagesCount',
        getAccountAssistantSentMessagesCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($42.AccountAssistantSentMessagesCountResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$42.GetAccountLastSentMessageRequest,
            $42.GetAccountLastSentMessageResponse>(
        'GetAccountLastSentMessage',
        getAccountLastSentMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $42.GetAccountLastSentMessageRequest.fromBuffer(value),
        ($42.GetAccountLastSentMessageResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $42.GetAccountAssistantLastSentMessageRequest,
            $42.GetAccountAssistantLastSentMessageResponse>(
        'GetAccountAssistantLastSentMessage',
        getAccountAssistantLastSentMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $42.GetAccountAssistantLastSentMessageRequest.fromBuffer(value),
        ($42.GetAccountAssistantLastSentMessageResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $42.GetSentMessagesAccountsResponse>(
        'GetSentMessagesAccounts',
        getSentMessagesAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($42.GetSentMessagesAccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $42.GetSentMessagesAccountAssistantsResponse>(
        'GetSentMessagesAccountAssistants',
        getSentMessagesAccountAssistants_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($42.GetSentMessagesAccountAssistantsResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$42.MessageForAccountAssistantSent>
      sendMessageToAccountAssistant_Pre($grpc.ServiceCall call,
          $async.Future<$42.MessageForAccountAssistant> request) async {
    return sendMessageToAccountAssistant(call, await request);
  }

  $async.Future<$42.MessageForAccountSent> sendMessageToAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$42.MessageForAccount> request) async {
    return sendMessageToAccount(call, await request);
  }

  $async.Stream<$42.AccountAssistantSentMessage>
      syncAccountAssistantSentMessages_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async* {
    yield* syncAccountAssistantSentMessages(call, await request);
  }

  $async.Stream<$42.SyncAccountSentMessagesResponse>
      syncAccountSentMessages_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async* {
    yield* syncAccountSentMessages(call, await request);
  }

  $async.Stream<$42.SyncAccountConnectedAccountSentMessagesResponse>
      syncAccountConnectedAccountSentMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<$42.SyncAccountConnectedAccountSentMessagesRequest>
              request) async* {
    yield* syncAccountConnectedAccountSentMessages(call, await request);
  }

  $async.Stream<$42.SyncAccountConnectedAccountAssistantSentMessagesResponse>
      syncAccountConnectedAccountAssistantSentMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $42.SyncAccountConnectedAccountAssistantSentMessagesRequest>
              request) async* {
    yield* syncAccountConnectedAccountAssistantSentMessages(
        call, await request);
  }

  $async.Future<$42.GetLast24ProductNSentMessagesResponse>
      getLast24ProductNSentMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<$42.GetLast24ProductNSentMessagesRequest>
              request) async {
    return getLast24ProductNSentMessages(call, await request);
  }

  $async.Future<$42.AccountSentMessagesCountResponse>
      getAccountSentMessagesCount_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountSentMessagesCount(call, await request);
  }

  $async.Future<$42.AccountAssistantSentMessagesCountResponse>
      getAccountAssistantSentMessagesCount_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountAssistantSentMessagesCount(call, await request);
  }

  $async.Future<$42.GetAccountLastSentMessageResponse>
      getAccountLastSentMessage_Pre($grpc.ServiceCall call,
          $async.Future<$42.GetAccountLastSentMessageRequest> request) async {
    return getAccountLastSentMessage(call, await request);
  }

  $async.Future<$42.GetAccountAssistantLastSentMessageResponse>
      getAccountAssistantLastSentMessage_Pre(
          $grpc.ServiceCall call,
          $async.Future<$42.GetAccountAssistantLastSentMessageRequest>
              request) async {
    return getAccountAssistantLastSentMessage(call, await request);
  }

  $async.Future<$42.GetSentMessagesAccountsResponse>
      getSentMessagesAccounts_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getSentMessagesAccounts(call, await request);
  }

  $async.Future<$42.GetSentMessagesAccountAssistantsResponse>
      getSentMessagesAccountAssistants_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getSentMessagesAccountAssistants(call, await request);
  }

  $async.Future<$42.MessageForAccountAssistantSent>
      sendMessageToAccountAssistant(
          $grpc.ServiceCall call, $42.MessageForAccountAssistant request);
  $async.Future<$42.MessageForAccountSent> sendMessageToAccount(
      $grpc.ServiceCall call, $42.MessageForAccount request);
  $async.Stream<$42.FullMessageForAccountSent> sendSpeedMessageToAccount(
      $grpc.ServiceCall call, $async.Stream<$42.MessageForAccount> request);
  $async.Stream<$42.AccountAssistantSentMessage>
      syncAccountAssistantSentMessages(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Stream<$42.SyncAccountSentMessagesResponse> syncAccountSentMessages(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Stream<$42.SyncAccountConnectedAccountSentMessagesResponse>
      syncAccountConnectedAccountSentMessages($grpc.ServiceCall call,
          $42.SyncAccountConnectedAccountSentMessagesRequest request);
  $async.Stream<$42.SyncAccountConnectedAccountAssistantSentMessagesResponse>
      syncAccountConnectedAccountAssistantSentMessages($grpc.ServiceCall call,
          $42.SyncAccountConnectedAccountAssistantSentMessagesRequest request);
  $async.Future<$42.GetLast24ProductNSentMessagesResponse>
      getLast24ProductNSentMessages($grpc.ServiceCall call,
          $42.GetLast24ProductNSentMessagesRequest request);
  $async.Future<$42.AccountSentMessagesCountResponse>
      getAccountSentMessagesCount(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$42.AccountAssistantSentMessagesCountResponse>
      getAccountAssistantSentMessagesCount(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$42.GetAccountLastSentMessageResponse>
      getAccountLastSentMessage(
          $grpc.ServiceCall call, $42.GetAccountLastSentMessageRequest request);
  $async.Future<$42.GetAccountAssistantLastSentMessageResponse>
      getAccountAssistantLastSentMessage($grpc.ServiceCall call,
          $42.GetAccountAssistantLastSentMessageRequest request);
  $async.Future<$42.GetSentMessagesAccountsResponse> getSentMessagesAccounts(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$42.GetSentMessagesAccountAssistantsResponse>
      getSentMessagesAccountAssistants(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
}
