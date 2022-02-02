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
//  source: ethos/elint/services/product/action/space_knowledge_action.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'space_knowledge_action.pb.dart' as $49;
export 'space_knowledge_action.pb.dart';

class SpaceKnowledgeActionServiceClient extends $grpc.Client {
  static final _$askQuestion = $grpc.ClientMethod<$49.AskQuestionRequest,
          $49.AskQuestionResponse>(
      '/elint.services.product.action.space.knowledge.SpaceKnowledgeActionService/AskQuestion',
      ($49.AskQuestionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $49.AskQuestionResponse.fromBuffer(value));

  SpaceKnowledgeActionServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$49.AskQuestionResponse> askQuestion(
      $49.AskQuestionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$askQuestion, request, options: options);
  }
}

abstract class SpaceKnowledgeActionServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.action.space.knowledge.SpaceKnowledgeActionService';

  SpaceKnowledgeActionServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$49.AskQuestionRequest, $49.AskQuestionResponse>(
            'AskQuestion',
            askQuestion_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $49.AskQuestionRequest.fromBuffer(value),
            ($49.AskQuestionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$49.AskQuestionResponse> askQuestion_Pre($grpc.ServiceCall call,
      $async.Future<$49.AskQuestionRequest> request) async {
    return askQuestion(call, await request);
  }

  $async.Future<$49.AskQuestionResponse> askQuestion(
      $grpc.ServiceCall call, $49.AskQuestionRequest request);
}
