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
//  source: ethos/elint/services/product/knowledge/space_knowledge/access_space_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../identity/space/access_space.pb.dart' as $9;
import 'access_space_knowledge.pb.dart' as $10;
export 'access_space_knowledge.pb.dart';

class AccessSpaceKnowledgeServiceClient extends $grpc.Client {
  static final _$spaceKnowledgeAccessToken = $grpc.ClientMethod<
          $9.SpaceServicesAccessAuthDetails,
          $10.SpaceKnowledgeAccessTokenResponse>(
      '/elint.services.product.knowledge.space.AccessSpaceKnowledgeService/SpaceKnowledgeAccessToken',
      ($9.SpaceServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $10.SpaceKnowledgeAccessTokenResponse.fromBuffer(value));
  static final _$validateSpaceKnowledgeServices = $grpc.ClientMethod<
          $10.SpaceKnowledgeServicesAccessAuthDetails,
          $10.ValidateSpaceKnowledgeServicesResponse>(
      '/elint.services.product.knowledge.space.AccessSpaceKnowledgeService/ValidateSpaceKnowledgeServices',
      ($10.SpaceKnowledgeServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $10.ValidateSpaceKnowledgeServicesResponse.fromBuffer(value));

  AccessSpaceKnowledgeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$10.SpaceKnowledgeAccessTokenResponse>
      spaceKnowledgeAccessToken($9.SpaceServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$spaceKnowledgeAccessToken, request,
        options: options);
  }

  $grpc.ResponseFuture<$10.ValidateSpaceKnowledgeServicesResponse>
      validateSpaceKnowledgeServices(
          $10.SpaceKnowledgeServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateSpaceKnowledgeServices, request,
        options: options);
  }
}

abstract class AccessSpaceKnowledgeServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.space.AccessSpaceKnowledgeService';

  AccessSpaceKnowledgeServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.SpaceServicesAccessAuthDetails,
            $10.SpaceKnowledgeAccessTokenResponse>(
        'SpaceKnowledgeAccessToken',
        spaceKnowledgeAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.SpaceServicesAccessAuthDetails.fromBuffer(value),
        ($10.SpaceKnowledgeAccessTokenResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.SpaceKnowledgeServicesAccessAuthDetails,
            $10.ValidateSpaceKnowledgeServicesResponse>(
        'ValidateSpaceKnowledgeServices',
        validateSpaceKnowledgeServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $10.SpaceKnowledgeServicesAccessAuthDetails.fromBuffer(value),
        ($10.ValidateSpaceKnowledgeServicesResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$10.SpaceKnowledgeAccessTokenResponse>
      spaceKnowledgeAccessToken_Pre($grpc.ServiceCall call,
          $async.Future<$9.SpaceServicesAccessAuthDetails> request) async {
    return spaceKnowledgeAccessToken(call, await request);
  }

  $async.Future<$10.ValidateSpaceKnowledgeServicesResponse>
      validateSpaceKnowledgeServices_Pre(
          $grpc.ServiceCall call,
          $async.Future<$10.SpaceKnowledgeServicesAccessAuthDetails>
              request) async {
    return validateSpaceKnowledgeServices(call, await request);
  }

  $async.Future<$10.SpaceKnowledgeAccessTokenResponse>
      spaceKnowledgeAccessToken(
          $grpc.ServiceCall call, $9.SpaceServicesAccessAuthDetails request);
  $async.Future<$10.ValidateSpaceKnowledgeServicesResponse>
      validateSpaceKnowledgeServices($grpc.ServiceCall call,
          $10.SpaceKnowledgeServicesAccessAuthDetails request);
}
