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
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file/access_space_knowledge_domain_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_space_knowledge_domain_file.pb.dart' as $30;
export 'access_space_knowledge_domain_file.pb.dart';

class AccessSpaceKnowledgeDomainFileServiceClient extends $grpc.Client {
  static final _$spaceKnowledgeDomainFileAccessToken = $grpc.ClientMethod<
          $30.SpaceKnowledgeDomainFileAccessTokenRequest,
          $30.SpaceKnowledgeDomainFileAccessTokenResponse>(
      '/elint.services.product.knowledge.file.AccessSpaceKnowledgeDomainFileService/SpaceKnowledgeDomainFileAccessToken',
      ($30.SpaceKnowledgeDomainFileAccessTokenRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $30.SpaceKnowledgeDomainFileAccessTokenResponse.fromBuffer(value));
  static final _$validateSpaceKnowledgeDomainFileServices = $grpc.ClientMethod<
          $30.SpaceKnowledgeDomainFileServicesAccessAuthDetails,
          $30.ValidateSpaceKnowledgeDomainFileServicesResponse>(
      '/elint.services.product.knowledge.file.AccessSpaceKnowledgeDomainFileService/ValidateSpaceKnowledgeDomainFileServices',
      ($30.SpaceKnowledgeDomainFileServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $30.ValidateSpaceKnowledgeDomainFileServicesResponse.fromBuffer(
              value));

  AccessSpaceKnowledgeDomainFileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$30.SpaceKnowledgeDomainFileAccessTokenResponse>
      spaceKnowledgeDomainFileAccessToken(
          $30.SpaceKnowledgeDomainFileAccessTokenRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$spaceKnowledgeDomainFileAccessToken, request,
        options: options);
  }

  $grpc.ResponseFuture<$30.ValidateSpaceKnowledgeDomainFileServicesResponse>
      validateSpaceKnowledgeDomainFileServices(
          $30.SpaceKnowledgeDomainFileServicesAccessAuthDetails request,
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
            $30.SpaceKnowledgeDomainFileAccessTokenRequest,
            $30.SpaceKnowledgeDomainFileAccessTokenResponse>(
        'SpaceKnowledgeDomainFileAccessToken',
        spaceKnowledgeDomainFileAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $30.SpaceKnowledgeDomainFileAccessTokenRequest.fromBuffer(value),
        ($30.SpaceKnowledgeDomainFileAccessTokenResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $30.SpaceKnowledgeDomainFileServicesAccessAuthDetails,
            $30.ValidateSpaceKnowledgeDomainFileServicesResponse>(
        'ValidateSpaceKnowledgeDomainFileServices',
        validateSpaceKnowledgeDomainFileServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $30.SpaceKnowledgeDomainFileServicesAccessAuthDetails.fromBuffer(
                value),
        ($30.ValidateSpaceKnowledgeDomainFileServicesResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$30.SpaceKnowledgeDomainFileAccessTokenResponse>
      spaceKnowledgeDomainFileAccessToken_Pre(
          $grpc.ServiceCall call,
          $async.Future<$30.SpaceKnowledgeDomainFileAccessTokenRequest>
              request) async {
    return spaceKnowledgeDomainFileAccessToken(call, await request);
  }

  $async.Future<$30.ValidateSpaceKnowledgeDomainFileServicesResponse>
      validateSpaceKnowledgeDomainFileServices_Pre(
          $grpc.ServiceCall call,
          $async.Future<$30.SpaceKnowledgeDomainFileServicesAccessAuthDetails>
              request) async {
    return validateSpaceKnowledgeDomainFileServices(call, await request);
  }

  $async.Future<$30.SpaceKnowledgeDomainFileAccessTokenResponse>
      spaceKnowledgeDomainFileAccessToken($grpc.ServiceCall call,
          $30.SpaceKnowledgeDomainFileAccessTokenRequest request);
  $async.Future<$30.ValidateSpaceKnowledgeDomainFileServicesResponse>
      validateSpaceKnowledgeDomainFileServices($grpc.ServiceCall call,
          $30.SpaceKnowledgeDomainFileServicesAccessAuthDetails request);
}
