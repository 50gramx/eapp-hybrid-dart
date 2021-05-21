///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page_para/access_space_knowledge_domain_file_page_para.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_space_knowledge_domain_file_page_para.pb.dart' as $42;
export 'access_space_knowledge_domain_file_page_para.pb.dart';

class AccessSpaceKnowledgeDomainFilePageParaServiceClient extends $grpc.Client {
  static final _$spaceKnowledgeDomainFilePageParaAccessToken = $grpc.ClientMethod<
          $42.SpaceKnowledgeDomainFilePageParaAccessTokenRequest,
          $42.SpaceKnowledgeDomainFilePageParaAccessTokenResponse>(
      '/elint.services.product.knowledge.para.AccessSpaceKnowledgeDomainFilePageParaService/SpaceKnowledgeDomainFilePageParaAccessToken',
      ($42.SpaceKnowledgeDomainFilePageParaAccessTokenRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $42.SpaceKnowledgeDomainFilePageParaAccessTokenResponse.fromBuffer(
              value));
  static final _$validateSpaceKnowledgeDomainFilePageParaServices =
      $grpc.ClientMethod<
              $42.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails,
              $42.ValidateSpaceKnowledgeDomainFilePageParaServicesResponse>(
          '/elint.services.product.knowledge.para.AccessSpaceKnowledgeDomainFilePageParaService/ValidateSpaceKnowledgeDomainFilePageParaServices',
          ($42.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails
                  value) =>
              value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $42.ValidateSpaceKnowledgeDomainFilePageParaServicesResponse
                  .fromBuffer(value));

  AccessSpaceKnowledgeDomainFilePageParaServiceClient(
      $grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$42.SpaceKnowledgeDomainFilePageParaAccessTokenResponse>
      spaceKnowledgeDomainFilePageParaAccessToken(
          $42.SpaceKnowledgeDomainFilePageParaAccessTokenRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$spaceKnowledgeDomainFilePageParaAccessToken, request,
        options: options);
  }

  $grpc.ResponseFuture<
          $42.ValidateSpaceKnowledgeDomainFilePageParaServicesResponse>
      validateSpaceKnowledgeDomainFilePageParaServices(
          $42.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails request,
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
            $42.SpaceKnowledgeDomainFilePageParaAccessTokenRequest,
            $42.SpaceKnowledgeDomainFilePageParaAccessTokenResponse>(
        'SpaceKnowledgeDomainFilePageParaAccessToken',
        spaceKnowledgeDomainFilePageParaAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $42.SpaceKnowledgeDomainFilePageParaAccessTokenRequest.fromBuffer(
                value),
        ($42.SpaceKnowledgeDomainFilePageParaAccessTokenResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $42.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails,
            $42.ValidateSpaceKnowledgeDomainFilePageParaServicesResponse>(
        'ValidateSpaceKnowledgeDomainFilePageParaServices',
        validateSpaceKnowledgeDomainFilePageParaServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $42.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails
                .fromBuffer(value),
        ($42.ValidateSpaceKnowledgeDomainFilePageParaServicesResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$42.SpaceKnowledgeDomainFilePageParaAccessTokenResponse>
      spaceKnowledgeDomainFilePageParaAccessToken_Pre(
          $grpc.ServiceCall call,
          $async.Future<$42.SpaceKnowledgeDomainFilePageParaAccessTokenRequest>
              request) async {
    return spaceKnowledgeDomainFilePageParaAccessToken(call, await request);
  }

  $async.Future<$42.ValidateSpaceKnowledgeDomainFilePageParaServicesResponse>
      validateSpaceKnowledgeDomainFilePageParaServices_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $42.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails>
              request) async {
    return validateSpaceKnowledgeDomainFilePageParaServices(
        call, await request);
  }

  $async.Future<$42.SpaceKnowledgeDomainFilePageParaAccessTokenResponse>
      spaceKnowledgeDomainFilePageParaAccessToken($grpc.ServiceCall call,
          $42.SpaceKnowledgeDomainFilePageParaAccessTokenRequest request);
  $async.Future<$42.ValidateSpaceKnowledgeDomainFilePageParaServicesResponse>
      validateSpaceKnowledgeDomainFilePageParaServices(
          $grpc.ServiceCall call,
          $42.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails
              request);
}
