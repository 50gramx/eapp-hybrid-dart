///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page/discover_space_knowledge_domain_file_page.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../space_knowledge_domain/access_space_knowledge_domain.pb.dart' as $27;
import 'discover_space_knowledge_domain_file_page.pb.dart' as $41;
export 'discover_space_knowledge_domain_file_page.pb.dart';

class DiscoverSpaceKnowledgeDomainFilePageServiceClient extends $grpc.Client {
  static final _$getAllPageIds = $grpc.ClientMethod<
          $27.SpaceKnowledgeDomainServicesAccessAuthDetails, $41.ListOfPageIds>(
      '/elint.services.product.knowledge.page.DiscoverSpaceKnowledgeDomainFilePageService/GetAllPageIds',
      ($27.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $41.ListOfPageIds.fromBuffer(value));
  static final _$getPageTextById = $grpc.ClientMethod<$41.GetPageTextByIdReq,
          $41.GetPageTextByIdRes>(
      '/elint.services.product.knowledge.page.DiscoverSpaceKnowledgeDomainFilePageService/GetPageTextById',
      ($41.GetPageTextByIdReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.GetPageTextByIdRes.fromBuffer(value));
  static final _$getPageById = $grpc.ClientMethod<$41.GetPageByIdRequest,
          $41.GetPageByIdResponse>(
      '/elint.services.product.knowledge.page.DiscoverSpaceKnowledgeDomainFilePageService/GetPageById',
      ($41.GetPageByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $41.GetPageByIdResponse.fromBuffer(value));

  DiscoverSpaceKnowledgeDomainFilePageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$41.ListOfPageIds> getAllPageIds(
      $27.SpaceKnowledgeDomainServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllPageIds, request, options: options);
  }

  $grpc.ResponseFuture<$41.GetPageTextByIdRes> getPageTextById(
      $41.GetPageTextByIdReq request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPageTextById, request, options: options);
  }

  $grpc.ResponseFuture<$41.GetPageByIdResponse> getPageById(
      $41.GetPageByIdRequest request,
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
            $27.SpaceKnowledgeDomainServicesAccessAuthDetails,
            $41.ListOfPageIds>(
        'GetAllPageIds',
        getAllPageIds_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $27.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($41.ListOfPageIds value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$41.GetPageTextByIdReq, $41.GetPageTextByIdRes>(
            'GetPageTextById',
            getPageTextById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $41.GetPageTextByIdReq.fromBuffer(value),
            ($41.GetPageTextByIdRes value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$41.GetPageByIdRequest, $41.GetPageByIdResponse>(
            'GetPageById',
            getPageById_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $41.GetPageByIdRequest.fromBuffer(value),
            ($41.GetPageByIdResponse value) => value.writeToBuffer()));
  }

  $async.Future<$41.ListOfPageIds> getAllPageIds_Pre(
      $grpc.ServiceCall call,
      $async.Future<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>
          request) async {
    return getAllPageIds(call, await request);
  }

  $async.Future<$41.GetPageTextByIdRes> getPageTextById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$41.GetPageTextByIdReq> request) async {
    return getPageTextById(call, await request);
  }

  $async.Future<$41.GetPageByIdResponse> getPageById_Pre($grpc.ServiceCall call,
      $async.Future<$41.GetPageByIdRequest> request) async {
    return getPageById(call, await request);
  }

  $async.Future<$41.ListOfPageIds> getAllPageIds($grpc.ServiceCall call,
      $27.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$41.GetPageTextByIdRes> getPageTextById(
      $grpc.ServiceCall call, $41.GetPageTextByIdReq request);
  $async.Future<$41.GetPageByIdResponse> getPageById(
      $grpc.ServiceCall call, $41.GetPageByIdRequest request);
}
