///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/action/space_knowledge_action.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'space_knowledge_action.pb.dart' as $48;
export 'space_knowledge_action.pb.dart';

class SpaceKnowledgeActionServiceClient extends $grpc.Client {
  static final _$askQuestion = $grpc.ClientMethod<$48.AskQuestionRequest,
          $48.AskQuestionResponse>(
      '/elint.services.product.action.space.knowledge.SpaceKnowledgeActionService/AskQuestion',
      ($48.AskQuestionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $48.AskQuestionResponse.fromBuffer(value));

  SpaceKnowledgeActionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$48.AskQuestionResponse> askQuestion(
      $48.AskQuestionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$askQuestion, request, options: options);
  }
}

abstract class SpaceKnowledgeActionServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.action.space.knowledge.SpaceKnowledgeActionService';

  SpaceKnowledgeActionServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$48.AskQuestionRequest, $48.AskQuestionResponse>(
            'AskQuestion',
            askQuestion_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $48.AskQuestionRequest.fromBuffer(value),
            ($48.AskQuestionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$48.AskQuestionResponse> askQuestion_Pre($grpc.ServiceCall call,
      $async.Future<$48.AskQuestionRequest> request) async {
    return askQuestion(call, await request);
  }

  $async.Future<$48.AskQuestionResponse> askQuestion(
      $grpc.ServiceCall call, $48.AskQuestionRequest request);
}
