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
//  source: ethos/elint/services/product/identity/space/access_space.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../account/access_account.pb.dart' as $0;
import 'access_space.pb.dart' as $9;
import '../account_assistant/access_account_assistant.pb.dart' as $8;
export 'access_space.pb.dart';

class AccessSpaceServiceClient extends $grpc.Client {
  static final _$spaceAccessToken = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $9.SpaceAccessTokenResponse>(
      '/elint.services.product.identity.space.AccessSpaceService/SpaceAccessToken',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $9.SpaceAccessTokenResponse.fromBuffer(value));
  static final _$assistSpaceAccessToken = $grpc.ClientMethod<
          $8.AccountAssistantServicesAccessAuthDetails,
          $9.SpaceAccessTokenResponse>(
      '/elint.services.product.identity.space.AccessSpaceService/AssistSpaceAccessToken',
      ($8.AccountAssistantServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $9.SpaceAccessTokenResponse.fromBuffer(value));
  static final _$validateSpaceServices = $grpc.ClientMethod<
          $9.SpaceServicesAccessAuthDetails, $9.ValidateSpaceServicesResponse>(
      '/elint.services.product.identity.space.AccessSpaceService/ValidateSpaceServices',
      ($9.SpaceServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $9.ValidateSpaceServicesResponse.fromBuffer(value));

  AccessSpaceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$9.SpaceAccessTokenResponse> spaceAccessToken(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$spaceAccessToken, request, options: options);
  }

  $grpc.ResponseFuture<$9.SpaceAccessTokenResponse> assistSpaceAccessToken(
      $8.AccountAssistantServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$assistSpaceAccessToken, request,
        options: options);
  }

  $grpc.ResponseFuture<$9.ValidateSpaceServicesResponse> validateSpaceServices(
      $9.SpaceServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateSpaceServices, request, options: options);
  }
}

abstract class AccessSpaceServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.space.AccessSpaceService';

  AccessSpaceServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $9.SpaceAccessTokenResponse>(
        'SpaceAccessToken',
        spaceAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($9.SpaceAccessTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.AccountAssistantServicesAccessAuthDetails,
            $9.SpaceAccessTokenResponse>(
        'AssistSpaceAccessToken',
        assistSpaceAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.AccountAssistantServicesAccessAuthDetails.fromBuffer(value),
        ($9.SpaceAccessTokenResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.SpaceServicesAccessAuthDetails,
            $9.ValidateSpaceServicesResponse>(
        'ValidateSpaceServices',
        validateSpaceServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.SpaceServicesAccessAuthDetails.fromBuffer(value),
        ($9.ValidateSpaceServicesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.SpaceAccessTokenResponse> spaceAccessToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return spaceAccessToken(call, await request);
  }

  $async.Future<$9.SpaceAccessTokenResponse> assistSpaceAccessToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.AccountAssistantServicesAccessAuthDetails>
          request) async {
    return assistSpaceAccessToken(call, await request);
  }

  $async.Future<$9.ValidateSpaceServicesResponse> validateSpaceServices_Pre(
      $grpc.ServiceCall call,
      $async.Future<$9.SpaceServicesAccessAuthDetails> request) async {
    return validateSpaceServices(call, await request);
  }

  $async.Future<$9.SpaceAccessTokenResponse> spaceAccessToken(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$9.SpaceAccessTokenResponse> assistSpaceAccessToken(
      $grpc.ServiceCall call,
      $8.AccountAssistantServicesAccessAuthDetails request);
  $async.Future<$9.ValidateSpaceServicesResponse> validateSpaceServices(
      $grpc.ServiceCall call, $9.SpaceServicesAccessAuthDetails request);
}
