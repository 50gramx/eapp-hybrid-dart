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
//  source: ethos/elint/services/product/conversation/message/account/receive_account_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'receive_account_message.pb.dart' as $41;
import '../../../identity/account/access_account.pb.dart' as $0;
export 'receive_account_message.pb.dart';

class ReceiveAccountMessageServiceClient extends $grpc.Client {
  static final _$receiveMessageFromAccountAssistant = $grpc.ClientMethod<
          $41.MessageFromAccountAssistant,
          $41.MessageFromAccountAssistantReceived>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/ReceiveMessageFromAccountAssistant',
      ($41.MessageFromAccountAssistant value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.MessageFromAccountAssistantReceived.fromBuffer(value));
  static final _$receiveMessageFromAccount = $grpc.ClientMethod<
          $41.MessageFromAccount, $41.MessageFromAccountReceived>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/ReceiveMessageFromAccount',
      ($41.MessageFromAccount value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.MessageFromAccountReceived.fromBuffer(value));
  static final _$syncAccountAssistantReceivedMessages = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $41.AccountAssistantReceivedMessage>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/SyncAccountAssistantReceivedMessages',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.AccountAssistantReceivedMessage.fromBuffer(value));
  static final _$syncAccountReceivedMessages = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $41.SyncAccountReceivedMessagesResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/SyncAccountReceivedMessages',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.SyncAccountReceivedMessagesResponse.fromBuffer(value));
  static final _$syncAccountConnectedAccountReceivedMessages = $grpc.ClientMethod<
          $41.SyncAccountConnectedAccountReceivedMessagesRequest,
          $41.SyncAccountConnectedAccountReceivedMessagesResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/SyncAccountConnectedAccountReceivedMessages',
      ($41.SyncAccountConnectedAccountReceivedMessagesRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.SyncAccountConnectedAccountReceivedMessagesResponse.fromBuffer(
              value));
  static final _$syncAccountConnectedAccountAssistantReceivedMessages =
      $grpc.ClientMethod<
              $41.SyncAccountConnectedAccountAssistantReceivedMessagesRequest,
              $41.SyncAccountConnectedAccountAssistantReceivedMessagesResponse>(
          '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/SyncAccountConnectedAccountAssistantReceivedMessages',
          ($41.SyncAccountConnectedAccountAssistantReceivedMessagesRequest
                  value) =>
              value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $41.SyncAccountConnectedAccountAssistantReceivedMessagesResponse
                  .fromBuffer(value));
  static final _$listenForReceivedAccountAssistantMessages = $grpc.ClientMethod<
          $41.ListenForReceivedAccountAssistantMessagesRequest,
          $41.ListenForReceivedAccountAssistantMessagesResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/ListenForReceivedAccountAssistantMessages',
      ($41.ListenForReceivedAccountAssistantMessagesRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.ListenForReceivedAccountAssistantMessagesResponse.fromBuffer(
              value));
  static final _$listenForReceivedAccountMessages = $grpc.ClientMethod<
          $41.ListenForReceivedAccountMessagesRequest,
          $41.ListenForReceivedAccountMessagesResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/ListenForReceivedAccountMessages',
      ($41.ListenForReceivedAccountMessagesRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.ListenForReceivedAccountMessagesResponse.fromBuffer(value));
  static final _$listenForReceivedAccountSpeedMessages = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $41.ListenForReceivedAccountSpeedMessagesResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/ListenForReceivedAccountSpeedMessages',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.ListenForReceivedAccountSpeedMessagesResponse.fromBuffer(value));
  static final _$listenForReceivedAccountAssistantSpeedMessages =
      $grpc.ClientMethod<$0.AccountServicesAccessAuthDetails,
              $41.ListenForReceivedAccountAssistantSpeedMessagesResponse>(
          '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/ListenForReceivedAccountAssistantSpeedMessages',
          ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $41.ListenForReceivedAccountAssistantSpeedMessagesResponse
                  .fromBuffer(value));
  static final _$getLast24ProductNReceivedMessages = $grpc.ClientMethod<
          $41.GetLast24ProductNReceivedMessagesRequest,
          $41.GetLast24ProductNReceivedMessagesResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/GetLast24ProductNReceivedMessages',
      ($41.GetLast24ProductNReceivedMessagesRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.GetLast24ProductNReceivedMessagesResponse.fromBuffer(value));
  static final _$getAccountReceivedMessagesCount = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $41.AccountReceivedMessagesCountResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/GetAccountReceivedMessagesCount',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.AccountReceivedMessagesCountResponse.fromBuffer(value));
  static final _$getAccountAssistantReceivedMessagesCount = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $41.AccountAssistantReceivedMessagesCountResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/GetAccountAssistantReceivedMessagesCount',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.AccountAssistantReceivedMessagesCountResponse.fromBuffer(value));
  static final _$getAccountLastReceivedMessage = $grpc.ClientMethod<
          $41.GetAccountLastReceivedMessageRequest,
          $41.GetAccountLastReceivedMessageResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/GetAccountLastReceivedMessage',
      ($41.GetAccountLastReceivedMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.GetAccountLastReceivedMessageResponse.fromBuffer(value));
  static final _$getAccountAssistantLastReceivedMessage = $grpc.ClientMethod<
          $41.GetAccountAssistantLastReceivedMessageRequest,
          $41.GetAccountAssistantLastReceivedMessageResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/GetAccountAssistantLastReceivedMessage',
      ($41.GetAccountAssistantLastReceivedMessageRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.GetAccountAssistantLastReceivedMessageResponse.fromBuffer(value));
  static final _$getReceivedMessagesAccounts = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $41.GetReceivedMessagesAccountsResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/GetReceivedMessagesAccounts',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.GetReceivedMessagesAccountsResponse.fromBuffer(value));
  static final _$getReceivedMessagesAccountAssistants = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $41.GetReceivedMessagesAccountAssistantsResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/GetReceivedMessagesAccountAssistants',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.GetReceivedMessagesAccountAssistantsResponse.fromBuffer(value));

  ReceiveAccountMessageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$41.MessageFromAccountAssistantReceived>
      receiveMessageFromAccountAssistant(
          $41.MessageFromAccountAssistant request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$receiveMessageFromAccountAssistant, request,
        options: options);
  }

  $grpc.ResponseFuture<$41.MessageFromAccountReceived>
      receiveMessageFromAccount($41.MessageFromAccount request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$receiveMessageFromAccount, request,
        options: options);
  }

  $grpc.ResponseStream<$41.AccountAssistantReceivedMessage>
      syncAccountAssistantReceivedMessages(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$syncAccountAssistantReceivedMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$41.SyncAccountReceivedMessagesResponse>
      syncAccountReceivedMessages($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$syncAccountReceivedMessages, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$41.SyncAccountConnectedAccountReceivedMessagesResponse>
      syncAccountConnectedAccountReceivedMessages(
          $41.SyncAccountConnectedAccountReceivedMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$syncAccountConnectedAccountReceivedMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<
          $41.SyncAccountConnectedAccountAssistantReceivedMessagesResponse>
      syncAccountConnectedAccountAssistantReceivedMessages(
          $41.SyncAccountConnectedAccountAssistantReceivedMessagesRequest
              request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$syncAccountConnectedAccountAssistantReceivedMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$41.ListenForReceivedAccountAssistantMessagesResponse>
      listenForReceivedAccountAssistantMessages(
          $41.ListenForReceivedAccountAssistantMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$listenForReceivedAccountAssistantMessages, request,
        options: options);
  }

  $grpc.ResponseFuture<$41.ListenForReceivedAccountMessagesResponse>
      listenForReceivedAccountMessages(
          $41.ListenForReceivedAccountMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listenForReceivedAccountMessages, request,
        options: options);
  }

  $grpc.ResponseStream<$41.ListenForReceivedAccountSpeedMessagesResponse>
      listenForReceivedAccountSpeedMessages(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$listenForReceivedAccountSpeedMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<
          $41.ListenForReceivedAccountAssistantSpeedMessagesResponse>
      listenForReceivedAccountAssistantSpeedMessages(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listenForReceivedAccountAssistantSpeedMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$41.GetLast24ProductNReceivedMessagesResponse>
      getLast24ProductNReceivedMessages(
          $41.GetLast24ProductNReceivedMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLast24ProductNReceivedMessages, request,
        options: options);
  }

  $grpc.ResponseFuture<$41.AccountReceivedMessagesCountResponse>
      getAccountReceivedMessagesCount(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountReceivedMessagesCount, request,
        options: options);
  }

  $grpc.ResponseFuture<$41.AccountAssistantReceivedMessagesCountResponse>
      getAccountAssistantReceivedMessagesCount(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantReceivedMessagesCount, request,
        options: options);
  }

  $grpc.ResponseFuture<$41.GetAccountLastReceivedMessageResponse>
      getAccountLastReceivedMessage(
          $41.GetAccountLastReceivedMessageRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountLastReceivedMessage, request,
        options: options);
  }

  $grpc.ResponseFuture<$41.GetAccountAssistantLastReceivedMessageResponse>
      getAccountAssistantLastReceivedMessage(
          $41.GetAccountAssistantLastReceivedMessageRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantLastReceivedMessage, request,
        options: options);
  }

  $grpc.ResponseFuture<$41.GetReceivedMessagesAccountsResponse>
      getReceivedMessagesAccounts($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReceivedMessagesAccounts, request,
        options: options);
  }

  $grpc.ResponseFuture<$41.GetReceivedMessagesAccountAssistantsResponse>
      getReceivedMessagesAccountAssistants(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReceivedMessagesAccountAssistants, request,
        options: options);
  }
}

