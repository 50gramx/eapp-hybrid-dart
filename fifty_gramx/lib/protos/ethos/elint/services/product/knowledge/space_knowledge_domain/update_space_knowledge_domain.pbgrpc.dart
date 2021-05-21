///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain/update_space_knowledge_domain.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'update_space_knowledge_domain.pb.dart' as $32;
export 'update_space_knowledge_domain.pb.dart';

class UpdateSpaceKnowledgeDomainServiceClient extends $grpc.Client {
  static final _$updateSpaceKnowledgeDomainName = $grpc.ClientMethod<
          $32.UpdateSpaceKnowledgeDomainNameRequest,
          $32.UpdateSpaceKnowledgeDomainNameResponse>(
      '/elint.services.product.knowledge.domain.UpdateSpaceKnowledgeDomainService/UpdateSpaceKnowledgeDomainName',
      ($32.UpdateSpaceKnowledgeDomainNameRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $32.UpdateSpaceKnowledgeDomainNameResponse.fromBuffer(value));

  UpdateSpaceKnowledgeDomainServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$32.UpdateSpaceKnowledgeDomainNameResponse>
      updateSpaceKnowledgeDomainName(
          $32.UpdateSpaceKnowledgeDomainNameRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSpaceKnowledgeDomainName, request,
        options: options);
  }
}

abstract class UpdateSpaceKnowledgeDomainServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.domain.UpdateSpaceKnowledgeDomainService';

  UpdateSpaceKnowledgeDomainServiceBase() {
    $addMethod($grpc.ServiceMethod<$32.UpdateSpaceKnowledgeDomainNameRequest,
            $32.UpdateSpaceKnowledgeDomainNameResponse>(
        'UpdateSpaceKnowledgeDomainName',
        updateSpaceKnowledgeDomainName_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $32.UpdateSpaceKnowledgeDomainNameRequest.fromBuffer(value),
        ($32.UpdateSpaceKnowledgeDomainNameResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$32.UpdateSpaceKnowledgeDomainNameResponse>
      updateSpaceKnowledgeDomainName_Pre(
          $grpc.ServiceCall call,
          $async.Future<$32.UpdateSpaceKnowledgeDomainNameRequest>
              request) async {
    return updateSpaceKnowledgeDomainName(call, await request);
  }

  $async.Future<$32.UpdateSpaceKnowledgeDomainNameResponse>
      updateSpaceKnowledgeDomainName($grpc.ServiceCall call,
          $32.UpdateSpaceKnowledgeDomainNameRequest request);
}
