///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page_para/create_space_knowledge_domain_file_page_para.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../space_knowledge_domain_file_page/access_space_knowledge_domain_file_page.pb.dart'
    as $38;
import '../../../../entities/generic.pb.dart' as $2;
export 'create_space_knowledge_domain_file_page_para.pb.dart';

class CreateSpaceKnowledgeDomainFilePageParaServiceClient extends $grpc.Client {
  static final _$extractParasFromPage = $grpc.ClientMethod<
          $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails,
          $2.ResponseMeta>(
      '/elint.services.product.knowledge.para.CreateSpaceKnowledgeDomainFilePageParaService/ExtractParasFromPage',
      ($38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));

  CreateSpaceKnowledgeDomainFilePageParaServiceClient(
      $grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.ResponseMeta> extractParasFromPage(
      $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$extractParasFromPage, request, options: options);
  }
}

abstract class CreateSpaceKnowledgeDomainFilePageParaServiceBase
    extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.para.CreateSpaceKnowledgeDomainFilePageParaService';

  CreateSpaceKnowledgeDomainFilePageParaServiceBase() {
    $addMethod($grpc.ServiceMethod<
            $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails,
            $2.ResponseMeta>(
        'ExtractParasFromPage',
        extractParasFromPage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails
                .fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
  }

  $async.Future<$2.ResponseMeta> extractParasFromPage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails>
          request) async {
    return extractParasFromPage(call, await request);
  }

  $async.Future<$2.ResponseMeta> extractParasFromPage($grpc.ServiceCall call,
      $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails request);
}
