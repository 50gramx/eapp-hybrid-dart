///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/access_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../account/access_account.pb.dart' as $0;
import 'access_account_assistant.pb.dart' as $13;
export 'access_account_assistant.pb.dart';

class AccessAccountAssistantServiceClient extends $grpc.Client {
  static final _$accountAssistantAccessToken = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $13.AccountAssistantAccessTokenResponse>(
      '/elint.services.product.identity.account.assistant.AccessAccountAssistantService/AccountAssistantAccessToken',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $13.AccountAssistantAccessTokenResponse.fromBuffer(value));
  static final _$accountAssistantAccessTokenWithMasterConnection =
      $grpc.ClientMethod<
              $13.AccountAssistantAccessTokenWithMasterConnectionRequest,
              $13.AccountAssistantAccessTokenResponse>(
          '/elint.services.product.identity.account.assistant.AccessAccountAssistantService/AccountAssistantAccessTokenWithMasterConnection',
          ($13.AccountAssistantAccessTokenWithMasterConnectionRequest value) =>
              value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $13.AccountAssistantAccessTokenResponse.fromBuffer(value));
  static final _$validateAccountAssistantServices = $grpc.ClientMethod<
          $13.AccountAssistantServicesAccessAuthDetails,
          $13.ValidateAccessMeta>(
      '/elint.services.product.identity.account.assistant.AccessAccountAssistantService/ValidateAccountAssistantServices',
      ($13.AccountAssistantServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $13.ValidateAccessMeta.fromBuffer(value));

  AccessAccountAssistantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$13.AccountAssistantAccessTokenResponse>
      accountAssistantAccessToken($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accountAssistantAccessToken, request,
        options: options);
  }

  $grpc.ResponseFuture<$13.AccountAssistantAccessTokenResponse>
      accountAssistantAccessTokenWithMasterConnection(
          $13.AccountAssistantAccessTokenWithMasterConnectionRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$accountAssistantAccessTokenWithMasterConnection, request,
        options: options);
  }

  $grpc.ResponseFuture<$13.ValidateAccessMeta> validateAccountAssistantServices(
      $13.AccountAssistantServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateAccountAssistantServices, request,
        options: options);
  }
}

abstract class AccessAccountAssistantServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.assistant.AccessAccountAssistantService';

  AccessAccountAssistantServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $13.AccountAssistantAccessTokenResponse>(
        'AccountAssistantAccessToken',
        accountAssistantAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($13.AccountAssistantAccessTokenResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $13.AccountAssistantAccessTokenWithMasterConnectionRequest,
            $13.AccountAssistantAccessTokenResponse>(
        'AccountAssistantAccessTokenWithMasterConnection',
        accountAssistantAccessTokenWithMasterConnection_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $13.AccountAssistantAccessTokenWithMasterConnectionRequest
                .fromBuffer(value),
        ($13.AccountAssistantAccessTokenResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $13.AccountAssistantServicesAccessAuthDetails,
            $13.ValidateAccessMeta>(
        'ValidateAccountAssistantServices',
        validateAccountAssistantServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $13.AccountAssistantServicesAccessAuthDetails.fromBuffer(value),
        ($13.ValidateAccessMeta value) => value.writeToBuffer()));
  }

  $async.Future<$13.AccountAssistantAccessTokenResponse>
      accountAssistantAccessToken_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return accountAssistantAccessToken(call, await request);
  }

  $async.Future<$13.AccountAssistantAccessTokenResponse>
      accountAssistantAccessTokenWithMasterConnection_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $13.AccountAssistantAccessTokenWithMasterConnectionRequest>
              request) async {
    return accountAssistantAccessTokenWithMasterConnection(call, await request);
  }

  $async.Future<$13.ValidateAccessMeta> validateAccountAssistantServices_Pre(
      $grpc.ServiceCall call,
      $async.Future<$13.AccountAssistantServicesAccessAuthDetails>
          request) async {
    return validateAccountAssistantServices(call, await request);
  }

  $async.Future<$13.AccountAssistantAccessTokenResponse>
      accountAssistantAccessToken(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$13.AccountAssistantAccessTokenResponse>
      accountAssistantAccessTokenWithMasterConnection($grpc.ServiceCall call,
          $13.AccountAssistantAccessTokenWithMasterConnectionRequest request);
  $async.Future<$13.ValidateAccessMeta> validateAccountAssistantServices(
      $grpc.ServiceCall call,
      $13.AccountAssistantServicesAccessAuthDetails request);
}
