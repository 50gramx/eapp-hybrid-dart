///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page/discover_space_knowledge_domain_file_page.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../space_knowledge_domain/access_space_knowledge_domain.pb.dart' as $24;
import 'discover_space_knowledge_domain_file_page.pb.dart' as $38;
export 'discover_space_knowledge_domain_file_page.pb.dart';

class DiscoverSpaceKnowledgeDomainFilePageServiceClient extends $grpc.Client {
  static final _$getAllPageIds = $grpc.ClientMethod<
          $24.SpaceKnowledgeDomainServicesAccessAuthDetails, $38.ListOfPageIds>(
      '/elint.services.product.knowledge.page.DiscoverSpaceKnowledgeDomainFilePageService/GetAllPageIds',
      ($24.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $38.ListOfPageIds.fromBuffer(value));
  static final _$getPageTextById = $grpc.ClientMethod<$38.GetPageTextByIdReq,
          $38.GetPageTextByIdRes>(
      '/elint.services.product.knowledge.page.DiscoverSpaceKnowledgeDomainFilePageService/GetPageTextById',
      ($38.GetPageTextByIdReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $38.GetPageTextByIdRes.fromBuffer(value));
  static final _$getPageById = $grpc.ClientMethod<$38.GetPageByIdRequest,
          $38.GetPageByIdResponse>(
      '/elint.services.product.knowledge.page.DiscoverSpaceKnowledgeDomainFilePageService/GetPageById',
      ($38.GetPageByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $38.GetPageByIdResponse.fromBuffer(value));

  DiscoverSpaceKnowledgeDomainFilePageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$38.ListOfPageIds> getAllPageIds(
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllPageIds, request, options: options);
  }

  $grpc.ResponseFuture<$38.GetPageTextByIdRes> getPageTextById(
      $38.GetPageTextByIdReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPageTextById, request, options: options);
  }

  $grpc.ResponseFuture<$38.GetPageByIdResponse> getPageById(
      $38.GetPageByIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPageById, request, options: options);
  }
}

abstract class DiscoverSpaceKnowledgeDomainFilePageServiceBase
    extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.page.DiscoverSpaceKnowledgeDomainFilePageService';

  DiscoverSpaceKnowledgeDomainFilePageServiceBase() {
    $addMethod($grpc.ServiceMethod<
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails,
            $38.ListOfPageIds>(
        'GetAllPageIds',
        getAllPageIds_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($38.ListOfPageIds value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$38.GetPageTextByIdReq, $38.GetPageTextByIdRes>(
            'GetPageTextById',
            getPageTextById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $38.GetPageTextByIdReq.fromBuffer(value),
            ($38.GetPageTextByIdRes value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$38.GetPageByIdRequest, $38.GetPageByIdResponse>(
            'GetPageById',
            getPageById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $38.GetPageByIdRequest.fromBuffer(value),
            ($38.GetPageByIdResponse value) => value.writeToBuffer()));
  }

  $async.Future<$38.ListOfPageIds> getAllPageIds_Pre(
      $grpc.ServiceCall call,
      $async.Future<$24.SpaceKnowledgeDomainServicesAccessAuthDetails>
          request) async {
    return getAllPageIds(call, await request);
  }

  $async.Future<$38.GetPageTextByIdRes> getPageTextById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$38.GetPageTextByIdReq> request) async {
    return getPageTextById(call, await request);
  }

  $async.Future<$38.GetPageByIdResponse> getPageById_Pre($grpc.ServiceCall call,
      $async.Future<$38.GetPageByIdRequest> request) async {
    return getPageById(call, await request);
  }

  $async.Future<$38.ListOfPageIds> getAllPageIds($grpc.ServiceCall call,
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$38.GetPageTextByIdRes> getPageTextById(
      $grpc.ServiceCall call, $38.GetPageTextByIdReq request);
  $async.Future<$38.GetPageByIdResponse> getPageById(
      $grpc.ServiceCall call, $38.GetPageByIdRequest request);
}
