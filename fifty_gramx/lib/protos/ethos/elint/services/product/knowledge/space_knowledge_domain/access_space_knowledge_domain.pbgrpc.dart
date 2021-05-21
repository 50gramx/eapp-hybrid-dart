///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain/access_space_knowledge_domain.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_space_knowledge_domain.pb.dart' as $27;
export 'access_space_knowledge_domain.pb.dart';

class AccessSpaceKnowledgeDomainServiceClient extends $grpc.Client {
  static final _$spaceKnowledgeDomainAccessToken = $grpc.ClientMethod<
          $27.SpaceKnowledgeDomainAccessTokenRequest,
          $27.SpaceKnowledgeDomainAccessTokenResponse>(
      '/elint.services.product.knowledge.domain.AccessSpaceKnowledgeDomainService/SpaceKnowledgeDomainAccessToken',
      ($27.SpaceKnowledgeDomainAccessTokenRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $27.SpaceKnowledgeDomainAccessTokenResponse.fromBuffer(value));
  static final _$validateSpaceKnowledgeDomainServices = $grpc.ClientMethod<
          $27.SpaceKnowledgeDomainServicesAccessAuthDetails,
          $27.ValidateSpaceKnowledgeDomainServicesResponse>(
      '/elint.services.product.knowledge.domain.AccessSpaceKnowledgeDomainService/ValidateSpaceKnowledgeDomainServices',
      ($27.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $27.ValidateSpaceKnowledgeDomainServicesResponse.fromBuffer(value));

  AccessSpaceKnowledgeDomainServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$27.SpaceKnowledgeDomainAccessTokenResponse>
      spaceKnowledgeDomainAccessToken(
          $27.SpaceKnowledgeDomainAccessTokenRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$spaceKnowledgeDomainAccessToken, request,
        options: options);
  }

  $grpc.ResponseFuture<$27.ValidateSpaceKnowledgeDomainServicesResponse>
      validateSpaceKnowledgeDomainServices(
          $27.SpaceKnowledgeDomainServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateSpaceKnowledgeDomainServices, request,
        options: options);
  }
}

abstract class AccessSpaceKnowledgeDomainServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.domain.AccessSpaceKnowledgeDomainService';

  AccessSpaceKnowledgeDomainServiceBase() {
    $addMethod($grpc.ServiceMethod<$27.SpaceKnowledgeDomainAccessTokenRequest,
            $27.SpaceKnowledgeDomainAccessTokenResponse>(
        'SpaceKnowledgeDomainAccessToken',
        spaceKnowledgeDomainAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $27.SpaceKnowledgeDomainAccessTokenRequest.fromBuffer(value),
        ($27.SpaceKnowledgeDomainAccessTokenResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $27.SpaceKnowledgeDomainServicesAccessAuthDetails,
            $27.ValidateSpaceKnowledgeDomainServicesResponse>(
        'ValidateSpaceKnowledgeDomainServices',
        validateSpaceKnowledgeDomainServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $27.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($27.ValidateSpaceKnowledgeDomainServicesResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$27.SpaceKnowledgeDomainAccessTokenResponse>
      spaceKnowledgeDomainAccessToken_Pre(
          $grpc.ServiceCall call,
          $async.Future<$27.SpaceKnowledgeDomainAccessTokenRequest>
              request) async {
    return spaceKnowledgeDomainAccessToken(call, await request);
  }

  $async.Future<$27.ValidateSpaceKnowledgeDomainServicesResponse>
      validateSpaceKnowledgeDomainServices_Pre(
          $grpc.ServiceCall call,
          $async.Future<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>
              request) async {
    return validateSpaceKnowledgeDomainServices(call, await request);
  }

  $async.Future<$27.SpaceKnowledgeDomainAccessTokenResponse>
      spaceKnowledgeDomainAccessToken($grpc.ServiceCall call,
          $27.SpaceKnowledgeDomainAccessTokenRequest request);
  $async.Future<$27.ValidateSpaceKnowledgeDomainServicesResponse>
      validateSpaceKnowledgeDomainServices($grpc.ServiceCall call,
          $27.SpaceKnowledgeDomainServicesAccessAuthDetails request);
}
