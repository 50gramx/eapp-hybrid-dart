///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain/discover_space_knowledge_domain.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_space_knowledge_domain.pb.dart' as $27;
import 'discover_space_knowledge_domain.pb.dart' as $30;
import '../../../../entities/space_knowledge_domain.pb.dart' as $31;
export 'discover_space_knowledge_domain.pb.dart';

class DiscoverSpaceKnowledgeDomainServiceClient extends $grpc.Client {
  static final _$getAllDomainFiles = $grpc.ClientMethod<
          $27.SpaceKnowledgeDomainServicesAccessAuthDetails,
          $30.GetAllDomainFilesResponse>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/GetAllDomainFiles',
      ($27.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $30.GetAllDomainFilesResponse.fromBuffer(value));
  static final _$getUpdatedDomain = $grpc.ClientMethod<
          $27.SpaceKnowledgeDomainServicesAccessAuthDetails,
          $31.SpaceKnowledgeDomain>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/GetUpdatedDomain',
      ($27.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $31.SpaceKnowledgeDomain.fromBuffer(value));
  static final _$getBestAnswers = $grpc.ClientMethod<$30.GetBestAnswersRequest,
          $30.GetBestAnswersResponse>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/GetBestAnswers',
      ($30.GetBestAnswersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $30.GetBestAnswersResponse.fromBuffer(value));
  static final _$retrieveMessageContextPages = $grpc.ClientMethod<
          $30.RetrieveMessageContextPagesRequest,
          $30.RetrieveMessageContextPagesResponse>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/RetrieveMessageContextPages',
      ($30.RetrieveMessageContextPagesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $30.RetrieveMessageContextPagesResponse.fromBuffer(value));
  static final _$retrieveMessageContextParas = $grpc.ClientMethod<
          $30.RetrieveMessageContextPagesRequest,
          $30.RetrieveMessageContextPagesResponse>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/RetrieveMessageContextParas',
      ($30.RetrieveMessageContextPagesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $30.RetrieveMessageContextPagesResponse.fromBuffer(value));
  static final _$isMessageContextInDomain = $grpc.ClientMethod<
          $30.IsMessageContextInDomainRequest,
          $30.IsMessageContextInDomainResponse>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/IsMessageContextInDomain',
      ($30.IsMessageContextInDomainRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $30.IsMessageContextInDomainResponse.fromBuffer(value));

  DiscoverSpaceKnowledgeDomainServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$30.GetAllDomainFilesResponse> getAllDomainFiles(
      $27.SpaceKnowledgeDomainServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllDomainFiles, request, options: options);
  }

  $grpc.ResponseFuture<$31.SpaceKnowledgeDomain> getUpdatedDomain(
      $27.SpaceKnowledgeDomainServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUpdatedDomain, request, options: options);
  }

  $grpc.ResponseFuture<$30.GetBestAnswersResponse> getBestAnswers(
      $30.GetBestAnswersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBestAnswers, request, options: options);
  }

  $grpc.ResponseFuture<$30.RetrieveMessageContextPagesResponse>
      retrieveMessageContextPages(
          $30.RetrieveMessageContextPagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieveMessageContextPages, request,
        options: options);
  }

  $grpc.ResponseFuture<$30.RetrieveMessageContextPagesResponse>
      retrieveMessageContextParas(
          $30.RetrieveMessageContextPagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieveMessageContextParas, request,
        options: options);
  }

  $grpc.ResponseFuture<$30.IsMessageContextInDomainResponse>
      isMessageContextInDomain($30.IsMessageContextInDomainRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isMessageContextInDomain, request,
        options: options);
  }
}

