///
//  Generated code. Do not modify.
//  source: ethos/elint/services/cognitive/assist/knowledge/generator_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'generator_knowledge.pb.dart' as $49;
export 'generator_knowledge.pb.dart';

class GeneratorKnowledgeServiceClient extends $grpc.Client {
  static final _$generatePageQuestion = $grpc.ClientMethod<
          $49.GeneratePageQuestionRequest, $49.GeneratePageQuestionResponse>(
      '/elint.services.cognitive.assist.knowledge.generator.GeneratorKnowledgeService/GeneratePageQuestion',
      ($49.GeneratePageQuestionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $49.GeneratePageQuestionResponse.fromBuffer(value));

  GeneratorKnowledgeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$49.GeneratePageQuestionResponse> generatePageQuestion(
      $49.GeneratePageQuestionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generatePageQuestion, request, options: options);
  }
}

abstract class GeneratorKnowledgeServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.cognitive.assist.knowledge.generator.GeneratorKnowledgeService';

  GeneratorKnowledgeServiceBase() {
    $addMethod($grpc.ServiceMethod<$49.GeneratePageQuestionRequest,
            $49.GeneratePageQuestionResponse>(
        'GeneratePageQuestion',
        generatePageQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $49.GeneratePageQuestionRequest.fromBuffer(value),
        ($49.GeneratePageQuestionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$49.GeneratePageQuestionResponse> generatePageQuestion_Pre(
      $grpc.ServiceCall call,
      $async.Future<$49.GeneratePageQuestionRequest> request) async {
    return generatePageQuestion(call, await request);
  }

  $async.Future<$49.GeneratePageQuestionResponse> generatePageQuestion(
      $grpc.ServiceCall call, $49.GeneratePageQuestionRequest request);
}
