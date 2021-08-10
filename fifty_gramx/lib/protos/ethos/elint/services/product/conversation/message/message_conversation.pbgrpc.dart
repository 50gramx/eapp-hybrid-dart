///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/conversation/message/message_conversation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../identity/account/access_account.pb.dart' as $0;
import '../../../../entities/generic.pb.dart' as $2;
import '../../identity/account_assistant/access_account_assistant.pb.dart'
    as $8;
import 'message_conversation.pb.dart' as $48;
export 'message_conversation.pb.dart';

class MessageConversationServiceClient extends $grpc.Client {
  static final _$setupAccountConversations = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $2.ResponseMeta>(
      '/elint.services.product.conversation.message.MessageConversationService/SetupAccountConversations',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$setupAccountAssistantConversations = $grpc.ClientMethod<
          $8.AccountAssistantServicesAccessAuthDetails, $2.ResponseMeta>(
      '/elint.services.product.conversation.message.MessageConversationService/SetupAccountAssistantConversations',
      ($8.AccountAssistantServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$getAccountAndAssistantConversations = $grpc.ClientMethod<
          $48.GetAccountAndAssistantConversationsRequest,
          $48.GetAccountAndAssistantConversationsResponse>(
      '/elint.services.product.conversation.message.MessageConversationService/GetAccountAndAssistantConversations',
      ($48.GetAccountAndAssistantConversationsRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $48.GetAccountAndAssistantConversationsResponse.fromBuffer(value));
  static final _$getLast24ProductNConversationMessages = $grpc.ClientMethod<
          $48.GetLast24ProductNConversationMessagesRequest,
          $48.GetLast24ProductNConversationMessagesResponse>(
      '/elint.services.product.conversation.message.MessageConversationService/GetLast24ProductNConversationMessages',
      ($48.GetLast24ProductNConversationMessagesRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $48.GetLast24ProductNConversationMessagesResponse.fromBuffer(value));
  static final _$getAccountLastMessage = $grpc.ClientMethod<
          $48.GetAccountLastMessageRequest, $48.GetAccountLastMessageResponse>(
      '/elint.services.product.conversation.message.MessageConversationService/GetAccountLastMessage',
      ($48.GetAccountLastMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $48.GetAccountLastMessageResponse.fromBuffer(value));
  static final _$getAccountAssistantLastMessage = $grpc.ClientMethod<
          $48.GetAccountAssistantLastMessageRequest,
          $48.GetAccountAssistantLastMessageResponse>(
      '/elint.services.product.conversation.message.MessageConversationService/GetAccountAssistantLastMessage',
      ($48.GetAccountAssistantLastMessageRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $48.GetAccountAssistantLastMessageResponse.fromBuffer(value));
  static final _$getConversedAccounts = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $48.GetConversedAccountsResponse>(
      '/elint.services.product.conversation.message.MessageConversationService/GetConversedAccounts',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $48.GetConversedAccountsResponse.fromBuffer(value));
  static final _$getConversedAccountAssistants = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $48.GetConversedAccountAssistantsResponse>(
      '/elint.services.product.conversation.message.MessageConversationService/GetConversedAccountAssistants',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $48.GetConversedAccountAssistantsResponse.fromBuffer(value));
  static final _$getConversedAccountAndAssistants = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $48.GetConversedAccountAndAssistantsResponse>(
      '/elint.services.product.conversation.message.MessageConversationService/GetConversedAccountAndAssistants',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $48.GetConversedAccountAndAssistantsResponse.fromBuffer(value));

  MessageConversationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.ResponseMeta> setupAccountConversations(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setupAccountConversations, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> setupAccountAssistantConversations(
      $8.AccountAssistantServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setupAccountAssistantConversations, request,
        options: options);
  }

  $grpc.ResponseStream<$48.GetAccountAndAssistantConversationsResponse>
      getAccountAndAssistantConversations(
          $48.GetAccountAndAssistantConversationsRequest request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getAccountAndAssistantConversations,
        $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$48.GetLast24ProductNConversationMessagesResponse>
      getLast24ProductNConversationMessages(
          $48.GetLast24ProductNConversationMessagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLast24ProductNConversationMessages, request,
        options: options);
  }

  $grpc.ResponseFuture<$48.GetAccountLastMessageResponse> getAccountLastMessage(
      $48.GetAccountLastMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountLastMessage, request, options: options);
  }

  $grpc.ResponseFuture<$48.GetAccountAssistantLastMessageResponse>
      getAccountAssistantLastMessage(
          $48.GetAccountAssistantLastMessageRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantLastMessage, request,
        options: options);
  }

  $grpc.ResponseFuture<$48.GetConversedAccountsResponse> getConversedAccounts(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getConversedAccounts, request, options: options);
  }

  $grpc.ResponseFuture<$48.GetConversedAccountAssistantsResponse>
      getConversedAccountAssistants($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getConversedAccountAssistants, request,
        options: options);
  }

  $grpc.ResponseFuture<$48.GetConversedAccountAndAssistantsResponse>
      getConversedAccountAndAssistants(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getConversedAccountAndAssistants, request,
        options: options);
  }
}

abstract class MessageConversationServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.conversation.message.MessageConversationService';

  MessageConversationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $2.ResponseMeta>(
        'SetupAccountConversations',
        setupAccountConversations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.AccountAssistantServicesAccessAuthDetails,
            $2.ResponseMeta>(
        'SetupAccountAssistantConversations',
        setupAccountAssistantConversations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.AccountAssistantServicesAccessAuthDetails.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $48.GetAccountAndAssistantConversationsRequest,
            $48.GetAccountAndAssistantConversationsResponse>(
        'GetAccountAndAssistantConversations',
        getAccountAndAssistantConversations_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $48.GetAccountAndAssistantConversationsRequest.fromBuffer(value),
        ($48.GetAccountAndAssistantConversationsResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $48.GetLast24ProductNConversationMessagesRequest,
            $48.GetLast24ProductNConversationMessagesResponse>(
        'GetLast24ProductNConversationMessages',
        getLast24ProductNConversationMessages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $48.GetLast24ProductNConversationMessagesRequest.fromBuffer(value),
        ($48.GetLast24ProductNConversationMessagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$48.GetAccountLastMessageRequest,
            $48.GetAccountLastMessageResponse>(
        'GetAccountLastMessage',
        getAccountLastMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $48.GetAccountLastMessageRequest.fromBuffer(value),
        ($48.GetAccountLastMessageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$48.GetAccountAssistantLastMessageRequest,
            $48.GetAccountAssistantLastMessageResponse>(
        'GetAccountAssistantLastMessage',
        getAccountAssistantLastMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $48.GetAccountAssistantLastMessageRequest.fromBuffer(value),
        ($48.GetAccountAssistantLastMessageResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $48.GetConversedAccountsResponse>(
        'GetConversedAccounts',
        getConversedAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($48.GetConversedAccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $48.GetConversedAccountAssistantsResponse>(
        'GetConversedAccountAssistants',
        getConversedAccountAssistants_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($48.GetConversedAccountAssistantsResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $48.GetConversedAccountAndAssistantsResponse>(
        'GetConversedAccountAndAssistants',
        getConversedAccountAndAssistants_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($48.GetConversedAccountAndAssistantsResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$2.ResponseMeta> setupAccountConversations_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return setupAccountConversations(call, await request);
  }

  $async.Future<$2.ResponseMeta> setupAccountAssistantConversations_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.AccountAssistantServicesAccessAuthDetails>
          request) async {
    return setupAccountAssistantConversations(call, await request);
  }

  $async.Stream<$48.GetAccountAndAssistantConversationsResponse>
      getAccountAndAssistantConversations_Pre(
          $grpc.ServiceCall call,
          $async.Future<$48.GetAccountAndAssistantConversationsRequest>
              request) async* {
    yield* getAccountAndAssistantConversations(call, await request);
  }

  $async.Future<$48.GetLast24ProductNConversationMessagesResponse>
      getLast24ProductNConversationMessages_Pre(
          $grpc.ServiceCall call,
          $async.Future<$48.GetLast24ProductNConversationMessagesRequest>
              request) async {
    return getLast24ProductNConversationMessages(call, await request);
  }

  $async.Future<$48.GetAccountLastMessageResponse> getAccountLastMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$48.GetAccountLastMessageRequest> request) async {
    return getAccountLastMessage(call, await request);
  }

  $async.Future<$48.GetAccountAssistantLastMessageResponse>
      getAccountAssistantLastMessage_Pre(
          $grpc.ServiceCall call,
          $async.Future<$48.GetAccountAssistantLastMessageRequest>
              request) async {
    return getAccountAssistantLastMessage(call, await request);
  }

  $async.Future<$48.GetConversedAccountsResponse> getConversedAccounts_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getConversedAccounts(call, await request);
  }

  $async.Future<$48.GetConversedAccountAssistantsResponse>
      getConversedAccountAssistants_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getConversedAccountAssistants(call, await request);
  }

  $async.Future<$48.GetConversedAccountAndAssistantsResponse>
      getConversedAccountAndAssistants_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getConversedAccountAndAssistants(call, await request);
  }

  $async.Future<$2.ResponseMeta> setupAccountConversations(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta> setupAccountAssistantConversations(
      $grpc.ServiceCall call,
      $8.AccountAssistantServicesAccessAuthDetails request);
  $async.Stream<$48.GetAccountAndAssistantConversationsResponse>
      getAccountAndAssistantConversations($grpc.ServiceCall call,
          $48.GetAccountAndAssistantConversationsRequest request);
  $async.Future<$48.GetLast24ProductNConversationMessagesResponse>
      getLast24ProductNConversationMessages($grpc.ServiceCall call,
          $48.GetLast24ProductNConversationMessagesRequest request);
  $async.Future<$48.GetAccountLastMessageResponse> getAccountLastMessage(
      $grpc.ServiceCall call, $48.GetAccountLastMessageRequest request);
  $async.Future<$48.GetAccountAssistantLastMessageResponse>
      getAccountAssistantLastMessage($grpc.ServiceCall call,
          $48.GetAccountAssistantLastMessageRequest request);
  $async.Future<$48.GetConversedAccountsResponse> getConversedAccounts(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$48.GetConversedAccountAssistantsResponse>
      getConversedAccountAssistants(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$48.GetConversedAccountAndAssistantsResponse>
      getConversedAccountAndAssistants(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
}
