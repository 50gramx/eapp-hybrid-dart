///
//  Generated code. Do not modify.
//  source: ethos/elint/services/cognitive/assist/knowledge/retriever_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../../product/knowledge/space_knowledge_domain/access_space_knowledge_domain.pb.dart'
    as $27;
import '../../../../entities/generic.pb.dart' as $2;
import 'retriever_knowledge.pb.dart' as $51;
export 'retriever_knowledge.pb.dart';

class RetrieverKnowledgeServiceClient extends $grpc.Client {
  static final _$learnDomainForRetriever = $grpc.ClientMethod<
          $27.SpaceKnowledgeDomainServicesAccessAuthDetails, $2.ResponseMeta>(
      '/elint.services.cognitive.assist.knowledge.retriever.RetrieverKnowledgeService/LearnDomainForRetriever',
      ($27.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$learnDomainParaForRetriever = $grpc.ClientMethod<
          $27.SpaceKnowledgeDomainServicesAccessAuthDetails, $2.ResponseMeta>(
      '/elint.services.cognitive.assist.knowledge.retriever.RetrieverKnowledgeService/LearnDomainParaForRetriever',
      ($27.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$retrieveClosestPages = $grpc.ClientMethod<
          $51.RetrieveClosestPagesReq, $51.ClosestPages>(
      '/elint.services.cognitive.assist.knowledge.retriever.RetrieverKnowledgeService/RetrieveClosestPages',
      ($51.RetrieveClosestPagesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $51.ClosestPages.fromBuffer(value));
  static final _$retrieveClosestParas = $grpc.ClientMethod<
          $51.RetrieveClosestParasRequest, $51.ClosestParas>(
      '/elint.services.cognitive.assist.knowledge.retriever.RetrieverKnowledgeService/RetrieveClosestParas',
      ($51.RetrieveClosestParasRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $51.ClosestParas.fromBuffer(value));

  RetrieverKnowledgeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.ResponseMeta> learnDomainForRetriever(
      $27.SpaceKnowledgeDomainServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$learnDomainForRetriever, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> learnDomainParaForRetriever(
      $27.SpaceKnowledgeDomainServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$learnDomainParaForRetriever, request,
        options: options);
  }

  $grpc.ResponseFuture<$51.ClosestPages> retrieveClosestPages(
      $51.RetrieveClosestPagesReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieveClosestPages, request, options: options);
  }

  $grpc.ResponseFuture<$51.ClosestParas> retrieveClosestParas(
      $51.RetrieveClosestParasRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieveClosestParas, request, options: options);
  }
}

abstract class RetrieverKnowledgeServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.cognitive.assist.knowledge.retriever.RetrieverKnowledgeService';

  RetrieverKnowledgeServiceBase() {
    $addMethod($grpc.ServiceMethod<
            $27.SpaceKnowledgeDomainServicesAccessAuthDetails, $2.ResponseMeta>(
        'LearnDomainForRetriever',
        learnDomainForRetriever_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $27.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $27.SpaceKnowledgeDomainServicesAccessAuthDetails, $2.ResponseMeta>(
        'LearnDomainParaForRetriever',
        learnDomainParaForRetriever_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $27.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$51.RetrieveClosestPagesReq, $51.ClosestPages>(
            'RetrieveClosestPages',
            retrieveClosestPages_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $51.RetrieveClosestPagesReq.fromBuffer(value),
            ($51.ClosestPages value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$51.RetrieveClosestParasRequest, $51.ClosestParas>(
            'RetrieveClosestParas',
            retrieveClosestParas_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $51.RetrieveClosestParasRequest.fromBuffer(value),
            ($51.ClosestParas value) => value.writeToBuffer()));
  }

  $async.Future<$2.ResponseMeta> learnDomainForRetriever_Pre(
      $grpc.ServiceCall call,
      $async.Future<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>
          request) async {
    return learnDomainForRetriever(call, await request);
  }

  $async.Future<$2.ResponseMeta> learnDomainParaForRetriever_Pre(
      $grpc.ServiceCall call,
      $async.Future<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>
          request) async {
    return learnDomainParaForRetriever(call, await request);
  }

  $async.Future<$51.ClosestPages> retrieveClosestPages_Pre(
      $grpc.ServiceCall call,
      $async.Future<$51.RetrieveClosestPagesReq> request) async {
    return retrieveClosestPages(call, await request);
  }

  $async.Future<$51.ClosestParas> retrieveClosestParas_Pre(
      $grpc.ServiceCall call,
      $async.Future<$51.RetrieveClosestParasRequest> request) async {
    return retrieveClosestParas(call, await request);
  }

  $async.Future<$2.ResponseMeta> learnDomainForRetriever($grpc.ServiceCall call,
      $27.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta> learnDomainParaForRetriever(
      $grpc.ServiceCall call,
      $27.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$51.ClosestPages> retrieveClosestPages(
      $grpc.ServiceCall call, $51.RetrieveClosestPagesReq request);
  $async.Future<$51.ClosestParas> retrieveClosestParas(
      $grpc.ServiceCall call, $51.RetrieveClosestParasRequest request);
}
