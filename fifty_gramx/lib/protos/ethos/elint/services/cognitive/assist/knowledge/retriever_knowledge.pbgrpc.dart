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
import 'retriever_knowledge.pb.dart' as $52;
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
          $52.RetrieveClosestPagesReq, $52.ClosestPages>(
      '/elint.services.cognitive.assist.knowledge.retriever.RetrieverKnowledgeService/RetrieveClosestPages',
      ($52.RetrieveClosestPagesReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $52.ClosestPages.fromBuffer(value));
  static final _$retrieveClosestParas = $grpc.ClientMethod<
          $52.RetrieveClosestParasRequest, $52.ClosestParas>(
      '/elint.services.cognitive.assist.knowledge.retriever.RetrieverKnowledgeService/RetrieveClosestParas',
      ($52.RetrieveClosestParasRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $52.ClosestParas.fromBuffer(value));

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

  $grpc.ResponseFuture<$52.ClosestPages> retrieveClosestPages(
      $52.RetrieveClosestPagesReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$retrieveClosestPages, request, options: options);
  }

  $grpc.ResponseFuture<$52.ClosestParas> retrieveClosestParas(
      $52.RetrieveClosestParasRequest request,
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
        $grpc.ServiceMethod<$52.RetrieveClosestPagesReq, $52.ClosestPages>(
            'RetrieveClosestPages',
            retrieveClosestPages_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $52.RetrieveClosestPagesReq.fromBuffer(value),
            ($52.ClosestPages value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$52.RetrieveClosestParasRequest, $52.ClosestParas>(
            'RetrieveClosestParas',
            retrieveClosestParas_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $52.RetrieveClosestParasRequest.fromBuffer(value),
            ($52.ClosestParas value) => value.writeToBuffer()));
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

  $async.Future<$52.ClosestPages> retrieveClosestPages_Pre(
      $grpc.ServiceCall call,
      $async.Future<$52.RetrieveClosestPagesReq> request) async {
    return retrieveClosestPages(call, await request);
  }

  $async.Future<$52.ClosestParas> retrieveClosestParas_Pre(
      $grpc.ServiceCall call,
      $async.Future<$52.RetrieveClosestParasRequest> request) async {
    return retrieveClosestParas(call, await request);
  }

  $async.Future<$2.ResponseMeta> learnDomainForRetriever($grpc.ServiceCall call,
      $27.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta> learnDomainParaForRetriever(
      $grpc.ServiceCall call,
      $27.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$52.ClosestPages> retrieveClosestPages(
      $grpc.ServiceCall call, $52.RetrieveClosestPagesReq request);
  $async.Future<$52.ClosestParas> retrieveClosestParas(
      $grpc.ServiceCall call, $52.RetrieveClosestParasRequest request);
}
