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
//  source: ethos/elint/services/cognitive/assist/knowledge/generator_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'generator_knowledge.pb.dart' as $47;
export 'generator_knowledge.pb.dart';

class GeneratorKnowledgeServiceClient extends $grpc.Client {
  static final _$generatePageQuestion = $grpc.ClientMethod<
          $47.GeneratePageQuestionRequest, $47.GeneratePageQuestionResponse>(
      '/elint.services.cognitive.assist.knowledge.generator.GeneratorKnowledgeService/GeneratePageQuestion',
      ($47.GeneratePageQuestionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $47.GeneratePageQuestionResponse.fromBuffer(value));

  GeneratorKnowledgeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$47.GeneratePageQuestionResponse> generatePageQuestion(
      $47.GeneratePageQuestionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$generatePageQuestion, request, options: options);
  }
}

abstract class GeneratorKnowledgeServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.cognitive.assist.knowledge.generator.GeneratorKnowledgeService';

  GeneratorKnowledgeServiceBase() {
    $addMethod($grpc.ServiceMethod<$47.GeneratePageQuestionRequest,
            $47.GeneratePageQuestionResponse>(
        'GeneratePageQuestion',
        generatePageQuestion_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $47.GeneratePageQuestionRequest.fromBuffer(value),
        ($47.GeneratePageQuestionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$47.GeneratePageQuestionResponse> generatePageQuestion_Pre(
      $grpc.ServiceCall call,
      $async.Future<$47.GeneratePageQuestionRequest> request) async {
    return generatePageQuestion(call, await request);
  }

  $async.Future<$47.GeneratePageQuestionResponse> generatePageQuestion(
      $grpc.ServiceCall call, $47.GeneratePageQuestionRequest request);
}
