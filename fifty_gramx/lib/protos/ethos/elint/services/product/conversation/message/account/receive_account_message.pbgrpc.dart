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
import 'receive_account_message.pb.dart' as $44;
import '../../../identity/account/access_account.pb.dart' as $0;
export 'receive_account_message.pb.dart';

class ReceiveAccountMessageServiceClient extends $grpc.Client {
  static final _$receiveMessageFromAccountAssistant = $grpc.ClientMethod<
          $44.MessageFromAccountAssistant,
          $44.MessageFromAccountAssistantReceived>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/ReceiveMessageFromAccountAssistant',
      ($44.MessageFromAccountAssistant value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.MessageFromAccountAssistantReceived.fromBuffer(value));
  static final _$receiveMessageFromAccount = $grpc.ClientMethod<
          $44.MessageFromAccount, $44.MessageFromAccountReceived>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/ReceiveMessageFromAccount',
      ($44.MessageFromAccount value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.MessageFromAccountReceived.fromBuffer(value));
  static final _$syncAccountAssistantReceivedMessages = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $44.AccountAssistantReceivedMessage>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/SyncAccountAssistantReceivedMessages',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.AccountAssistantReceivedMessage.fromBuffer(value));
  static final _$syncAccountReceivedMessages = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $44.SyncAccountReceivedMessagesResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/SyncAccountReceivedMessages',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.SyncAccountReceivedMessagesResponse.fromBuffer(value));
  static final _$syncAccountConnectedAccountReceivedMessages = $grpc.ClientMethod<
          $44.SyncAccountConnectedAccountReceivedMessagesRequest,
          $44.SyncAccountConnectedAccountReceivedMessagesResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/SyncAccountConnectedAccountReceivedMessages',
      ($44.SyncAccountConnectedAccountReceivedMessagesRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.SyncAccountConnectedAccountReceivedMessagesResponse.fromBuffer(
              value));
  static final _$syncAccountConnectedAccountAssistantReceivedMessages =
      $grpc.ClientMethod<
              $44.SyncAccountConnectedAccountAssistantReceivedMessagesRequest,
              $44.SyncAccountConnectedAccountAssistantReceivedMessagesResponse>(
          '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/SyncAccountConnectedAccountAssistantReceivedMessages',
          ($44.SyncAccountConnectedAccountAssistantReceivedMessagesRequest
                  value) =>
              value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $44.SyncAccountConnectedAccountAssistantReceivedMessagesResponse
                  .fromBuffer(value));
  static final _$listenForReceivedAccountAssistantMessages = $grpc.ClientMethod<
          $44.ListenForReceivedAccountAssistantMessagesRequest,
          $44.ListenForReceivedAccountAssistantMessagesResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/ListenForReceivedAccountAssistantMessages',
      ($44.ListenForReceivedAccountAssistantMessagesRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.ListenForReceivedAccountAssistantMessagesResponse.fromBuffer(
              value));
  static final _$listenForReceivedAccountMessages = $grpc.ClientMethod<
          $44.ListenForReceivedAccountMessagesRequest,
          $44.ListenForReceivedAccountMessagesResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/ListenForReceivedAccountMessages',
      ($44.ListenForReceivedAccountMessagesRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.ListenForReceivedAccountMessagesResponse.fromBuffer(value));
  static final _$listenForReceivedAccountSpeedMessages = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $44.ListenForReceivedAccountSpeedMessagesResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/ListenForReceivedAccountSpeedMessages',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.ListenForReceivedAccountSpeedMessagesResponse.fromBuffer(value));
  static final _$listenForReceivedAccountAssistantSpeedMessages =
      $grpc.ClientMethod<$0.AccountServicesAccessAuthDetails,
              $44.ListenForReceivedAccountAssistantSpeedMessagesResponse>(
          '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/ListenForReceivedAccountAssistantSpeedMessages',
          ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $44.ListenForReceivedAccountAssistantSpeedMessagesResponse
                  .fromBuffer(value));
  static final _$getLast24ProductNReceivedMessages = $grpc.ClientMethod<
          $44.GetLast24ProductNReceivedMessagesRequest,
          $44.GetLast24ProductNReceivedMessagesResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/GetLast24ProductNReceivedMessages',
      ($44.GetLast24ProductNReceivedMessagesRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.GetLast24ProductNReceivedMessagesResponse.fromBuffer(value));
  static final _$getAccountReceivedMessagesCount = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $44.AccountReceivedMessagesCountResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/GetAccountReceivedMessagesCount',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.AccountReceivedMessagesCountResponse.fromBuffer(value));
  static final _$getAccountAssistantReceivedMessagesCount = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $44.AccountAssistantReceivedMessagesCountResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/GetAccountAssistantReceivedMessagesCount',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.AccountAssistantReceivedMessagesCountResponse.fromBuffer(value));
  static final _$getAccountLastReceivedMessage = $grpc.ClientMethod<
          $44.GetAccountLastReceivedMessageRequest,
          $44.GetAccountLastReceivedMessageResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/GetAccountLastReceivedMessage',
      ($44.GetAccountLastReceivedMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.GetAccountLastReceivedMessageResponse.fromBuffer(value));
  static final _$getAccountAssistantLastReceivedMessage = $grpc.ClientMethod<
          $44.GetAccountAssistantLastReceivedMessageRequest,
          $44.GetAccountAssistantLastReceivedMessageResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/GetAccountAssistantLastReceivedMessage',
      ($44.GetAccountAssistantLastReceivedMessageRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.GetAccountAssistantLastReceivedMessageResponse.fromBuffer(value));
  static final _$getReceivedMessagesAccounts = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $44.GetReceivedMessagesAccountsResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/GetReceivedMessagesAccounts',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.GetReceivedMessagesAccountsResponse.fromBuffer(value));
  static final _$getReceivedMessagesAccountAssistants = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $44.GetReceivedMessagesAccountAssistantsResponse>(
      '/elint.services.product.conversation.message.account.ReceiveAccountMessageService/GetReceivedMessagesAccountAssistants',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $44.GetReceivedMessagesAccountAssistantsResponse.fromBuffer(value));

  ReceiveAccountMessageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$44.MessageFromAccountAssistantReceived>
      receiveMessageFromAccountAssistant(
          $44.MessageFromAccountAssistant request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$receiveMessageFromAccountAssistant, request,
        options: options);
  }

  $grpc.ResponseFuture<$44.MessageFromAccountReceived>
      receiveMessageFromAccount($44.MessageFromAccount request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$receiveMessageFromAccount, request,
        options: options);
  }

  $grpc.ResponseStream<$44.AccountAssistantReceivedMessage>
      syncAccountAssistantReceivedMessages(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$syncAccountAssistantReceivedMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$44.SyncAccountReceivedMessagesResponse>
      syncAccountReceivedMessages($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$syncAccountReceivedMessages, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$44.SyncAccountConnectedAccountReceivedMessagesResponse>
      syncAccountConnectedAccountReceivedMessages(
          $44.SyncAccountConnectedAccountReceivedMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$syncAccountConnectedAccountReceivedMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<
          $44.SyncAccountConnectedAccountAssistantReceivedMessagesResponse>
      syncAccountConnectedAccountAssistantReceivedMessages(
          $44.SyncAccountConnectedAccountAssistantReceivedMessagesRequest
              request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$syncAccountConnectedAccountAssistantReceivedMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$44.ListenForReceivedAccountAssistantMessagesResponse>
      listenForReceivedAccountAssistantMessages(
          $44.ListenForReceivedAccountAssistantMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$listenForReceivedAccountAssistantMessages, request,
        options: options);
  }

  $grpc.ResponseFuture<$44.ListenForReceivedAccountMessagesResponse>
      listenForReceivedAccountMessages(
          $44.ListenForReceivedAccountMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listenForReceivedAccountMessages, request,
        options: options);
  }

  $grpc.ResponseStream<$44.ListenForReceivedAccountSpeedMessagesResponse>
      listenForReceivedAccountSpeedMessages(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$listenForReceivedAccountSpeedMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<
          $44.ListenForReceivedAccountAssistantSpeedMessagesResponse>
      listenForReceivedAccountAssistantSpeedMessages(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$listenForReceivedAccountAssistantSpeedMessages,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$44.GetLast24ProductNReceivedMessagesResponse>
      getLast24ProductNReceivedMessages(
          $44.GetLast24ProductNReceivedMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLast24ProductNReceivedMessages, request,
        options: options);
  }

  $grpc.ResponseFuture<$44.AccountReceivedMessagesCountResponse>
      getAccountReceivedMessagesCount(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountReceivedMessagesCount, request,
        options: options);
  }

  $grpc.ResponseFuture<$44.AccountAssistantReceivedMessagesCountResponse>
      getAccountAssistantReceivedMessagesCount(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantReceivedMessagesCount, request,
        options: options);
  }

  $grpc.ResponseFuture<$44.GetAccountLastReceivedMessageResponse>
      getAccountLastReceivedMessage(
          $44.GetAccountLastReceivedMessageRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountLastReceivedMessage, request,
        options: options);
  }

  $grpc.ResponseFuture<$44.GetAccountAssistantLastReceivedMessageResponse>
      getAccountAssistantLastReceivedMessage(
          $44.GetAccountAssistantLastReceivedMessageRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantLastReceivedMessage, request,
        options: options);
  }

  $grpc.ResponseFuture<$44.GetReceivedMessagesAccountsResponse>
      getReceivedMessagesAccounts($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReceivedMessagesAccounts, request,
        options: options);
  }

  $grpc.ResponseFuture<$44.GetReceivedMessagesAccountAssistantsResponse>
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
    $addMethod($grpc.ServiceMethod<$44.MessageFromAccountAssistant,
            $44.MessageFromAccountAssistantReceived>(
        'ReceiveMessageFromAccountAssistant',
        receiveMessageFromAccountAssistant_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $44.MessageFromAccountAssistant.fromBuffer(value),
        ($44.MessageFromAccountAssistantReceived value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$44.MessageFromAccount,
            $44.MessageFromAccountReceived>(
        'ReceiveMessageFromAccount',
        receiveMessageFromAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $44.MessageFromAccount.fromBuffer(value),
        ($44.MessageFromAccountReceived value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $44.AccountAssistantReceivedMessage>(
        'SyncAccountAssistantReceivedMessages',
        syncAccountAssistantReceivedMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($44.AccountAssistantReceivedMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $44.SyncAccountReceivedMessagesResponse>(
        'SyncAccountReceivedMessages',
        syncAccountReceivedMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($44.SyncAccountReceivedMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $44.SyncAccountConnectedAccountReceivedMessagesRequest,
            $44.SyncAccountConnectedAccountReceivedMessagesResponse>(
        'SyncAccountConnectedAccountReceivedMessages',
        syncAccountConnectedAccountReceivedMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $44.SyncAccountConnectedAccountReceivedMessagesRequest.fromBuffer(
                value),
        ($44.SyncAccountConnectedAccountReceivedMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $44.SyncAccountConnectedAccountAssistantReceivedMessagesRequest,
            $44.SyncAccountConnectedAccountAssistantReceivedMessagesResponse>(
        'SyncAccountConnectedAccountAssistantReceivedMessages',
        syncAccountConnectedAccountAssistantReceivedMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $44.SyncAccountConnectedAccountAssistantReceivedMessagesRequest
                .fromBuffer(value),
        ($44.SyncAccountConnectedAccountAssistantReceivedMessagesResponse
                value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $44.ListenForReceivedAccountAssistantMessagesRequest,
            $44.ListenForReceivedAccountAssistantMessagesResponse>(
        'ListenForReceivedAccountAssistantMessages',
        listenForReceivedAccountAssistantMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $44.ListenForReceivedAccountAssistantMessagesRequest.fromBuffer(
                value),
        ($44.ListenForReceivedAccountAssistantMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$44.ListenForReceivedAccountMessagesRequest,
            $44.ListenForReceivedAccountMessagesResponse>(
        'ListenForReceivedAccountMessages',
        listenForReceivedAccountMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $44.ListenForReceivedAccountMessagesRequest.fromBuffer(value),
        ($44.ListenForReceivedAccountMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $44.ListenForReceivedAccountSpeedMessagesResponse>(
        'ListenForReceivedAccountSpeedMessages',
        listenForReceivedAccountSpeedMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($44.ListenForReceivedAccountSpeedMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $44.ListenForReceivedAccountAssistantSpeedMessagesResponse>(
        'ListenForReceivedAccountAssistantSpeedMessages',
        listenForReceivedAccountAssistantSpeedMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($44.ListenForReceivedAccountAssistantSpeedMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$44.GetLast24ProductNReceivedMessagesRequest,
            $44.GetLast24ProductNReceivedMessagesResponse>(
        'GetLast24ProductNReceivedMessages',
        getLast24ProductNReceivedMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $44.GetLast24ProductNReceivedMessagesRequest.fromBuffer(value),
        ($44.GetLast24ProductNReceivedMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $44.AccountReceivedMessagesCountResponse>(
        'GetAccountReceivedMessagesCount',
        getAccountReceivedMessagesCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($44.AccountReceivedMessagesCountResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $44.AccountAssistantReceivedMessagesCountResponse>(
        'GetAccountAssistantReceivedMessagesCount',
        getAccountAssistantReceivedMessagesCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($44.AccountAssistantReceivedMessagesCountResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$44.GetAccountLastReceivedMessageRequest,
            $44.GetAccountLastReceivedMessageResponse>(
        'GetAccountLastReceivedMessage',
        getAccountLastReceivedMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $44.GetAccountLastReceivedMessageRequest.fromBuffer(value),
        ($44.GetAccountLastReceivedMessageResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $44.GetAccountAssistantLastReceivedMessageRequest,
            $44.GetAccountAssistantLastReceivedMessageResponse>(
        'GetAccountAssistantLastReceivedMessage',
        getAccountAssistantLastReceivedMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $44.GetAccountAssistantLastReceivedMessageRequest.fromBuffer(value),
        ($44.GetAccountAssistantLastReceivedMessageResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $44.GetReceivedMessagesAccountsResponse>(
        'GetReceivedMessagesAccounts',
        getReceivedMessagesAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($44.GetReceivedMessagesAccountsResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $44.GetReceivedMessagesAccountAssistantsResponse>(
        'GetReceivedMessagesAccountAssistants',
        getReceivedMessagesAccountAssistants_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($44.GetReceivedMessagesAccountAssistantsResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$44.MessageFromAccountAssistantReceived>
      receiveMessageFromAccountAssistant_Pre($grpc.ServiceCall call,
          $async.Future<$44.MessageFromAccountAssistant> request) async {
    return receiveMessageFromAccountAssistant(call, await request);
  }

  $async.Future<$44.MessageFromAccountReceived> receiveMessageFromAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$44.MessageFromAccount> request) async {
    return receiveMessageFromAccount(call, await request);
  }

  $async.Stream<$44.AccountAssistantReceivedMessage>
      syncAccountAssistantReceivedMessages_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async* {
    yield* syncAccountAssistantReceivedMessages(call, await request);
  }

  $async.Stream<$44.SyncAccountReceivedMessagesResponse>
      syncAccountReceivedMessages_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async* {
    yield* syncAccountReceivedMessages(call, await request);
  }

  $async.Stream<$44.SyncAccountConnectedAccountReceivedMessagesResponse>
      syncAccountConnectedAccountReceivedMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<$44.SyncAccountConnectedAccountReceivedMessagesRequest>
              request) async* {
    yield* syncAccountConnectedAccountReceivedMessages(call, await request);
  }

  $async.Stream<
          $44.SyncAccountConnectedAccountAssistantReceivedMessagesResponse>
      syncAccountConnectedAccountAssistantReceivedMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $44.SyncAccountConnectedAccountAssistantReceivedMessagesRequest>
              request) async* {
    yield* syncAccountConnectedAccountAssistantReceivedMessages(
        call, await request);
  }

  $async.Future<$44.ListenForReceivedAccountAssistantMessagesResponse>
      listenForReceivedAccountAssistantMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<$44.ListenForReceivedAccountAssistantMessagesRequest>
              request) async {
    return listenForReceivedAccountAssistantMessages(call, await request);
  }

  $async.Future<$44.ListenForReceivedAccountMessagesResponse>
      listenForReceivedAccountMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<$44.ListenForReceivedAccountMessagesRequest>
              request) async {
    return listenForReceivedAccountMessages(call, await request);
  }

  $async.Stream<$44.ListenForReceivedAccountSpeedMessagesResponse>
      listenForReceivedAccountSpeedMessages_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async* {
    yield* listenForReceivedAccountSpeedMessages(call, await request);
  }

  $async.Stream<$44.ListenForReceivedAccountAssistantSpeedMessagesResponse>
      listenForReceivedAccountAssistantSpeedMessages_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async* {
    yield* listenForReceivedAccountAssistantSpeedMessages(call, await request);
  }

  $async.Future<$44.GetLast24ProductNReceivedMessagesResponse>
      getLast24ProductNReceivedMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<$44.GetLast24ProductNReceivedMessagesRequest>
              request) async {
    return getLast24ProductNReceivedMessages(call, await request);
  }

  $async.Future<$44.AccountReceivedMessagesCountResponse>
      getAccountReceivedMessagesCount_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountReceivedMessagesCount(call, await request);
  }

  $async.Future<$44.AccountAssistantReceivedMessagesCountResponse>
      getAccountAssistantReceivedMessagesCount_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountAssistantReceivedMessagesCount(call, await request);
  }

  $async.Future<$44.GetAccountLastReceivedMessageResponse>
      getAccountLastReceivedMessage_Pre(
          $grpc.ServiceCall call,
          $async.Future<$44.GetAccountLastReceivedMessageRequest>
              request) async {
    return getAccountLastReceivedMessage(call, await request);
  }

  $async.Future<$44.GetAccountAssistantLastReceivedMessageResponse>
      getAccountAssistantLastReceivedMessage_Pre(
          $grpc.ServiceCall call,
          $async.Future<$44.GetAccountAssistantLastReceivedMessageRequest>
              request) async {
    return getAccountAssistantLastReceivedMessage(call, await request);
  }

  $async.Future<$44.GetReceivedMessagesAccountsResponse>
      getReceivedMessagesAccounts_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getReceivedMessagesAccounts(call, await request);
  }

  $async.Future<$44.GetReceivedMessagesAccountAssistantsResponse>
      getReceivedMessagesAccountAssistants_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getReceivedMessagesAccountAssistants(call, await request);
  }

  $async.Future<$44.MessageFromAccountAssistantReceived>
      receiveMessageFromAccountAssistant(
          $grpc.ServiceCall call, $44.MessageFromAccountAssistant request);
  $async.Future<$44.MessageFromAccountReceived> receiveMessageFromAccount(
      $grpc.ServiceCall call, $44.MessageFromAccount request);
  $async.Stream<$44.AccountAssistantReceivedMessage>
      syncAccountAssistantReceivedMessages(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Stream<$44.SyncAccountReceivedMessagesResponse>
      syncAccountReceivedMessages(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Stream<$44.SyncAccountConnectedAccountReceivedMessagesResponse>
      syncAccountConnectedAccountReceivedMessages($grpc.ServiceCall call,
          $44.SyncAccountConnectedAccountReceivedMessagesRequest request);
  $async.Stream<
          $44.SyncAccountConnectedAccountAssistantReceivedMessagesResponse>
      syncAccountConnectedAccountAssistantReceivedMessages(
          $grpc.ServiceCall call,
          $44.SyncAccountConnectedAccountAssistantReceivedMessagesRequest
              request);
  $async.Future<$44.ListenForReceivedAccountAssistantMessagesResponse>
      listenForReceivedAccountAssistantMessages($grpc.ServiceCall call,
          $44.ListenForReceivedAccountAssistantMessagesRequest request);
  $async.Future<$44.ListenForReceivedAccountMessagesResponse>
      listenForReceivedAccountMessages($grpc.ServiceCall call,
          $44.ListenForReceivedAccountMessagesRequest request);
  $async.Stream<$44.ListenForReceivedAccountSpeedMessagesResponse>
      listenForReceivedAccountSpeedMessages(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Stream<$44.ListenForReceivedAccountAssistantSpeedMessagesResponse>
      listenForReceivedAccountAssistantSpeedMessages(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$44.GetLast24ProductNReceivedMessagesResponse>
      getLast24ProductNReceivedMessages($grpc.ServiceCall call,
          $44.GetLast24ProductNReceivedMessagesRequest request);
  $async.Future<$44.AccountReceivedMessagesCountResponse>
      getAccountReceivedMessagesCount(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$44.AccountAssistantReceivedMessagesCountResponse>
      getAccountAssistantReceivedMessagesCount(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$44.GetAccountLastReceivedMessageResponse>
      getAccountLastReceivedMessage($grpc.ServiceCall call,
          $44.GetAccountLastReceivedMessageRequest request);
  $async.Future<$44.GetAccountAssistantLastReceivedMessageResponse>
      getAccountAssistantLastReceivedMessage($grpc.ServiceCall call,
          $44.GetAccountAssistantLastReceivedMessageRequest request);
  $async.Future<$44.GetReceivedMessagesAccountsResponse>
      getReceivedMessagesAccounts(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$44.GetReceivedMessagesAccountAssistantsResponse>
      getReceivedMessagesAccountAssistants(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
}
