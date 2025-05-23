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
//  source: ethos/elint/services/product/knowledge/space_knowledge/discover_space_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_space_knowledge.pb.dart' as $10;
import 'discover_space_knowledge.pb.dart' as $23;
export 'discover_space_knowledge.pb.dart';

class DiscoverSpaceKnowledgeServiceClient extends $grpc.Client {
  static final _$getInferredSpaceKnowledgeDomains = $grpc.ClientMethod<
          $10.SpaceKnowledgeServicesAccessAuthDetails,
          $23.GetInferredSpaceKnowledgeDomainsResponse>(
      '/elint.services.product.knowledge.space.DiscoverSpaceKnowledgeService/GetInferredSpaceKnowledgeDomains',
      ($10.SpaceKnowledgeServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $23.GetInferredSpaceKnowledgeDomainsResponse.fromBuffer(value));
  static final _$getSpaceKnowledgeDomains = $grpc.ClientMethod<
          $10.SpaceKnowledgeServicesAccessAuthDetails,
          $23.GetSpaceKnowledgeDomainsResponse>(
      '/elint.services.product.knowledge.space.DiscoverSpaceKnowledgeService/GetSpaceKnowledgeDomains',
      ($10.SpaceKnowledgeServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $23.GetSpaceKnowledgeDomainsResponse.fromBuffer(value));
  static final _$getSpaceKnowledgeDomainById = $grpc.ClientMethod<
          $23.GetSpaceKnowledgeDomainByIdRequest,
          $23.GetSpaceKnowledgeDomainByIdResponse>(
      '/elint.services.product.knowledge.space.DiscoverSpaceKnowledgeService/GetSpaceKnowledgeDomainById',
      ($23.GetSpaceKnowledgeDomainByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $23.GetSpaceKnowledgeDomainByIdResponse.fromBuffer(value));

  DiscoverSpaceKnowledgeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$23.GetInferredSpaceKnowledgeDomainsResponse>
      getInferredSpaceKnowledgeDomains(
          $10.SpaceKnowledgeServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInferredSpaceKnowledgeDomains, request,
        options: options);
  }

  $grpc.ResponseFuture<$23.GetSpaceKnowledgeDomainsResponse>
      getSpaceKnowledgeDomains(
          $10.SpaceKnowledgeServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSpaceKnowledgeDomains, request,
        options: options);
  }

  $grpc.ResponseFuture<$23.GetSpaceKnowledgeDomainByIdResponse>
      getSpaceKnowledgeDomainById(
          $23.GetSpaceKnowledgeDomainByIdRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSpaceKnowledgeDomainById, request,
        options: options);
  }
}

abstract class DiscoverSpaceKnowledgeServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.space.DiscoverSpaceKnowledgeService';

  DiscoverSpaceKnowledgeServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.SpaceKnowledgeServicesAccessAuthDetails,
            $23.GetInferredSpaceKnowledgeDomainsResponse>(
        'GetInferredSpaceKnowledgeDomains',
        getInferredSpaceKnowledgeDomains_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $10.SpaceKnowledgeServicesAccessAuthDetails.fromBuffer(value),
        ($23.GetInferredSpaceKnowledgeDomainsResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.SpaceKnowledgeServicesAccessAuthDetails,
            $23.GetSpaceKnowledgeDomainsResponse>(
        'GetSpaceKnowledgeDomains',
        getSpaceKnowledgeDomains_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $10.SpaceKnowledgeServicesAccessAuthDetails.fromBuffer(value),
        ($23.GetSpaceKnowledgeDomainsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.GetSpaceKnowledgeDomainByIdRequest,
            $23.GetSpaceKnowledgeDomainByIdResponse>(
        'GetSpaceKnowledgeDomainById',
        getSpaceKnowledgeDomainById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $23.GetSpaceKnowledgeDomainByIdRequest.fromBuffer(value),
        ($23.GetSpaceKnowledgeDomainByIdResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$23.GetInferredSpaceKnowledgeDomainsResponse>
      getInferredSpaceKnowledgeDomains_Pre(
          $grpc.ServiceCall call,
          $async.Future<$10.SpaceKnowledgeServicesAccessAuthDetails>
              request) async {
    return getInferredSpaceKnowledgeDomains(call, await request);
  }

  $async.Future<$23.GetSpaceKnowledgeDomainsResponse>
      getSpaceKnowledgeDomains_Pre(
          $grpc.ServiceCall call,
          $async.Future<$10.SpaceKnowledgeServicesAccessAuthDetails>
              request) async {
    return getSpaceKnowledgeDomains(call, await request);
  }

  $async.Future<$23.GetSpaceKnowledgeDomainByIdResponse>
      getSpaceKnowledgeDomainById_Pre($grpc.ServiceCall call,
          $async.Future<$23.GetSpaceKnowledgeDomainByIdRequest> request) async {
    return getSpaceKnowledgeDomainById(call, await request);
  }

  $async.Future<$23.GetInferredSpaceKnowledgeDomainsResponse>
      getInferredSpaceKnowledgeDomains($grpc.ServiceCall call,
          $10.SpaceKnowledgeServicesAccessAuthDetails request);
  $async.Future<$23.GetSpaceKnowledgeDomainsResponse> getSpaceKnowledgeDomains(
      $grpc.ServiceCall call,
      $10.SpaceKnowledgeServicesAccessAuthDetails request);
  $async.Future<$23.GetSpaceKnowledgeDomainByIdResponse>
      getSpaceKnowledgeDomainById($grpc.ServiceCall call,
          $23.GetSpaceKnowledgeDomainByIdRequest request);
}
