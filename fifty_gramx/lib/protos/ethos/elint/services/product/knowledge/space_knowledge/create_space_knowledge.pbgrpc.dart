///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge/create_space_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'create_space_knowledge.pb.dart' as $21;
export 'create_space_knowledge.pb.dart';

class CreateSpaceKnowledgeServiceClient extends $grpc.Client {
  static final _$createAccountSpaceKnowledge = $grpc.ClientMethod<
          $21.CreateAccountSpaceKnowledgeRequest,
          $21.CreateAccountSpaceKnowledgeResponse>(
      '/elint.services.product.knowledge.space.CreateSpaceKnowledgeService/CreateAccountSpaceKnowledge',
      ($21.CreateAccountSpaceKnowledgeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $21.CreateAccountSpaceKnowledgeResponse.fromBuffer(value));

  CreateSpaceKnowledgeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$21.CreateAccountSpaceKnowledgeResponse>
      createAccountSpaceKnowledge(
          $21.CreateAccountSpaceKnowledgeRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAccountSpaceKnowledge, request,
        options: options);
  }
}

abstract class CreateSpaceKnowledgeServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.space.CreateSpaceKnowledgeService';

  CreateSpaceKnowledgeServiceBase() {
    $addMethod($grpc.ServiceMethod<$21.CreateAccountSpaceKnowledgeRequest,
            $21.CreateAccountSpaceKnowledgeResponse>(
        'CreateAccountSpaceKnowledge',
        createAccountSpaceKnowledge_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $21.CreateAccountSpaceKnowledgeRequest.fromBuffer(value),
        ($21.CreateAccountSpaceKnowledgeResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$21.CreateAccountSpaceKnowledgeResponse>
      createAccountSpaceKnowledge_Pre($grpc.ServiceCall call,
          $async.Future<$21.CreateAccountSpaceKnowledgeRequest> request) async {
    return createAccountSpaceKnowledge(call, await request);
  }

  $async.Future<$21.CreateAccountSpaceKnowledgeResponse>
      createAccountSpaceKnowledge($grpc.ServiceCall call,
          $21.CreateAccountSpaceKnowledgeRequest request);
}
