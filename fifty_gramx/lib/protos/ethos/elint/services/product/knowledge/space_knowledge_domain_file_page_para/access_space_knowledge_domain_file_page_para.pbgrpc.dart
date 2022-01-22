///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page_para/access_space_knowledge_domain_file_page_para.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_space_knowledge_domain_file_page_para.pb.dart' as $39;
export 'access_space_knowledge_domain_file_page_para.pb.dart';

class AccessSpaceKnowledgeDomainFilePageParaServiceClient extends $grpc.Client {
  static final _$spaceKnowledgeDomainFilePageParaAccessToken = $grpc.ClientMethod<
          $39.SpaceKnowledgeDomainFilePageParaAccessTokenRequest,
          $39.SpaceKnowledgeDomainFilePageParaAccessTokenResponse>(
      '/elint.services.product.knowledge.para.AccessSpaceKnowledgeDomainFilePageParaService/SpaceKnowledgeDomainFilePageParaAccessToken',
      ($39.SpaceKnowledgeDomainFilePageParaAccessTokenRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $39.SpaceKnowledgeDomainFilePageParaAccessTokenResponse.fromBuffer(
              value));
  static final _$validateSpaceKnowledgeDomainFilePageParaServices =
      $grpc.ClientMethod<
              $39.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails,
              $39.ValidateSpaceKnowledgeDomainFilePageParaServicesResponse>(
          '/elint.services.product.knowledge.para.AccessSpaceKnowledgeDomainFilePageParaService/ValidateSpaceKnowledgeDomainFilePageParaServices',
          ($39.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails
                  value) =>
              value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $39.ValidateSpaceKnowledgeDomainFilePageParaServicesResponse
                  .fromBuffer(value));

  AccessSpaceKnowledgeDomainFilePageParaServiceClient(
      $grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$39.SpaceKnowledgeDomainFilePageParaAccessTokenResponse>
      spaceKnowledgeDomainFilePageParaAccessToken(
          $39.SpaceKnowledgeDomainFilePageParaAccessTokenRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$spaceKnowledgeDomainFilePageParaAccessToken, request,
        options: options);
  }

  $grpc.ResponseFuture<
          $39.ValidateSpaceKnowledgeDomainFilePageParaServicesResponse>
      validateSpaceKnowledgeDomainFilePageParaServices(
          $39.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$validateSpaceKnowledgeDomainFilePageParaServices, request,
        options: options);
  }
}

abstract class AccessSpaceKnowledgeDomainFilePageParaServiceBase
    extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.para.AccessSpaceKnowledgeDomainFilePageParaService';

  AccessSpaceKnowledgeDomainFilePageParaServiceBase() {
    $addMethod($grpc.ServiceMethod<
            $39.SpaceKnowledgeDomainFilePageParaAccessTokenRequest,
            $39.SpaceKnowledgeDomainFilePageParaAccessTokenResponse>(
        'SpaceKnowledgeDomainFilePageParaAccessToken',
        spaceKnowledgeDomainFilePageParaAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $39.SpaceKnowledgeDomainFilePageParaAccessTokenRequest.fromBuffer(
                value),
        ($39.SpaceKnowledgeDomainFilePageParaAccessTokenResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $39.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails,
            $39.ValidateSpaceKnowledgeDomainFilePageParaServicesResponse>(
        'ValidateSpaceKnowledgeDomainFilePageParaServices',
        validateSpaceKnowledgeDomainFilePageParaServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $39.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails
                .fromBuffer(value),
        ($39.ValidateSpaceKnowledgeDomainFilePageParaServicesResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$39.SpaceKnowledgeDomainFilePageParaAccessTokenResponse>
      spaceKnowledgeDomainFilePageParaAccessToken_Pre(
          $grpc.ServiceCall call,
          $async.Future<$39.SpaceKnowledgeDomainFilePageParaAccessTokenRequest>
              request) async {
    return spaceKnowledgeDomainFilePageParaAccessToken(call, await request);
  }

  $async.Future<$39.ValidateSpaceKnowledgeDomainFilePageParaServicesResponse>
      validateSpaceKnowledgeDomainFilePageParaServices_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $39.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails>
              request) async {
    return validateSpaceKnowledgeDomainFilePageParaServices(
        call, await request);
  }

  $async.Future<$39.SpaceKnowledgeDomainFilePageParaAccessTokenResponse>
      spaceKnowledgeDomainFilePageParaAccessToken($grpc.ServiceCall call,
          $39.SpaceKnowledgeDomainFilePageParaAccessTokenRequest request);
  $async.Future<$39.ValidateSpaceKnowledgeDomainFilePageParaServicesResponse>
      validateSpaceKnowledgeDomainFilePageParaServices(
          $grpc.ServiceCall call,
          $39.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails
              request);
}
