///
//  Generated code. Do not modify.
//  source: ethos/elint/services/cognitive/assist/knowledge/reader_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'reader_knowledge.pb.dart' as $50;
export 'reader_knowledge.pb.dart';

class ReaderKnowledgeServiceClient extends $grpc.Client {
  static final _$readPageQuestion = $grpc.ClientMethod<
          $50.ReadPageQuestionRequest, $50.ReadPageQuestionResponse>(
      '/elint.services.cognitive.assist.knowledge.reader.ReaderKnowledgeService/ReadPageQuestion',
      ($50.ReadPageQuestionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $50.ReadPageQuestionResponse.fromBuffer(value));
  static final _$readParaQuestion = $grpc.ClientMethod<
          $50.ReadParaQuestionRequest, $50.ReadParaQuestionResponse>(
      '/elint.services.cognitive.assist.knowledge.reader.ReaderKnowledgeService/ReadParaQuestion',
      ($50.ReadParaQuestionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $50.ReadParaQuestionResponse.fromBuffer(value));

  ReaderKnowledgeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$50.ReadPageQuestionResponse> readPageQuestion(
      $50.ReadPageQuestionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPageQuestion, request, options: options);
  }

  $grpc.ResponseFuture<$50.ReadParaQuestionResponse> readParaQuestion(
      $50.ReadParaQuestionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readParaQuestion, request, options: options);
  }
}

abstract class ReaderKnowledgeServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.cognitive.assist.knowledge.reader.ReaderKnowledgeService';

  ReaderKnowledgeServiceBase() {
    $addMethod($grpc.ServiceMethod<$50.ReadPageQuestionRequest,
            $50.ReadPageQuestionResponse>(
        'ReadPageQuestion',
        readPageQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $50.ReadPageQuestionRequest.fromBuffer(value),
        ($50.ReadPageQuestionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$50.ReadParaQuestionRequest,
            $50.ReadParaQuestionResponse>(
        'ReadParaQuestion',
        readParaQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $50.ReadParaQuestionRequest.fromBuffer(value),
        ($50.ReadParaQuestionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$50.ReadPageQuestionResponse> readPageQuestion_Pre(
      $grpc.ServiceCall call,
      $async.Future<$50.ReadPageQuestionRequest> request) async {
    return readPageQuestion(call, await request);
  }

  $async.Future<$50.ReadParaQuestionResponse> readParaQuestion_Pre(
      $grpc.ServiceCall call,
      $async.Future<$50.ReadParaQuestionRequest> request) async {
    return readParaQuestion(call, await request);
  }

  $async.Future<$50.ReadPageQuestionResponse> readPageQuestion(
      $grpc.ServiceCall call, $50.ReadPageQuestionRequest request);
  $async.Future<$50.ReadParaQuestionResponse> readParaQuestion(
      $grpc.ServiceCall call, $50.ReadParaQuestionRequest request);
}
