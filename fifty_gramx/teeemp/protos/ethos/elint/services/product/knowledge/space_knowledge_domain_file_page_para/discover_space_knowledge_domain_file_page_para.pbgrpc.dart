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
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page_para/discover_space_knowledge_domain_file_page_para.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../space_knowledge_domain/access_space_knowledge_domain.pb.dart' as $24;
import 'discover_space_knowledge_domain_file_page_para.pb.dart' as $40;
export 'discover_space_knowledge_domain_file_page_para.pb.dart';

class DiscoverSpaceKnowledgeDomainFilePageParaServiceClient
    extends $grpc.Client {
  static final _$getAllParaIds = $grpc.ClientMethod<
          $24.SpaceKnowledgeDomainServicesAccessAuthDetails, $40.ListOfParaIds>(
      '/elint.services.product.knowledge.page.para.DiscoverSpaceKnowledgeDomainFilePageParaService/GetAllParaIds',
      ($24.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $40.ListOfParaIds.fromBuffer(value));
  static final _$getParaTextById = $grpc.ClientMethod<$40.GetParaTextByIdReq,
          $40.GetParaTextByIdRes>(
      '/elint.services.product.knowledge.page.para.DiscoverSpaceKnowledgeDomainFilePageParaService/GetParaTextById',
      ($40.GetParaTextByIdReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $40.GetParaTextByIdRes.fromBuffer(value));
  static final _$getParaById = $grpc.ClientMethod<$40.GetParaByIdRequest,
          $40.GetParaByIdResponse>(
      '/elint.services.product.knowledge.page.para.DiscoverSpaceKnowledgeDomainFilePageParaService/GetParaById',
      ($40.GetParaByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $40.GetParaByIdResponse.fromBuffer(value));
  static final _$getParaImageById = $grpc.ClientMethod<
          $40.GetParaImageByIdRequest, $40.GetParaImageByIdResponse>(
      '/elint.services.product.knowledge.page.para.DiscoverSpaceKnowledgeDomainFilePageParaService/GetParaImageById',
      ($40.GetParaImageByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $40.GetParaImageByIdResponse.fromBuffer(value));

  DiscoverSpaceKnowledgeDomainFilePageParaServiceClient(
      $grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$40.ListOfParaIds> getAllParaIds(
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllParaIds, request, options: options);
  }

  $grpc.ResponseFuture<$40.GetParaTextByIdRes> getParaTextById(
      $40.GetParaTextByIdReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getParaTextById, request, options: options);
  }

  $grpc.ResponseFuture<$40.GetParaByIdResponse> getParaById(
      $40.GetParaByIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getParaById, request, options: options);
  }

  $grpc.ResponseStream<$40.GetParaImageByIdResponse> getParaImageById(
      $40.GetParaImageByIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getParaImageById, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class DiscoverSpaceKnowledgeDomainFilePageParaServiceBase
    extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.page.para.DiscoverSpaceKnowledgeDomainFilePageParaService';

  DiscoverSpaceKnowledgeDomainFilePageParaServiceBase() {
    $addMethod($grpc.ServiceMethod<
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails,
            $40.ListOfParaIds>(
        'GetAllParaIds',
        getAllParaIds_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($40.ListOfParaIds value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$40.GetParaTextByIdReq, $40.GetParaTextByIdRes>(
            'GetParaTextById',
            getParaTextById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $40.GetParaTextByIdReq.fromBuffer(value),
            ($40.GetParaTextByIdRes value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$40.GetParaByIdRequest, $40.GetParaByIdResponse>(
            'GetParaById',
            getParaById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $40.GetParaByIdRequest.fromBuffer(value),
            ($40.GetParaByIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$40.GetParaImageByIdRequest,
            $40.GetParaImageByIdResponse>(
        'GetParaImageById',
        getParaImageById_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $40.GetParaImageByIdRequest.fromBuffer(value),
        ($40.GetParaImageByIdResponse value) => value.writeToBuffer()));
  }

  $async.Future<$40.ListOfParaIds> getAllParaIds_Pre(
      $grpc.ServiceCall call,
      $async.Future<$24.SpaceKnowledgeDomainServicesAccessAuthDetails>
          request) async {
    return getAllParaIds(call, await request);
  }

  $async.Future<$40.GetParaTextByIdRes> getParaTextById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$40.GetParaTextByIdReq> request) async {
    return getParaTextById(call, await request);
  }

  $async.Future<$40.GetParaByIdResponse> getParaById_Pre($grpc.ServiceCall call,
      $async.Future<$40.GetParaByIdRequest> request) async {
    return getParaById(call, await request);
  }

  $async.Stream<$40.GetParaImageByIdResponse> getParaImageById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$40.GetParaImageByIdRequest> request) async* {
    yield* getParaImageById(call, await request);
  }

  $async.Future<$40.ListOfParaIds> getAllParaIds($grpc.ServiceCall call,
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$40.GetParaTextByIdRes> getParaTextById(
      $grpc.ServiceCall call, $40.GetParaTextByIdReq request);
  $async.Future<$40.GetParaByIdResponse> getParaById(
      $grpc.ServiceCall call, $40.GetParaByIdRequest request);
  $async.Stream<$40.GetParaImageByIdResponse> getParaImageById(
      $grpc.ServiceCall call, $40.GetParaImageByIdRequest request);
}
