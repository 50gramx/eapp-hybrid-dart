///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain/discover_space_knowledge_domain.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_space_knowledge_domain.pb.dart' as $24;
import 'discover_space_knowledge_domain.pb.dart' as $27;
import '../../../../entities/space_knowledge_domain.pb.dart' as $28;
import '../../../../entities/generic.pb.dart' as $2;
export 'discover_space_knowledge_domain.pb.dart';

class DiscoverSpaceKnowledgeDomainServiceClient extends $grpc.Client {
  static final _$getAllDomainFiles = $grpc.ClientMethod<
          $24.SpaceKnowledgeDomainServicesAccessAuthDetails,
          $27.GetAllDomainFilesResponse>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/GetAllDomainFiles',
      ($24.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $27.GetAllDomainFilesResponse.fromBuffer(value));
  static final _$getUpdatedDomain = $grpc.ClientMethod<
          $24.SpaceKnowledgeDomainServicesAccessAuthDetails,
          $28.SpaceKnowledgeDomain>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/GetUpdatedDomain',
      ($24.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $28.SpaceKnowledgeDomain.fromBuffer(value));
  static final _$getBestAnswers = $grpc.ClientMethod<$27.GetBestAnswersRequest,
          $27.GetBestAnswersResponse>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/GetBestAnswers',
      ($27.GetBestAnswersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $27.GetBestAnswersResponse.fromBuffer(value));
  static final _$isDomainEmpty = $grpc.ClientMethod<
          $24.SpaceKnowledgeDomainServicesAccessAuthDetails, $2.ResponseMeta>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/IsDomainEmpty',
      ($24.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$retrieveMessageContextPages = $grpc.ClientMethod<
          $27.RetrieveMessageContextPagesRequest,
          $27.RetrieveMessageContextPagesResponse>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/RetrieveMessageContextPages',
      ($27.RetrieveMessageContextPagesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $27.RetrieveMessageContextPagesResponse.fromBuffer(value));
  static final _$retrieveMessageContextParas = $grpc.ClientMethod<
          $27.RetrieveMessageContextPagesRequest,
          $27.RetrieveMessageContextPagesResponse>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/RetrieveMessageContextParas',
      ($27.RetrieveMessageContextPagesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $27.RetrieveMessageContextPagesResponse.fromBuffer(value));
  static final _$isMessageContextInDomain = $grpc.ClientMethod<
          $27.IsMessageContextInDomainRequest,
          $27.IsMessageContextInDomainResponse>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/IsMessageContextInDomain',
      ($27.IsMessageContextInDomainRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $27.IsMessageContextInDomainResponse.fromBuffer(value));
  static final _$getFileCount = $grpc.ClientMethod<
          $24.SpaceKnowledgeDomainServicesAccessAuthDetails,
          $27.FileCountResponse>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/GetFileCount',
      ($24.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $27.FileCountResponse.fromBuffer(value));
  static final _$getPageCount = $grpc.ClientMethod<
          $24.SpaceKnowledgeDomainServicesAccessAuthDetails,
          $27.PageCountResponse>(
      '/elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService/GetPageCount',
      ($24.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $27.PageCountResponse.fromBuffer(value));

  DiscoverSpaceKnowledgeDomainServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$27.GetAllDomainFilesResponse> getAllDomainFiles(
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllDomainFiles, request, options: options);
  }

  $grpc.ResponseFuture<$28.SpaceKnowledgeDomain> getUpdatedDomain(
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUpdatedDomain, request, options: options);
  }

  $grpc.ResponseFuture<$27.GetBestAnswersResponse> getBestAnswers(
      $27.GetBestAnswersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBestAnswers, request, options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> isDomainEmpty(
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isDomainEmpty, request, options: options);
  }

  $grpc.ResponseFuture<$27.RetrieveMessageContextPagesResponse>
      retrieveMessageContextPages(
          $27.RetrieveMessageContextPagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieveMessageContextPages, request,
        options: options);
  }

  $grpc.ResponseFuture<$27.RetrieveMessageContextPagesResponse>
      retrieveMessageContextParas(
          $27.RetrieveMessageContextPagesRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieveMessageContextParas, request,
        options: options);
  }

  $grpc.ResponseFuture<$27.IsMessageContextInDomainResponse>
      isMessageContextInDomain($27.IsMessageContextInDomainRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isMessageContextInDomain, request,
        options: options);
  }

  $grpc.ResponseFuture<$27.FileCountResponse> getFileCount(
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFileCount, request, options: options);
  }

  $grpc.ResponseFuture<$27.PageCountResponse> getPageCount(
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPageCount, request, options: options);
  }
}

