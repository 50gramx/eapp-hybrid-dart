///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page/access_space_knowledge_domain_file_page.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_space_knowledge_domain_file_page.pb.dart' as $38;
export 'access_space_knowledge_domain_file_page.pb.dart';

class AccessSpaceKnowledgeDomainFilePageServiceClient extends $grpc.Client {
  static final _$spaceKnowledgeDomainFilePageAccessToken = $grpc.ClientMethod<
          $38.SpaceKnowledgeDomainFilePageAccessTokenRequest,
          $38.SpaceKnowledgeDomainFilePageAccessTokenResponse>(
      '/elint.services.product.knowledge.page.AccessSpaceKnowledgeDomainFilePageService/SpaceKnowledgeDomainFilePageAccessToken',
      ($38.SpaceKnowledgeDomainFilePageAccessTokenRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $38.SpaceKnowledgeDomainFilePageAccessTokenResponse.fromBuffer(
              value));
  static final _$validateSpaceKnowledgeDomainFilePageServices = $grpc.ClientMethod<
          $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails,
          $38.ValidateSpaceKnowledgeDomainFilePageServicesResponse>(
      '/elint.services.product.knowledge.page.AccessSpaceKnowledgeDomainFilePageService/ValidateSpaceKnowledgeDomainFilePageServices',
      ($38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $38.ValidateSpaceKnowledgeDomainFilePageServicesResponse.fromBuffer(
              value));

  AccessSpaceKnowledgeDomainFilePageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$38.SpaceKnowledgeDomainFilePageAccessTokenResponse>
      spaceKnowledgeDomainFilePageAccessToken(
          $38.SpaceKnowledgeDomainFilePageAccessTokenRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$spaceKnowledgeDomainFilePageAccessToken, request,
        options: options);
  }

  $grpc.ResponseFuture<$38.ValidateSpaceKnowledgeDomainFilePageServicesResponse>
      validateSpaceKnowledgeDomainFilePageServices(
          $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$validateSpaceKnowledgeDomainFilePageServices, request,
        options: options);
  }
}

abstract class AccessSpaceKnowledgeDomainFilePageServiceBase
    extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.page.AccessSpaceKnowledgeDomainFilePageService';

  AccessSpaceKnowledgeDomainFilePageServiceBase() {
    $addMethod($grpc.ServiceMethod<
            $38.SpaceKnowledgeDomainFilePageAccessTokenRequest,
            $38.SpaceKnowledgeDomainFilePageAccessTokenResponse>(
        'SpaceKnowledgeDomainFilePageAccessToken',
        spaceKnowledgeDomainFilePageAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $38.SpaceKnowledgeDomainFilePageAccessTokenRequest.fromBuffer(
                value),
        ($38.SpaceKnowledgeDomainFilePageAccessTokenResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails,
            $38.ValidateSpaceKnowledgeDomainFilePageServicesResponse>(
        'ValidateSpaceKnowledgeDomainFilePageServices',
        validateSpaceKnowledgeDomainFilePageServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails
                .fromBuffer(value),
        ($38.ValidateSpaceKnowledgeDomainFilePageServicesResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$38.SpaceKnowledgeDomainFilePageAccessTokenResponse>
      spaceKnowledgeDomainFilePageAccessToken_Pre(
          $grpc.ServiceCall call,
          $async.Future<$38.SpaceKnowledgeDomainFilePageAccessTokenRequest>
              request) async {
    return spaceKnowledgeDomainFilePageAccessToken(call, await request);
  }

  $async.Future<$38.ValidateSpaceKnowledgeDomainFilePageServicesResponse>
      validateSpaceKnowledgeDomainFilePageServices_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails>
              request) async {
    return validateSpaceKnowledgeDomainFilePageServices(call, await request);
  }

  $async.Future<$38.SpaceKnowledgeDomainFilePageAccessTokenResponse>
      spaceKnowledgeDomainFilePageAccessToken($grpc.ServiceCall call,
          $38.SpaceKnowledgeDomainFilePageAccessTokenRequest request);
  $async.Future<$38.ValidateSpaceKnowledgeDomainFilePageServicesResponse>
      validateSpaceKnowledgeDomainFilePageServices($grpc.ServiceCall call,
          $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails request);
}
