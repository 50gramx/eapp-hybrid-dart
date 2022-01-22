///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge/delete_space_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'delete_space_knowledge.pb.dart' as $22;
export 'delete_space_knowledge.pb.dart';

class DeleteSpaceKnowledgeServiceClient extends $grpc.Client {
  static final _$deleteSpaceKnowledge = $grpc.ClientMethod<
          $22.DeleteSpaceKnowledgeRequest, $22.DeleteSpaceKnowledgeResponse>(
      '/elint.services.product.knowledge.space.DeleteSpaceKnowledgeService/DeleteSpaceKnowledge',
      ($22.DeleteSpaceKnowledgeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $22.DeleteSpaceKnowledgeResponse.fromBuffer(value));

  DeleteSpaceKnowledgeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$22.DeleteSpaceKnowledgeResponse> deleteSpaceKnowledge(
      $22.DeleteSpaceKnowledgeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSpaceKnowledge, request, options: options);
  }
}

abstract class DeleteSpaceKnowledgeServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.space.DeleteSpaceKnowledgeService';

  DeleteSpaceKnowledgeServiceBase() {
    $addMethod($grpc.ServiceMethod<$22.DeleteSpaceKnowledgeRequest,
            $22.DeleteSpaceKnowledgeResponse>(
        'DeleteSpaceKnowledge',
        deleteSpaceKnowledge_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $22.DeleteSpaceKnowledgeRequest.fromBuffer(value),
        ($22.DeleteSpaceKnowledgeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$22.DeleteSpaceKnowledgeResponse> deleteSpaceKnowledge_Pre(
      $grpc.ServiceCall call,
      $async.Future<$22.DeleteSpaceKnowledgeRequest> request) async {
    return deleteSpaceKnowledge(call, await request);
  }

  $async.Future<$22.DeleteSpaceKnowledgeResponse> deleteSpaceKnowledge(
      $grpc.ServiceCall call, $22.DeleteSpaceKnowledgeRequest request);
}