abstract class ReceiveAccountMessageServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.conversation.message.account.ReceiveAccountMessageService';

  ReceiveAccountMessageServiceBase() {
    $addMethod($grpc.ServiceMethod<$41.MessageFromAccountAssistant,
            $41.MessageFromAccountAssistantReceived>(
        'ReceiveMessageFromAccountAssistant',
        receiveMessageFromAccountAssistant_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $41.MessageFromAccountAssistant.fromBuffer(value),
        ($41.MessageFromAccountAssistantReceived value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$41.MessageFromAccount,
            $41.MessageFromAccountReceived>(
        'ReceiveMessageFromAccount',
        receiveMessageFromAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $41.MessageFromAccount.fromBuffer(value),
        ($41.MessageFromAccountReceived value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $41.AccountAssistantReceivedMessage>(
        'SyncAccountAssistantReceivedMessages',
        syncAccountAssistantReceivedMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($41.AccountAssistantReceivedMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $41.SyncAccountReceivedMessagesResponse>(
        'SyncAccountReceivedMessages',
        syncAccountReceivedMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($41.SyncAccountReceivedMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $41.SyncAccountConnectedAccountReceivedMessagesRequest,
            $41.SyncAccountConnectedAccountReceivedMessagesResponse>(
        'SyncAccountConnectedAccountReceivedMessages',
        syncAccountConnectedAccountReceivedMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $41.SyncAccountConnectedAccountReceivedMessagesRequest.fromBuffer(
                value),
        ($41.SyncAccountConnectedAccountReceivedMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $41.SyncAccountConnectedAccountAssistantReceivedMessagesRequest,
            $41.SyncAccountConnectedAccountAssistantReceivedMessagesResponse>(
        'SyncAccountConnectedAccountAssistantReceivedMessages',
        syncAccountConnectedAccountAssistantReceivedMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $41.SyncAccountConnectedAccountAssistantReceivedMessagesRequest
                .fromBuffer(value),
        ($41.SyncAccountConnectedAccountAssistantReceivedMessagesResponse
                value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $41.ListenForReceivedAccountAssistantMessagesRequest,
            $41.ListenForReceivedAccountAssistantMessagesResponse>(
        'ListenForReceivedAccountAssistantMessages',
        listenForReceivedAccountAssistantMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $41.ListenForReceivedAccountAssistantMessagesRequest.fromBuffer(
                value),
        ($41.ListenForReceivedAccountAssistantMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$41.ListenForReceivedAccountMessagesRequest,
            $41.ListenForReceivedAccountMessagesResponse>(
        'ListenForReceivedAccountMessages',
        listenForReceivedAccountMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $41.ListenForReceivedAccountMessagesRequest.fromBuffer(value),
        ($41.ListenForReceivedAccountMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $41.ListenForReceivedAccountSpeedMessagesResponse>(
        'ListenForReceivedAccountSpeedMessages',
        listenForReceivedAccountSpeedMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($41.ListenForReceivedAccountSpeedMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $41.ListenForReceivedAccountAssistantSpeedMessagesResponse>(
        'ListenForReceivedAccountAssistantSpeedMessages',
        listenForReceivedAccountAssistantSpeedMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($41.ListenForReceivedAccountAssistantSpeedMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$41.GetLast24ProductNReceivedMessagesRequest,
            $41.GetLast24ProductNReceivedMessagesResponse>(
        'GetLast24ProductNReceivedMessages',
        getLast24ProductNReceivedMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $41.GetLast24ProductNReceivedMessagesRequest.fromBuffer(value),
        ($41.GetLast24ProductNReceivedMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $41.AccountReceivedMessagesCountResponse>(
        'GetAccountReceivedMessagesCount',
        getAccountReceivedMessagesCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($41.AccountReceivedMessagesCountResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $41.AccountAssistantReceivedMessagesCountResponse>(
        'GetAccountAssistantReceivedMessagesCount',
        getAccountAssistantReceivedMessagesCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($41.AccountAssistantReceivedMessagesCountResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$41.GetAccountLastReceivedMessageRequest,
            $41.GetAccountLastReceivedMessageResponse>(
        'GetAccountLastReceivedMessage',
        getAccountLastReceivedMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $41.GetAccountLastReceivedMessageRequest.fromBuffer(value),
        ($41.GetAccountLastReceivedMessageResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $41.GetAccountAssistantLastReceivedMessageRequest,
            $41.GetAccountAssistantLastReceivedMessageResponse>(
        'GetAccountAssistantLastReceivedMessage',
        getAccountAssistantLastReceivedMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $41.GetAccountAssistantLastReceivedMessageRequest.fromBuffer(value),
        ($41.GetAccountAssistantLastReceivedMessageResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $41.GetReceivedMessagesAccountsResponse>(
        'GetReceivedMessagesAccounts',
        getReceivedMessagesAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($41.GetReceivedMessagesAccountsResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $41.GetReceivedMessagesAccountAssistantsResponse>(
        'GetReceivedMessagesAccountAssistants',
        getReceivedMessagesAccountAssistants_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($41.GetReceivedMessagesAccountAssistantsResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$41.MessageFromAccountAssistantReceived>
      receiveMessageFromAccountAssistant_Pre($grpc.ServiceCall call,
          $async.Future<$41.MessageFromAccountAssistant> request) async {
    return receiveMessageFromAccountAssistant(call, await request);
  }

  $async.Future<$41.MessageFromAccountReceived> receiveMessageFromAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$41.MessageFromAccount> request) async {
    return receiveMessageFromAccount(call, await request);
  }

  $async.Stream<$41.AccountAssistantReceivedMessage>
      syncAccountAssistantReceivedMessages_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async* {
    yield* syncAccountAssistantReceivedMessages(call, await request);
  }

  $async.Stream<$41.SyncAccountReceivedMessagesResponse>
      syncAccountReceivedMessages_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async* {
    yield* syncAccountReceivedMessages(call, await request);
  }

  $async.Stream<$41.SyncAccountConnectedAccountReceivedMessagesResponse>
      syncAccountConnectedAccountReceivedMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<$41.SyncAccountConnectedAccountReceivedMessagesRequest>
              request) async* {
    yield* syncAccountConnectedAccountReceivedMessages(call, await request);
  }

  $async.Stream<
          $41.SyncAccountConnectedAccountAssistantReceivedMessagesResponse>
      syncAccountConnectedAccountAssistantReceivedMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $41.SyncAccountConnectedAccountAssistantReceivedMessagesRequest>
              request) async* {
    yield* syncAccountConnectedAccountAssistantReceivedMessages(
        call, await request);
  }

  $async.Future<$41.ListenForReceivedAccountAssistantMessagesResponse>
      listenForReceivedAccountAssistantMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<$41.ListenForReceivedAccountAssistantMessagesRequest>
              request) async {
    return listenForReceivedAccountAssistantMessages(call, await request);
  }

  $async.Future<$41.ListenForReceivedAccountMessagesResponse>
      listenForReceivedAccountMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<$41.ListenForReceivedAccountMessagesRequest>
              request) async {
    return listenForReceivedAccountMessages(call, await request);
  }

  $async.Stream<$41.ListenForReceivedAccountSpeedMessagesResponse>
      listenForReceivedAccountSpeedMessages_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async* {
    yield* listenForReceivedAccountSpeedMessages(call, await request);
  }

  $async.Stream<$41.ListenForReceivedAccountAssistantSpeedMessagesResponse>
      listenForReceivedAccountAssistantSpeedMessages_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async* {
    yield* listenForReceivedAccountAssistantSpeedMessages(call, await request);
  }

  $async.Future<$41.GetLast24ProductNReceivedMessagesResponse>
      getLast24ProductNReceivedMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<$41.GetLast24ProductNReceivedMessagesRequest>
              request) async {
    return getLast24ProductNReceivedMessages(call, await request);
  }

  $async.Future<$41.AccountReceivedMessagesCountResponse>
      getAccountReceivedMessagesCount_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountReceivedMessagesCount(call, await request);
  }

  $async.Future<$41.AccountAssistantReceivedMessagesCountResponse>
      getAccountAssistantReceivedMessagesCount_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountAssistantReceivedMessagesCount(call, await request);
  }

  $async.Future<$41.GetAccountLastReceivedMessageResponse>
      getAccountLastReceivedMessage_Pre(
          $grpc.ServiceCall call,
          $async.Future<$41.GetAccountLastReceivedMessageRequest>
              request) async {
    return getAccountLastReceivedMessage(call, await request);
  }

  $async.Future<$41.GetAccountAssistantLastReceivedMessageResponse>
      getAccountAssistantLastReceivedMessage_Pre(
          $grpc.ServiceCall call,
          $async.Future<$41.GetAccountAssistantLastReceivedMessageRequest>
              request) async {
    return getAccountAssistantLastReceivedMessage(call, await request);
  }

  $async.Future<$41.GetReceivedMessagesAccountsResponse>
      getReceivedMessagesAccounts_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getReceivedMessagesAccounts(call, await request);
  }

  $async.Future<$41.GetReceivedMessagesAccountAssistantsResponse>
      getReceivedMessagesAccountAssistants_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getReceivedMessagesAccountAssistants(call, await request);
  }

  $async.Future<$41.MessageFromAccountAssistantReceived>
      receiveMessageFromAccountAssistant(
          $grpc.ServiceCall call, $41.MessageFromAccountAssistant request);
  $async.Future<$41.MessageFromAccountReceived> receiveMessageFromAccount(
      $grpc.ServiceCall call, $41.MessageFromAccount request);
  $async.Stream<$41.AccountAssistantReceivedMessage>
      syncAccountAssistantReceivedMessages(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Stream<$41.SyncAccountReceivedMessagesResponse>
      syncAccountReceivedMessages(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Stream<$41.SyncAccountConnectedAccountReceivedMessagesResponse>
      syncAccountConnectedAccountReceivedMessages($grpc.ServiceCall call,
          $41.SyncAccountConnectedAccountReceivedMessagesRequest request);
  $async.Stream<
          $41.SyncAccountConnectedAccountAssistantReceivedMessagesResponse>
      syncAccountConnectedAccountAssistantReceivedMessages(
          $grpc.ServiceCall call,
          $41.SyncAccountConnectedAccountAssistantReceivedMessagesRequest
              request);
  $async.Future<$41.ListenForReceivedAccountAssistantMessagesResponse>
      listenForReceivedAccountAssistantMessages($grpc.ServiceCall call,
          $41.ListenForReceivedAccountAssistantMessagesRequest request);
  $async.Future<$41.ListenForReceivedAccountMessagesResponse>
      listenForReceivedAccountMessages($grpc.ServiceCall call,
          $41.ListenForReceivedAccountMessagesRequest request);
  $async.Stream<$41.ListenForReceivedAccountSpeedMessagesResponse>
      listenForReceivedAccountSpeedMessages(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Stream<$41.ListenForReceivedAccountAssistantSpeedMessagesResponse>
      listenForReceivedAccountAssistantSpeedMessages(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$41.GetLast24ProductNReceivedMessagesResponse>
      getLast24ProductNReceivedMessages($grpc.ServiceCall call,
          $41.GetLast24ProductNReceivedMessagesRequest request);
  $async.Future<$41.AccountReceivedMessagesCountResponse>
      getAccountReceivedMessagesCount(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$41.AccountAssistantReceivedMessagesCountResponse>
      getAccountAssistantReceivedMessagesCount(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$41.GetAccountLastReceivedMessageResponse>
      getAccountLastReceivedMessage($grpc.ServiceCall call,
          $41.GetAccountLastReceivedMessageRequest request);
  $async.Future<$41.GetAccountAssistantLastReceivedMessageResponse>
      getAccountAssistantLastReceivedMessage($grpc.ServiceCall call,
          $41.GetAccountAssistantLastReceivedMessageRequest request);
  $async.Future<$41.GetReceivedMessagesAccountsResponse>
      getReceivedMessagesAccounts(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$41.GetReceivedMessagesAccountAssistantsResponse>
      getReceivedMessagesAccountAssistants(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
}
