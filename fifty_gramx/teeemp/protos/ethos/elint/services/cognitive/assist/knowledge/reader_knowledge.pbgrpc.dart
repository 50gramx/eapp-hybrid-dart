/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

///
//  Generated code. Do not modify.
//  source: ethos/elint/services/cognitive/assist/knowledge/reader_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'reader_knowledge.pb.dart' as $48;
export 'reader_knowledge.pb.dart';

class ReaderKnowledgeServiceClient extends $grpc.Client {
  static final _$readPageQuestion = $grpc.ClientMethod<
          $48.ReadPageQuestionRequest, $48.ReadPageQuestionResponse>(
      '/elint.services.cognitive.assist.knowledge.reader.ReaderKnowledgeService/ReadPageQuestion',
      ($48.ReadPageQuestionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $48.ReadPageQuestionResponse.fromBuffer(value));
  static final _$readParaQuestion = $grpc.ClientMethod<
          $48.ReadParaQuestionRequest, $48.ReadParaQuestionResponse>(
      '/elint.services.cognitive.assist.knowledge.reader.ReaderKnowledgeService/ReadParaQuestion',
      ($48.ReadParaQuestionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $48.ReadParaQuestionResponse.fromBuffer(value));

  ReaderKnowledgeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$48.ReadPageQuestionResponse> readPageQuestion(
      $48.ReadPageQuestionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPageQuestion, request, options: options);
  }

  $grpc.ResponseFuture<$48.ReadParaQuestionResponse> readParaQuestion(
      $48.ReadParaQuestionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readParaQuestion, request, options: options);
  }
}

abstract class ReaderKnowledgeServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.cognitive.assist.knowledge.reader.ReaderKnowledgeService';

  ReaderKnowledgeServiceBase() {
    $addMethod($grpc.ServiceMethod<$48.ReadPageQuestionRequest,
            $48.ReadPageQuestionResponse>(
        'ReadPageQuestion',
        readPageQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $48.ReadPageQuestionRequest.fromBuffer(value),
        ($48.ReadPageQuestionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$48.ReadParaQuestionRequest,
            $48.ReadParaQuestionResponse>(
        'ReadParaQuestion',
        readParaQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $48.ReadParaQuestionRequest.fromBuffer(value),
        ($48.ReadParaQuestionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$48.ReadPageQuestionResponse> readPageQuestion_Pre(
      $grpc.ServiceCall call,
      $async.Future<$48.ReadPageQuestionRequest> request) async {
    return readPageQuestion(call, await request);
  }

  $async.Future<$48.ReadParaQuestionResponse> readParaQuestion_Pre(
      $grpc.ServiceCall call,
      $async.Future<$48.ReadParaQuestionRequest> request) async {
    return readParaQuestion(call, await request);
  }

  $async.Future<$48.ReadPageQuestionResponse> readPageQuestion(
      $grpc.ServiceCall call, $48.ReadPageQuestionRequest request);
  $async.Future<$48.ReadParaQuestionResponse> readParaQuestion(
      $grpc.ServiceCall call, $48.ReadParaQuestionRequest request);
}
