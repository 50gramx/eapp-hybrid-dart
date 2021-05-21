///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge/discover_space_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_space_knowledge.pb.dart' as $23;
import 'discover_space_knowledge.pb.dart' as $26;
export 'discover_space_knowledge.pb.dart';

class DiscoverSpaceKnowledgeServiceClient extends $grpc.Client {
  static final _$getInferredSpaceKnowledgeDomains = $grpc.ClientMethod<
          $23.SpaceKnowledgeServicesAccessAuthDetails,
          $26.GetInferredSpaceKnowledgeDomainsResponse>(
      '/elint.services.product.knowledge.space.DiscoverSpaceKnowledgeService/GetInferredSpaceKnowledgeDomains',
      ($23.SpaceKnowledgeServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $26.GetInferredSpaceKnowledgeDomainsResponse.fromBuffer(value));
  static final _$getSpaceKnowledgeDomains = $grpc.ClientMethod<
          $23.SpaceKnowledgeServicesAccessAuthDetails,
          $26.GetSpaceKnowledgeDomainsResponse>(
      '/elint.services.product.knowledge.space.DiscoverSpaceKnowledgeService/GetSpaceKnowledgeDomains',
      ($23.SpaceKnowledgeServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $26.GetSpaceKnowledgeDomainsResponse.fromBuffer(value));
  static final _$getSpaceKnowledgeDomainById = $grpc.ClientMethod<
          $26.GetSpaceKnowledgeDomainByIdRequest,
          $26.GetSpaceKnowledgeDomainByIdResponse>(
      '/elint.services.product.knowledge.space.DiscoverSpaceKnowledgeService/GetSpaceKnowledgeDomainById',
      ($26.GetSpaceKnowledgeDomainByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $26.GetSpaceKnowledgeDomainByIdResponse.fromBuffer(value));

  DiscoverSpaceKnowledgeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$26.GetInferredSpaceKnowledgeDomainsResponse>
      getInferredSpaceKnowledgeDomains(
          $23.SpaceKnowledgeServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInferredSpaceKnowledgeDomains, request,
        options: options);
  }

  $grpc.ResponseFuture<$26.GetSpaceKnowledgeDomainsResponse>
      getSpaceKnowledgeDomains(
          $23.SpaceKnowledgeServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSpaceKnowledgeDomains, request,
        options: options);
  }

  $grpc.ResponseFuture<$26.GetSpaceKnowledgeDomainByIdResponse>
      getSpaceKnowledgeDomainById(
          $26.GetSpaceKnowledgeDomainByIdRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSpaceKnowledgeDomainById, request,
        options: options);
  }
}

abstract class DiscoverSpaceKnowledgeServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.space.DiscoverSpaceKnowledgeService';

  DiscoverSpaceKnowledgeServiceBase() {
    $addMethod($grpc.ServiceMethod<$23.SpaceKnowledgeServicesAccessAuthDetails,
            $26.GetInferredSpaceKnowledgeDomainsResponse>(
        'GetInferredSpaceKnowledgeDomains',
        getInferredSpaceKnowledgeDomains_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $23.SpaceKnowledgeServicesAccessAuthDetails.fromBuffer(value),
        ($26.GetInferredSpaceKnowledgeDomainsResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.SpaceKnowledgeServicesAccessAuthDetails,
            $26.GetSpaceKnowledgeDomainsResponse>(
        'GetSpaceKnowledgeDomains',
        getSpaceKnowledgeDomains_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $23.SpaceKnowledgeServicesAccessAuthDetails.fromBuffer(value),
        ($26.GetSpaceKnowledgeDomainsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$26.GetSpaceKnowledgeDomainByIdRequest,
            $26.GetSpaceKnowledgeDomainByIdResponse>(
        'GetSpaceKnowledgeDomainById',
        getSpaceKnowledgeDomainById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $26.GetSpaceKnowledgeDomainByIdRequest.fromBuffer(value),
        ($26.GetSpaceKnowledgeDomainByIdResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$26.GetInferredSpaceKnowledgeDomainsResponse>
      getInferredSpaceKnowledgeDomains_Pre(
          $grpc.ServiceCall call,
          $async.Future<$23.SpaceKnowledgeServicesAccessAuthDetails>
              request) async {
    return getInferredSpaceKnowledgeDomains(call, await request);
  }

  $async.Future<$26.GetSpaceKnowledgeDomainsResponse>
      getSpaceKnowledgeDomains_Pre(
          $grpc.ServiceCall call,
          $async.Future<$23.SpaceKnowledgeServicesAccessAuthDetails>
              request) async {
    return getSpaceKnowledgeDomains(call, await request);
  }

  $async.Future<$26.GetSpaceKnowledgeDomainByIdResponse>
      getSpaceKnowledgeDomainById_Pre($grpc.ServiceCall call,
          $async.Future<$26.GetSpaceKnowledgeDomainByIdRequest> request) async {
    return getSpaceKnowledgeDomainById(call, await request);
  }

  $async.Future<$26.GetInferredSpaceKnowledgeDomainsResponse>
      getInferredSpaceKnowledgeDomains($grpc.ServiceCall call,
          $23.SpaceKnowledgeServicesAccessAuthDetails request);
  $async.Future<$26.GetSpaceKnowledgeDomainsResponse> getSpaceKnowledgeDomains(
      $grpc.ServiceCall call,
      $23.SpaceKnowledgeServicesAccessAuthDetails request);
  $async.Future<$26.GetSpaceKnowledgeDomainByIdResponse>
      getSpaceKnowledgeDomainById($grpc.ServiceCall call,
          $26.GetSpaceKnowledgeDomainByIdRequest request);
}
