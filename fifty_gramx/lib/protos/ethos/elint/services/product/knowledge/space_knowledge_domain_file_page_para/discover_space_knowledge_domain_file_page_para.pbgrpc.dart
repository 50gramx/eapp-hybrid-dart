///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page_para/discover_space_knowledge_domain_file_page_para.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../space_knowledge_domain/access_space_knowledge_domain.pb.dart' as $27;
import 'discover_space_knowledge_domain_file_page_para.pb.dart' as $43;
export 'discover_space_knowledge_domain_file_page_para.pb.dart';

class DiscoverSpaceKnowledgeDomainFilePageParaServiceClient
    extends $grpc.Client {
  static final _$getAllParaIds = $grpc.ClientMethod<
          $27.SpaceKnowledgeDomainServicesAccessAuthDetails, $43.ListOfParaIds>(
      '/elint.services.product.knowledge.page.para.DiscoverSpaceKnowledgeDomainFilePageParaService/GetAllParaIds',
      ($27.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $43.ListOfParaIds.fromBuffer(value));
  static final _$getParaTextById = $grpc.ClientMethod<$43.GetParaTextByIdReq,
          $43.GetParaTextByIdRes>(
      '/elint.services.product.knowledge.page.para.DiscoverSpaceKnowledgeDomainFilePageParaService/GetParaTextById',
      ($43.GetParaTextByIdReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $43.GetParaTextByIdRes.fromBuffer(value));
  static final _$getParaById = $grpc.ClientMethod<$43.GetParaByIdRequest,
          $43.GetParaByIdResponse>(
      '/elint.services.product.knowledge.page.para.DiscoverSpaceKnowledgeDomainFilePageParaService/GetParaById',
      ($43.GetParaByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $43.GetParaByIdResponse.fromBuffer(value));
  static final _$getParaImageById = $grpc.ClientMethod<
          $43.GetParaImageByIdRequest, $43.GetParaImageByIdResponse>(
      '/elint.services.product.knowledge.page.para.DiscoverSpaceKnowledgeDomainFilePageParaService/GetParaImageById',
      ($43.GetParaImageByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $43.GetParaImageByIdResponse.fromBuffer(value));

  DiscoverSpaceKnowledgeDomainFilePageParaServiceClient(
      $grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$43.ListOfParaIds> getAllParaIds(
      $27.SpaceKnowledgeDomainServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllParaIds, request, options: options);
  }

  $grpc.ResponseFuture<$43.GetParaTextByIdRes> getParaTextById(
      $43.GetParaTextByIdReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getParaTextById, request, options: options);
  }

  $grpc.ResponseFuture<$43.GetParaByIdResponse> getParaById(
      $43.GetParaByIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getParaById, request, options: options);
  }

  $grpc.ResponseStream<$43.GetParaImageByIdResponse> getParaImageById(
      $43.GetParaImageByIdRequest request,
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
            $27.SpaceKnowledgeDomainServicesAccessAuthDetails,
            $43.ListOfParaIds>(
        'GetAllParaIds',
        getAllParaIds_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $27.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($43.ListOfParaIds value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$43.GetParaTextByIdReq, $43.GetParaTextByIdRes>(
            'GetParaTextById',
            getParaTextById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $43.GetParaTextByIdReq.fromBuffer(value),
            ($43.GetParaTextByIdRes value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$43.GetParaByIdRequest, $43.GetParaByIdResponse>(
            'GetParaById',
            getParaById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $43.GetParaByIdRequest.fromBuffer(value),
            ($43.GetParaByIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$43.GetParaImageByIdRequest,
            $43.GetParaImageByIdResponse>(
        'GetParaImageById',
        getParaImageById_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $43.GetParaImageByIdRequest.fromBuffer(value),
        ($43.GetParaImageByIdResponse value) => value.writeToBuffer()));
  }

  $async.Future<$43.ListOfParaIds> getAllParaIds_Pre(
      $grpc.ServiceCall call,
      $async.Future<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>
          request) async {
    return getAllParaIds(call, await request);
  }

  $async.Future<$43.GetParaTextByIdRes> getParaTextById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$43.GetParaTextByIdReq> request) async {
    return getParaTextById(call, await request);
  }

  $async.Future<$43.GetParaByIdResponse> getParaById_Pre($grpc.ServiceCall call,
      $async.Future<$43.GetParaByIdRequest> request) async {
    return getParaById(call, await request);
  }

  $async.Stream<$43.GetParaImageByIdResponse> getParaImageById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$43.GetParaImageByIdRequest> request) async* {
    yield* getParaImageById(call, await request);
  }

  $async.Future<$43.ListOfParaIds> getAllParaIds($grpc.ServiceCall call,
      $27.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$43.GetParaTextByIdRes> getParaTextById(
      $grpc.ServiceCall call, $43.GetParaTextByIdReq request);
  $async.Future<$43.GetParaByIdResponse> getParaById(
      $grpc.ServiceCall call, $43.GetParaByIdRequest request);
  $async.Stream<$43.GetParaImageByIdResponse> getParaImageById(
      $grpc.ServiceCall call, $43.GetParaImageByIdRequest request);
}
