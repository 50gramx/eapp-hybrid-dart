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
import 'reader_knowledge.pb.dart' as $51;
export 'reader_knowledge.pb.dart';

class ReaderKnowledgeServiceClient extends $grpc.Client {
  static final _$readPageQuestion = $grpc.ClientMethod<
          $51.ReadPageQuestionRequest, $51.ReadPageQuestionResponse>(
      '/elint.services.cognitive.assist.knowledge.reader.ReaderKnowledgeService/ReadPageQuestion',
      ($51.ReadPageQuestionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $51.ReadPageQuestionResponse.fromBuffer(value));
  static final _$readParaQuestion = $grpc.ClientMethod<
          $51.ReadParaQuestionRequest, $51.ReadParaQuestionResponse>(
      '/elint.services.cognitive.assist.knowledge.reader.ReaderKnowledgeService/ReadParaQuestion',
      ($51.ReadParaQuestionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $51.ReadParaQuestionResponse.fromBuffer(value));

  ReaderKnowledgeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$51.ReadPageQuestionResponse> readPageQuestion(
      $51.ReadPageQuestionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPageQuestion, request, options: options);
  }

  $grpc.ResponseFuture<$51.ReadParaQuestionResponse> readParaQuestion(
      $51.ReadParaQuestionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readParaQuestion, request, options: options);
  }
}

abstract class ReaderKnowledgeServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.cognitive.assist.knowledge.reader.ReaderKnowledgeService';

  ReaderKnowledgeServiceBase() {
    $addMethod($grpc.ServiceMethod<$51.ReadPageQuestionRequest,
            $51.ReadPageQuestionResponse>(
        'ReadPageQuestion',
        readPageQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $51.ReadPageQuestionRequest.fromBuffer(value),
        ($51.ReadPageQuestionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$51.ReadParaQuestionRequest,
            $51.ReadParaQuestionResponse>(
        'ReadParaQuestion',
        readParaQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $51.ReadParaQuestionRequest.fromBuffer(value),
        ($51.ReadParaQuestionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$51.ReadPageQuestionResponse> readPageQuestion_Pre(
      $grpc.ServiceCall call,
      $async.Future<$51.ReadPageQuestionRequest> request) async {
    return readPageQuestion(call, await request);
  }

  $async.Future<$51.ReadParaQuestionResponse> readParaQuestion_Pre(
      $grpc.ServiceCall call,
      $async.Future<$51.ReadParaQuestionRequest> request) async {
    return readParaQuestion(call, await request);
  }

  $async.Future<$51.ReadPageQuestionResponse> readPageQuestion(
      $grpc.ServiceCall call, $51.ReadPageQuestionRequest request);
  $async.Future<$51.ReadParaQuestionResponse> readParaQuestion(
      $grpc.ServiceCall call, $51.ReadParaQuestionRequest request);
}
