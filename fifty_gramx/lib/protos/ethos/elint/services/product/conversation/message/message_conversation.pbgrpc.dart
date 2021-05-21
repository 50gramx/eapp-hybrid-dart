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
    as $13;
export 'message_conversation.pb.dart';

class MessageConversationServiceClient extends $grpc.Client {
  static final _$setupAccountConversations = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $2.ResponseMeta>(
      '/elint.services.product.conversation.message.MessageConversationService/SetupAccountConversations',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$setupAccountAssistantConversations = $grpc.ClientMethod<
          $13.AccountAssistantServicesAccessAuthDetails, $2.ResponseMeta>(
      '/elint.services.product.conversation.message.MessageConversationService/SetupAccountAssistantConversations',
      ($13.AccountAssistantServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));

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
      $13.AccountAssistantServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setupAccountAssistantConversations, request,
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
    $addMethod($grpc.ServiceMethod<
            $13.AccountAssistantServicesAccessAuthDetails, $2.ResponseMeta>(
        'SetupAccountAssistantConversations',
        setupAccountAssistantConversations_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $13.AccountAssistantServicesAccessAuthDetails.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
  }

  $async.Future<$2.ResponseMeta> setupAccountConversations_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return setupAccountConversations(call, await request);
  }

  $async.Future<$2.ResponseMeta> setupAccountAssistantConversations_Pre(
      $grpc.ServiceCall call,
      $async.Future<$13.AccountAssistantServicesAccessAuthDetails>
          request) async {
    return setupAccountAssistantConversations(call, await request);
  }

  $async.Future<$2.ResponseMeta> setupAccountConversations(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta> setupAccountAssistantConversations(
      $grpc.ServiceCall call,
      $13.AccountAssistantServicesAccessAuthDetails request);
}
