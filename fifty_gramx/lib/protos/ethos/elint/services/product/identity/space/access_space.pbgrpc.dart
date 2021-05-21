///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/space/access_space.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../account/access_account.pb.dart' as $0;
import 'access_space.pb.dart' as $14;
import '../account_assistant/access_account_assistant.pb.dart' as $13;
export 'access_space.pb.dart';

class AccessSpaceServiceClient extends $grpc.Client {
  static final _$spaceAccessToken = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $14.SpaceAccessTokenResponse>(
      '/elint.services.product.identity.space.AccessSpaceService/SpaceAccessToken',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $14.SpaceAccessTokenResponse.fromBuffer(value));
  static final _$assistSpaceAccessToken = $grpc.ClientMethod<
          $13.AccountAssistantServicesAccessAuthDetails,
          $14.SpaceAccessTokenResponse>(
      '/elint.services.product.identity.space.AccessSpaceService/AssistSpaceAccessToken',
      ($13.AccountAssistantServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $14.SpaceAccessTokenResponse.fromBuffer(value));
  static final _$validateSpaceServices = $grpc.ClientMethod<
          $14.SpaceServicesAccessAuthDetails,
          $14.ValidateSpaceServicesResponse>(
      '/elint.services.product.identity.space.AccessSpaceService/ValidateSpaceServices',
      ($14.SpaceServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $14.ValidateSpaceServicesResponse.fromBuffer(value));

  AccessSpaceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$14.SpaceAccessTokenResponse> spaceAccessToken(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$spaceAccessToken, request, options: options);
  }

  $grpc.ResponseFuture<$14.SpaceAccessTokenResponse> assistSpaceAccessToken(
      $13.AccountAssistantServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assistSpaceAccessToken, request,
        options: options);
  }

  $grpc.ResponseFuture<$14.ValidateSpaceServicesResponse> validateSpaceServices(
      $14.SpaceServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateSpaceServices, request, options: options);
  }
}

abstract class AccessSpaceServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.space.AccessSpaceService';

  AccessSpaceServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $14.SpaceAccessTokenResponse>(
        'SpaceAccessToken',
        spaceAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($14.SpaceAccessTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $13.AccountAssistantServicesAccessAuthDetails,
            $14.SpaceAccessTokenResponse>(
        'AssistSpaceAccessToken',
        assistSpaceAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $13.AccountAssistantServicesAccessAuthDetails.fromBuffer(value),
        ($14.SpaceAccessTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$14.SpaceServicesAccessAuthDetails,
            $14.ValidateSpaceServicesResponse>(
        'ValidateSpaceServices',
        validateSpaceServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $14.SpaceServicesAccessAuthDetails.fromBuffer(value),
        ($14.ValidateSpaceServicesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.SpaceAccessTokenResponse> spaceAccessToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return spaceAccessToken(call, await request);
  }

  $async.Future<$14.SpaceAccessTokenResponse> assistSpaceAccessToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$13.AccountAssistantServicesAccessAuthDetails>
          request) async {
    return assistSpaceAccessToken(call, await request);
  }

  $async.Future<$14.ValidateSpaceServicesResponse> validateSpaceServices_Pre(
      $grpc.ServiceCall call,
      $async.Future<$14.SpaceServicesAccessAuthDetails> request) async {
    return validateSpaceServices(call, await request);
  }

  $async.Future<$14.SpaceAccessTokenResponse> spaceAccessToken(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$14.SpaceAccessTokenResponse> assistSpaceAccessToken(
      $grpc.ServiceCall call,
      $13.AccountAssistantServicesAccessAuthDetails request);
  $async.Future<$14.ValidateSpaceServicesResponse> validateSpaceServices(
      $grpc.ServiceCall call, $14.SpaceServicesAccessAuthDetails request);
}
