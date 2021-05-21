///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain/delete_space_knowledge_domain.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'delete_space_knowledge_domain.pb.dart' as $29;
export 'delete_space_knowledge_domain.pb.dart';

class DeleteSpaceKnowledgeDomainServiceClient extends $grpc.Client {
  static final _$deleteSpaceKnowledgeDomain = $grpc.ClientMethod<
          $29.DeleteSpaceKnowledgeDomainRequest,
          $29.DeleteSpaceKnowledgeDomainResponse>(
      '/elint.services.product.knowledge.domain.DeleteSpaceKnowledgeDomainService/DeleteSpaceKnowledgeDomain',
      ($29.DeleteSpaceKnowledgeDomainRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $29.DeleteSpaceKnowledgeDomainResponse.fromBuffer(value));

  DeleteSpaceKnowledgeDomainServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$29.DeleteSpaceKnowledgeDomainResponse>
      deleteSpaceKnowledgeDomain($29.DeleteSpaceKnowledgeDomainRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSpaceKnowledgeDomain, request,
        options: options);
  }
}

abstract class DeleteSpaceKnowledgeDomainServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.domain.DeleteSpaceKnowledgeDomainService';

  DeleteSpaceKnowledgeDomainServiceBase() {
    $addMethod($grpc.ServiceMethod<$29.DeleteSpaceKnowledgeDomainRequest,
            $29.DeleteSpaceKnowledgeDomainResponse>(
        'DeleteSpaceKnowledgeDomain',
        deleteSpaceKnowledgeDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $29.DeleteSpaceKnowledgeDomainRequest.fromBuffer(value),
        ($29.DeleteSpaceKnowledgeDomainResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$29.DeleteSpaceKnowledgeDomainResponse>
      deleteSpaceKnowledgeDomain_Pre($grpc.ServiceCall call,
          $async.Future<$29.DeleteSpaceKnowledgeDomainRequest> request) async {
    return deleteSpaceKnowledgeDomain(call, await request);
  }

  $async.Future<$29.DeleteSpaceKnowledgeDomainResponse>
      deleteSpaceKnowledgeDomain($grpc.ServiceCall call,
          $29.DeleteSpaceKnowledgeDomainRequest request);
}
