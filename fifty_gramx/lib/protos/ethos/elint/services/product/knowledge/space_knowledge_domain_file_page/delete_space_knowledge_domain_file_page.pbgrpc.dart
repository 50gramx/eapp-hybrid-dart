///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page/delete_space_knowledge_domain_file_page.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../space_knowledge_domain_file/access_space_knowledge_domain_file.pb.dart'
    as $33;
import '../../../../entities/generic.pb.dart' as $2;
export 'delete_space_knowledge_domain_file_page.pb.dart';

class DeleteSpaceKnowledgeDomainFilePageServiceClient extends $grpc.Client {
  static final _$deletePagesForFile = $grpc.ClientMethod<
          $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails,
          $2.ResponseMeta>(
      '/elint.services.product.knowledge.page.DeleteSpaceKnowledgeDomainFilePageService/DeletePagesForFile',
      ($33.SpaceKnowledgeDomainFileServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));

  DeleteSpaceKnowledgeDomainFilePageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.ResponseMeta> deletePagesForFile(
      $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deletePagesForFile, request, options: options);
  }
}

abstract class DeleteSpaceKnowledgeDomainFilePageServiceBase
    extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.page.DeleteSpaceKnowledgeDomainFilePageService';

  DeleteSpaceKnowledgeDomainFilePageServiceBase() {
    $addMethod($grpc.ServiceMethod<
            $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails,
            $2.ResponseMeta>(
        'DeletePagesForFile',
        deletePagesForFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails.fromBuffer(
                value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
  }

  $async.Future<$2.ResponseMeta> deletePagesForFile_Pre(
      $grpc.ServiceCall call,
      $async.Future<$33.SpaceKnowledgeDomainFileServicesAccessAuthDetails>
          request) async {
    return deletePagesForFile(call, await request);
  }

  $async.Future<$2.ResponseMeta> deletePagesForFile($grpc.ServiceCall call,
      $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails request);
}
