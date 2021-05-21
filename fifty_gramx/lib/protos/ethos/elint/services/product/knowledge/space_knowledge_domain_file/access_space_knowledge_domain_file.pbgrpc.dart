///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file/access_space_knowledge_domain_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_space_knowledge_domain_file.pb.dart' as $33;
export 'access_space_knowledge_domain_file.pb.dart';

class AccessSpaceKnowledgeDomainFileServiceClient extends $grpc.Client {
  static final _$spaceKnowledgeDomainFileAccessToken = $grpc.ClientMethod<
          $33.SpaceKnowledgeDomainFileAccessTokenRequest,
          $33.SpaceKnowledgeDomainFileAccessTokenResponse>(
      '/elint.services.product.knowledge.file.AccessSpaceKnowledgeDomainFileService/SpaceKnowledgeDomainFileAccessToken',
      ($33.SpaceKnowledgeDomainFileAccessTokenRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $33.SpaceKnowledgeDomainFileAccessTokenResponse.fromBuffer(value));
  static final _$validateSpaceKnowledgeDomainFileServices = $grpc.ClientMethod<
          $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails,
          $33.ValidateSpaceKnowledgeDomainFileServicesResponse>(
      '/elint.services.product.knowledge.file.AccessSpaceKnowledgeDomainFileService/ValidateSpaceKnowledgeDomainFileServices',
      ($33.SpaceKnowledgeDomainFileServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $33.ValidateSpaceKnowledgeDomainFileServicesResponse.fromBuffer(
              value));

  AccessSpaceKnowledgeDomainFileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$33.SpaceKnowledgeDomainFileAccessTokenResponse>
      spaceKnowledgeDomainFileAccessToken(
          $33.SpaceKnowledgeDomainFileAccessTokenRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$spaceKnowledgeDomainFileAccessToken, request,
        options: options);
  }

  $grpc.ResponseFuture<$33.ValidateSpaceKnowledgeDomainFileServicesResponse>
      validateSpaceKnowledgeDomainFileServices(
          $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateSpaceKnowledgeDomainFileServices, request,
        options: options);
  }
}

abstract class AccessSpaceKnowledgeDomainFileServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.file.AccessSpaceKnowledgeDomainFileService';

  AccessSpaceKnowledgeDomainFileServiceBase() {
    $addMethod($grpc.ServiceMethod<
            $33.SpaceKnowledgeDomainFileAccessTokenRequest,
            $33.SpaceKnowledgeDomainFileAccessTokenResponse>(
        'SpaceKnowledgeDomainFileAccessToken',
        spaceKnowledgeDomainFileAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $33.SpaceKnowledgeDomainFileAccessTokenRequest.fromBuffer(value),
        ($33.SpaceKnowledgeDomainFileAccessTokenResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails,
            $33.ValidateSpaceKnowledgeDomainFileServicesResponse>(
        'ValidateSpaceKnowledgeDomainFileServices',
        validateSpaceKnowledgeDomainFileServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails.fromBuffer(
                value),
        ($33.ValidateSpaceKnowledgeDomainFileServicesResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$33.SpaceKnowledgeDomainFileAccessTokenResponse>
      spaceKnowledgeDomainFileAccessToken_Pre(
          $grpc.ServiceCall call,
          $async.Future<$33.SpaceKnowledgeDomainFileAccessTokenRequest>
              request) async {
    return spaceKnowledgeDomainFileAccessToken(call, await request);
  }

  $async.Future<$33.ValidateSpaceKnowledgeDomainFileServicesResponse>
      validateSpaceKnowledgeDomainFileServices_Pre(
          $grpc.ServiceCall call,
          $async.Future<$33.SpaceKnowledgeDomainFileServicesAccessAuthDetails>
              request) async {
    return validateSpaceKnowledgeDomainFileServices(call, await request);
  }

  $async.Future<$33.SpaceKnowledgeDomainFileAccessTokenResponse>
      spaceKnowledgeDomainFileAccessToken($grpc.ServiceCall call,
          $33.SpaceKnowledgeDomainFileAccessTokenRequest request);
  $async.Future<$33.ValidateSpaceKnowledgeDomainFileServicesResponse>
      validateSpaceKnowledgeDomainFileServices($grpc.ServiceCall call,
          $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails request);
}