abstract class DiscoverSpaceKnowledgeDomainServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.domain.DiscoverSpaceKnowledgeDomainService';

  DiscoverSpaceKnowledgeDomainServiceBase() {
    $addMethod($grpc.ServiceMethod<
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails,
            $27.GetAllDomainFilesResponse>(
        'GetAllDomainFiles',
        getAllDomainFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($27.GetAllDomainFilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails,
            $28.SpaceKnowledgeDomain>(
        'GetUpdatedDomain',
        getUpdatedDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($28.SpaceKnowledgeDomain value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$27.GetBestAnswersRequest,
            $27.GetBestAnswersResponse>(
        'GetBestAnswers',
        getBestAnswers_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $27.GetBestAnswersRequest.fromBuffer(value),
        ($27.GetBestAnswersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails, $2.ResponseMeta>(
        'IsDomainEmpty',
        isDomainEmpty_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$27.RetrieveMessageContextPagesRequest,
            $27.RetrieveMessageContextPagesResponse>(
        'RetrieveMessageContextPages',
        retrieveMessageContextPages_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $27.RetrieveMessageContextPagesRequest.fromBuffer(value),
        ($27.RetrieveMessageContextPagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$27.RetrieveMessageContextPagesRequest,
            $27.RetrieveMessageContextPagesResponse>(
        'RetrieveMessageContextParas',
        retrieveMessageContextParas_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $27.RetrieveMessageContextPagesRequest.fromBuffer(value),
        ($27.RetrieveMessageContextPagesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$27.IsMessageContextInDomainRequest,
            $27.IsMessageContextInDomainResponse>(
        'IsMessageContextInDomain',
        isMessageContextInDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $27.IsMessageContextInDomainRequest.fromBuffer(value),
        ($27.IsMessageContextInDomainResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails,
            $27.FileCountResponse>(
        'GetFileCount',
        getFileCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($27.FileCountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails,
            $27.PageCountResponse>(
        'GetPageCount',
        getPageCount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($27.PageCountResponse value) => value.writeToBuffer()));
  }

  $async.Future<$27.GetAllDomainFilesResponse> getAllDomainFiles_Pre(
      $grpc.ServiceCall call,
      $async.Future<$24.SpaceKnowledgeDomainServicesAccessAuthDetails>
          request) async {
    return getAllDomainFiles(call, await request);
  }

  $async.Future<$28.SpaceKnowledgeDomain> getUpdatedDomain_Pre(
      $grpc.ServiceCall call,
      $async.Future<$24.SpaceKnowledgeDomainServicesAccessAuthDetails>
          request) async {
    return getUpdatedDomain(call, await request);
  }

  $async.Future<$27.GetBestAnswersResponse> getBestAnswers_Pre(
      $grpc.ServiceCall call,
      $async.Future<$27.GetBestAnswersRequest> request) async {
    return getBestAnswers(call, await request);
  }

  $async.Future<$2.ResponseMeta> isDomainEmpty_Pre(
      $grpc.ServiceCall call,
      $async.Future<$24.SpaceKnowledgeDomainServicesAccessAuthDetails>
          request) async {
    return isDomainEmpty(call, await request);
  }

  $async.Future<$27.RetrieveMessageContextPagesResponse>
      retrieveMessageContextPages_Pre($grpc.ServiceCall call,
          $async.Future<$27.RetrieveMessageContextPagesRequest> request) async {
    return retrieveMessageContextPages(call, await request);
  }

  $async.Future<$27.RetrieveMessageContextPagesResponse>
      retrieveMessageContextParas_Pre($grpc.ServiceCall call,
          $async.Future<$27.RetrieveMessageContextPagesRequest> request) async {
    return retrieveMessageContextParas(call, await request);
  }

  $async.Future<$27.IsMessageContextInDomainResponse>
      isMessageContextInDomain_Pre($grpc.ServiceCall call,
          $async.Future<$27.IsMessageContextInDomainRequest> request) async {
    return isMessageContextInDomain(call, await request);
  }

  $async.Future<$27.FileCountResponse> getFileCount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$24.SpaceKnowledgeDomainServicesAccessAuthDetails>
          request) async {
    return getFileCount(call, await request);
  }

  $async.Future<$27.PageCountResponse> getPageCount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$24.SpaceKnowledgeDomainServicesAccessAuthDetails>
          request) async {
    return getPageCount(call, await request);
  }

  $async.Future<$27.GetAllDomainFilesResponse> getAllDomainFiles(
      $grpc.ServiceCall call,
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$28.SpaceKnowledgeDomain> getUpdatedDomain(
      $grpc.ServiceCall call,
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$27.GetBestAnswersResponse> getBestAnswers(
      $grpc.ServiceCall call, $27.GetBestAnswersRequest request);
  $async.Future<$2.ResponseMeta> isDomainEmpty($grpc.ServiceCall call,
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$27.RetrieveMessageContextPagesResponse>
      retrieveMessageContextPages($grpc.ServiceCall call,
          $27.RetrieveMessageContextPagesRequest request);
  $async.Future<$27.RetrieveMessageContextPagesResponse>
      retrieveMessageContextParas($grpc.ServiceCall call,
          $27.RetrieveMessageContextPagesRequest request);
  $async.Future<$27.IsMessageContextInDomainResponse> isMessageContextInDomain(
      $grpc.ServiceCall call, $27.IsMessageContextInDomainRequest request);
  $async.Future<$27.FileCountResponse> getFileCount($grpc.ServiceCall call,
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$27.PageCountResponse> getPageCount($grpc.ServiceCall call,
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request);
}
