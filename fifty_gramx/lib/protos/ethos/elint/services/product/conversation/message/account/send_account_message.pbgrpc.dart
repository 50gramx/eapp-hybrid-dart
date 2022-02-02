/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

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
  static final _$syncAccountConnectedAccountAssistantSentMessages =
      $grpc.ClientMethod<
              $45.SyncAccountConnectedAccountAssistantSentMessagesRequest,
              $45.SyncAccountConnectedAccountAssistantSentMessagesResponse>(
          '/elint.services.product.conversation.message.account.SendAccountMessageService/SyncAccountConnectedAccountAssistantSentMessages',
          ($45.SyncAccountConnectedAccountAssistantSentMessagesRequest value) =>
              value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $45.SyncAccountConnectedAccountAssistantSentMessagesResponse
                  .fromBuffer(value));
  static final _$getLast24ProductNSentMessages = $grpc.ClientMethod<
          $45.GetLast24ProductNSentMessagesRequest,
          $45.GetLast24ProductNSentMessagesResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/GetLast24ProductNSentMessages',
      ($45.GetLast24ProductNSentMessagesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $45.GetLast24ProductNSentMessagesResponse.fromBuffer(value));
  static final _$getAccountSentMessagesCount = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $45.AccountSentMessagesCountResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/GetAccountSentMessagesCount',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $45.AccountSentMessagesCountResponse.fromBuffer(value));
  static final _$getAccountAssistantSentMessagesCount = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $45.AccountAssistantSentMessagesCountResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/GetAccountAssistantSentMessagesCount',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $45.AccountAssistantSentMessagesCountResponse.fromBuffer(value));
  static final _$getAccountLastSentMessage = $grpc.ClientMethod<
          $45.GetAccountLastSentMessageRequest,
          $45.GetAccountLastSentMessageResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/GetAccountLastSentMessage',
      ($45.GetAccountLastSentMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $45.GetAccountLastSentMessageResponse.fromBuffer(value));
  static final _$getAccountAssistantLastSentMessage = $grpc.ClientMethod<
          $45.GetAccountAssistantLastSentMessageRequest,
          $45.GetAccountAssistantLastSentMessageResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/GetAccountAssistantLastSentMessage',
      ($45.GetAccountAssistantLastSentMessageRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $45.GetAccountAssistantLastSentMessageResponse.fromBuffer(value));
  static final _$getSentMessagesAccounts = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $45.GetSentMessagesAccountsResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/GetSentMessagesAccounts',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $45.GetSentMessagesAccountsResponse.fromBuffer(value));
  static final _$getSentMessagesAccountAssistants = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $45.GetSentMessagesAccountAssistantsResponse>(
      '/elint.services.product.conversation.message.account.SendAccountMessageService/GetSentMessagesAccountAssistants',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $45.GetSentMessagesAccountAssistantsResponse.fromBuffer(value));

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

  $grpc.ResponseStream<
          $45.SyncAccountConnectedAccountAssistantSentMessagesResponse>
      syncAccountConnectedAccountAssistantSentMessages(
          $45.SyncAccountConnectedAccountAssistantSentMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$syncAccountConnectedAccountAssistantSentMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$45.GetLast24ProductNSentMessagesResponse>
      getLast24ProductNSentMessages(
          $45.GetLast24ProductNSentMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLast24ProductNSentMessages, request,
        options: options);
  }

  $grpc.ResponseFuture<$45.AccountSentMessagesCountResponse>
      getAccountSentMessagesCount($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountSentMessagesCount, request,
        options: options);
  }

  $grpc.ResponseFuture<$45.AccountAssistantSentMessagesCountResponse>
      getAccountAssistantSentMessagesCount(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantSentMessagesCount, request,
        options: options);
  }

  $grpc.ResponseFuture<$45.GetAccountLastSentMessageResponse>
      getAccountLastSentMessage($45.GetAccountLastSentMessageRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountLastSentMessage, request,
        options: options);
  }

  $grpc.ResponseFuture<$45.GetAccountAssistantLastSentMessageResponse>
      getAccountAssistantLastSentMessage(
          $45.GetAccountAssistantLastSentMessageRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantLastSentMessage, request,
        options: options);
  }

  $grpc.ResponseFuture<$45.GetSentMessagesAccountsResponse>
      getSentMessagesAccounts($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSentMessagesAccounts, request,
        options: options);
  }

  $grpc.ResponseFuture<$45.GetSentMessagesAccountAssistantsResponse>
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
    $addMethod($grpc.ServiceMethod<
            $45.SyncAccountConnectedAccountAssistantSentMessagesRequest,
            $45.SyncAccountConnectedAccountAssistantSentMessagesResponse>(
        'SyncAccountConnectedAccountAssistantSentMessages',
        syncAccountConnectedAccountAssistantSentMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $45.SyncAccountConnectedAccountAssistantSentMessagesRequest
                .fromBuffer(value),
        ($45.SyncAccountConnectedAccountAssistantSentMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$45.GetLast24ProductNSentMessagesRequest,
            $45.GetLast24ProductNSentMessagesResponse>(
        'GetLast24ProductNSentMessages',
        getLast24ProductNSentMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $45.GetLast24ProductNSentMessagesRequest.fromBuffer(value),
        ($45.GetLast24ProductNSentMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $45.AccountSentMessagesCountResponse>(
        'GetAccountSentMessagesCount',
        getAccountSentMessagesCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($45.AccountSentMessagesCountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $45.AccountAssistantSentMessagesCountResponse>(
        'GetAccountAssistantSentMessagesCount',
        getAccountAssistantSentMessagesCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($45.AccountAssistantSentMessagesCountResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$45.GetAccountLastSentMessageRequest,
            $45.GetAccountLastSentMessageResponse>(
        'GetAccountLastSentMessage',
        getAccountLastSentMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $45.GetAccountLastSentMessageRequest.fromBuffer(value),
        ($45.GetAccountLastSentMessageResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $45.GetAccountAssistantLastSentMessageRequest,
            $45.GetAccountAssistantLastSentMessageResponse>(
        'GetAccountAssistantLastSentMessage',
        getAccountAssistantLastSentMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $45.GetAccountAssistantLastSentMessageRequest.fromBuffer(value),
        ($45.GetAccountAssistantLastSentMessageResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $45.GetSentMessagesAccountsResponse>(
        'GetSentMessagesAccounts',
        getSentMessagesAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($45.GetSentMessagesAccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $45.GetSentMessagesAccountAssistantsResponse>(
        'GetSentMessagesAccountAssistants',
        getSentMessagesAccountAssistants_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($45.GetSentMessagesAccountAssistantsResponse value) =>
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

  $async.Stream<$45.SyncAccountConnectedAccountAssistantSentMessagesResponse>
      syncAccountConnectedAccountAssistantSentMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $45.SyncAccountConnectedAccountAssistantSentMessagesRequest>
              request) async* {
    yield* syncAccountConnectedAccountAssistantSentMessages(
        call, await request);
  }

  $async.Future<$45.GetLast24ProductNSentMessagesResponse>
      getLast24ProductNSentMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<$45.GetLast24ProductNSentMessagesRequest>
              request) async {
    return getLast24ProductNSentMessages(call, await request);
  }

  $async.Future<$45.AccountSentMessagesCountResponse>
      getAccountSentMessagesCount_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountSentMessagesCount(call, await request);
  }

  $async.Future<$45.AccountAssistantSentMessagesCountResponse>
      getAccountAssistantSentMessagesCount_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountAssistantSentMessagesCount(call, await request);
  }

  $async.Future<$45.GetAccountLastSentMessageResponse>
      getAccountLastSentMessage_Pre($grpc.ServiceCall call,
          $async.Future<$45.GetAccountLastSentMessageRequest> request) async {
    return getAccountLastSentMessage(call, await request);
  }

  $async.Future<$45.GetAccountAssistantLastSentMessageResponse>
      getAccountAssistantLastSentMessage_Pre(
          $grpc.ServiceCall call,
          $async.Future<$45.GetAccountAssistantLastSentMessageRequest>
              request) async {
    return getAccountAssistantLastSentMessage(call, await request);
  }

  $async.Future<$45.GetSentMessagesAccountsResponse>
      getSentMessagesAccounts_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getSentMessagesAccounts(call, await request);
  }

  $async.Future<$45.GetSentMessagesAccountAssistantsResponse>
      getSentMessagesAccountAssistants_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getSentMessagesAccountAssistants(call, await request);
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
  $async.Stream<$45.SyncAccountConnectedAccountAssistantSentMessagesResponse>
      syncAccountConnectedAccountAssistantSentMessages($grpc.ServiceCall call,
          $45.SyncAccountConnectedAccountAssistantSentMessagesRequest request);
  $async.Future<$45.GetLast24ProductNSentMessagesResponse>
      getLast24ProductNSentMessages($grpc.ServiceCall call,
          $45.GetLast24ProductNSentMessagesRequest request);
  $async.Future<$45.AccountSentMessagesCountResponse>
      getAccountSentMessagesCount(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$45.AccountAssistantSentMessagesCountResponse>
      getAccountAssistantSentMessagesCount(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$45.GetAccountLastSentMessageResponse>
      getAccountLastSentMessage(
          $grpc.ServiceCall call, $45.GetAccountLastSentMessageRequest request);
  $async.Future<$45.GetAccountAssistantLastSentMessageResponse>
      getAccountAssistantLastSentMessage($grpc.ServiceCall call,
          $45.GetAccountAssistantLastSentMessageRequest request);
  $async.Future<$45.GetSentMessagesAccountsResponse> getSentMessagesAccounts(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$45.GetSentMessagesAccountAssistantsResponse>
      getSentMessagesAccountAssistants(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
}