abstract class DiscoverSpaceKnowledgeDomainServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService';

  DiscoverSpaceKnowledgeDomainServiceBase() {
    $addMethod($grpc.ServiceMethod<
            $27.SpaceKnowledgeDomainServicesAccessAuthDetails,
            $30.GetAllDomainFilesResponse>(
        'GetAllDomainFiles',
        getAllDomainFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $27.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($30.GetAllDomainFilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $27.SpaceKnowledgeDomainServicesAccessAuthDetails,
            $31.SpaceKnowledgeDomain>(
        'GetUpdatedDomain',
        getUpdatedDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $27.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($31.SpaceKnowledgeDomain value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$30.GetBestAnswersRequest,
            $30.GetBestAnswersResponse>(
        'GetBestAnswers',
        getBestAnswers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $30.GetBestAnswersRequest.fromBuffer(value),
        ($30.GetBestAnswersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$30.RetrieveMessageContextPagesRequest,
            $30.RetrieveMessageContextPagesResponse>(
        'RetrieveMessageContextPages',
        retrieveMessageContextPages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $30.RetrieveMessageContextPagesRequest.fromBuffer(value),
        ($30.RetrieveMessageContextPagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$30.RetrieveMessageContextPagesRequest,
            $30.RetrieveMessageContextPagesResponse>(
        'RetrieveMessageContextParas',
        retrieveMessageContextParas_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $30.RetrieveMessageContextPagesRequest.fromBuffer(value),
        ($30.RetrieveMessageContextPagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$30.IsMessageContextInDomainRequest,
            $30.IsMessageContextInDomainResponse>(
        'IsMessageContextInDomain',
        isMessageContextInDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $30.IsMessageContextInDomainRequest.fromBuffer(value),
        ($30.IsMessageContextInDomainResponse value) => value.writeToBuffer()));
  }

  $async.Future<$30.GetAllDomainFilesResponse> getAllDomainFiles_Pre(
      $grpc.ServiceCall call,
      $async.Future<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>
          request) async {
    return getAllDomainFiles(call, await request);
  }

  $async.Future<$31.SpaceKnowledgeDomain> getUpdatedDomain_Pre(
      $grpc.ServiceCall call,
      $async.Future<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>
          request) async {
    return getUpdatedDomain(call, await request);
  }

  $async.Future<$30.GetBestAnswersResponse> getBestAnswers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$30.GetBestAnswersRequest> request) async {
    return getBestAnswers(call, await request);
  }

  $async.Future<$30.RetrieveMessageContextPagesResponse>
      retrieveMessageContextPages_Pre($grpc.ServiceCall call,
          $async.Future<$30.RetrieveMessageContextPagesRequest> request) async {
    return retrieveMessageContextPages(call, await request);
  }

  $async.Future<$30.RetrieveMessageContextPagesResponse>
      retrieveMessageContextParas_Pre($grpc.ServiceCall call,
          $async.Future<$30.RetrieveMessageContextPagesRequest> request) async {
    return retrieveMessageContextParas(call, await request);
  }

  $async.Future<$30.IsMessageContextInDomainResponse>
      isMessageContextInDomain_Pre($grpc.ServiceCall call,
          $async.Future<$30.IsMessageContextInDomainRequest> request) async {
    return isMessageContextInDomain(call, await request);
  }

  $async.Future<$30.GetAllDomainFilesResponse> getAllDomainFiles(
      $grpc.ServiceCall call,
      $27.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$31.SpaceKnowledgeDomain> getUpdatedDomain(
      $grpc.ServiceCall call,
      $27.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$30.GetBestAnswersResponse> getBestAnswers(
      $grpc.ServiceCall call, $30.GetBestAnswersRequest request);
  $async.Future<$30.RetrieveMessageContextPagesResponse>
      retrieveMessageContextPages($grpc.ServiceCall call,
          $30.RetrieveMessageContextPagesRequest request);
  $async.Future<$30.RetrieveMessageContextPagesResponse>
      retrieveMessageContextParas($grpc.ServiceCall call,
          $30.RetrieveMessageContextPagesRequest request);
  $async.Future<$30.IsMessageContextInDomainResponse> isMessageContextInDomain(
      $grpc.ServiceCall call, $30.IsMessageContextInDomainRequest request);
}
