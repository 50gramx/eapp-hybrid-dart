///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge/access_space_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../identity/space/access_space.pb.dart' as $14;
import 'access_space_knowledge.pb.dart' as $23;
export 'access_space_knowledge.pb.dart';

class AccessSpaceKnowledgeServiceClient extends $grpc.Client {
  static final _$spaceKnowledgeAccessToken = $grpc.ClientMethod<
          $14.SpaceServicesAccessAuthDetails,
          $23.SpaceKnowledgeAccessTokenResponse>(
      '/elint.services.product.knowledge.space.AccessSpaceKnowledgeService/SpaceKnowledgeAccessToken',
      ($14.SpaceServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $23.SpaceKnowledgeAccessTokenResponse.fromBuffer(value));
  static final _$validateSpaceKnowledgeServices = $grpc.ClientMethod<
          $23.SpaceKnowledgeServicesAccessAuthDetails,
          $23.ValidateSpaceKnowledgeServicesResponse>(
      '/elint.services.product.knowledge.space.AccessSpaceKnowledgeService/ValidateSpaceKnowledgeServices',
      ($23.SpaceKnowledgeServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $23.ValidateSpaceKnowledgeServicesResponse.fromBuffer(value));

  AccessSpaceKnowledgeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$23.SpaceKnowledgeAccessTokenResponse>
      spaceKnowledgeAccessToken($14.SpaceServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$spaceKnowledgeAccessToken, request,
        options: options);
  }

  $grpc.ResponseFuture<$23.ValidateSpaceKnowledgeServicesResponse>
      validateSpaceKnowledgeServices(
          $23.SpaceKnowledgeServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateSpaceKnowledgeServices, request,
        options: options);
  }
}

abstract class AccessSpaceKnowledgeServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.space.AccessSpaceKnowledgeService';

  AccessSpaceKnowledgeServiceBase() {
    $addMethod($grpc.ServiceMethod<$14.SpaceServicesAccessAuthDetails,
            $23.SpaceKnowledgeAccessTokenResponse>(
        'SpaceKnowledgeAccessToken',
        spaceKnowledgeAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $14.SpaceServicesAccessAuthDetails.fromBuffer(value),
        ($23.SpaceKnowledgeAccessTokenResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.SpaceKnowledgeServicesAccessAuthDetails,
            $23.ValidateSpaceKnowledgeServicesResponse>(
        'ValidateSpaceKnowledgeServices',
        validateSpaceKnowledgeServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $23.SpaceKnowledgeServicesAccessAuthDetails.fromBuffer(value),
        ($23.ValidateSpaceKnowledgeServicesResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$23.SpaceKnowledgeAccessTokenResponse>
      spaceKnowledgeAccessToken_Pre($grpc.ServiceCall call,
          $async.Future<$14.SpaceServicesAccessAuthDetails> request) async {
    return spaceKnowledgeAccessToken(call, await request);
  }

  $async.Future<$23.ValidateSpaceKnowledgeServicesResponse>
      validateSpaceKnowledgeServices_Pre(
          $grpc.ServiceCall call,
          $async.Future<$23.SpaceKnowledgeServicesAccessAuthDetails>
              request) async {
    return validateSpaceKnowledgeServices(call, await request);
  }

  $async.Future<$23.SpaceKnowledgeAccessTokenResponse>
      spaceKnowledgeAccessToken(
          $grpc.ServiceCall call, $14.SpaceServicesAccessAuthDetails request);
  $async.Future<$23.ValidateSpaceKnowledgeServicesResponse>
      validateSpaceKnowledgeServices($grpc.ServiceCall call,
          $23.SpaceKnowledgeServicesAccessAuthDetails request);
}
