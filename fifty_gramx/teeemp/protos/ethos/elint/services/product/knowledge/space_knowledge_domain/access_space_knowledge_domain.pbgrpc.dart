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
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain/access_space_knowledge_domain.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_space_knowledge_domain.pb.dart' as $24;
export 'access_space_knowledge_domain.pb.dart';

class AccessSpaceKnowledgeDomainServiceClient extends $grpc.Client {
  static final _$spaceKnowledgeDomainAccessToken = $grpc.ClientMethod<
          $24.SpaceKnowledgeDomainAccessTokenRequest,
          $24.SpaceKnowledgeDomainAccessTokenResponse>(
      '/elint.services.product.knowledge.domain.AccessSpaceKnowledgeDomainService/SpaceKnowledgeDomainAccessToken',
      ($24.SpaceKnowledgeDomainAccessTokenRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $24.SpaceKnowledgeDomainAccessTokenResponse.fromBuffer(value));
  static final _$validateSpaceKnowledgeDomainServices = $grpc.ClientMethod<
          $24.SpaceKnowledgeDomainServicesAccessAuthDetails,
          $24.ValidateSpaceKnowledgeDomainServicesResponse>(
      '/elint.services.product.knowledge.domain.AccessSpaceKnowledgeDomainService/ValidateSpaceKnowledgeDomainServices',
      ($24.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $24.ValidateSpaceKnowledgeDomainServicesResponse.fromBuffer(value));

  AccessSpaceKnowledgeDomainServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$24.SpaceKnowledgeDomainAccessTokenResponse>
      spaceKnowledgeDomainAccessToken(
          $24.SpaceKnowledgeDomainAccessTokenRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$spaceKnowledgeDomainAccessToken, request,
        options: options);
  }

  $grpc.ResponseFuture<$24.ValidateSpaceKnowledgeDomainServicesResponse>
      validateSpaceKnowledgeDomainServices(
          $24.SpaceKnowledgeDomainServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateSpaceKnowledgeDomainServices, request,
        options: options);
  }
}

abstract class AccessSpaceKnowledgeDomainServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.domain.AccessSpaceKnowledgeDomainService';

  AccessSpaceKnowledgeDomainServiceBase() {
    $addMethod($grpc.ServiceMethod<$24.SpaceKnowledgeDomainAccessTokenRequest,
            $24.SpaceKnowledgeDomainAccessTokenResponse>(
        'SpaceKnowledgeDomainAccessToken',
        spaceKnowledgeDomainAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $24.SpaceKnowledgeDomainAccessTokenRequest.fromBuffer(value),
        ($24.SpaceKnowledgeDomainAccessTokenResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails,
            $24.ValidateSpaceKnowledgeDomainServicesResponse>(
        'ValidateSpaceKnowledgeDomainServices',
        validateSpaceKnowledgeDomainServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($24.ValidateSpaceKnowledgeDomainServicesResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$24.SpaceKnowledgeDomainAccessTokenResponse>
      spaceKnowledgeDomainAccessToken_Pre(
          $grpc.ServiceCall call,
          $async.Future<$24.SpaceKnowledgeDomainAccessTokenRequest>
              request) async {
    return spaceKnowledgeDomainAccessToken(call, await request);
  }

  $async.Future<$24.ValidateSpaceKnowledgeDomainServicesResponse>
      validateSpaceKnowledgeDomainServices_Pre(
          $grpc.ServiceCall call,
          $async.Future<$24.SpaceKnowledgeDomainServicesAccessAuthDetails>
              request) async {
    return validateSpaceKnowledgeDomainServices(call, await request);
  }

  $async.Future<$24.SpaceKnowledgeDomainAccessTokenResponse>
      spaceKnowledgeDomainAccessToken($grpc.ServiceCall call,
          $24.SpaceKnowledgeDomainAccessTokenRequest request);
  $async.Future<$24.ValidateSpaceKnowledgeDomainServicesResponse>
      validateSpaceKnowledgeDomainServices($grpc.ServiceCall call,
          $24.SpaceKnowledgeDomainServicesAccessAuthDetails request);
}
