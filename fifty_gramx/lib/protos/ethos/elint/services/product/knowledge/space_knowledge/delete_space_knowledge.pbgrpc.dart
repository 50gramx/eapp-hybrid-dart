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
//  source: ethos/elint/services/product/knowledge/space_knowledge/delete_space_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'delete_space_knowledge.pb.dart' as $25;
export 'delete_space_knowledge.pb.dart';

class DeleteSpaceKnowledgeServiceClient extends $grpc.Client {
  static final _$deleteSpaceKnowledge = $grpc.ClientMethod<
          $25.DeleteSpaceKnowledgeRequest, $25.DeleteSpaceKnowledgeResponse>(
      '/elint.services.product.knowledge.space.DeleteSpaceKnowledgeService/DeleteSpaceKnowledge',
      ($25.DeleteSpaceKnowledgeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $25.DeleteSpaceKnowledgeResponse.fromBuffer(value));

  DeleteSpaceKnowledgeServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$25.DeleteSpaceKnowledgeResponse> deleteSpaceKnowledge(
      $25.DeleteSpaceKnowledgeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSpaceKnowledge, request, options: options);
  }
}

abstract class DeleteSpaceKnowledgeServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.space.DeleteSpaceKnowledgeService';

  DeleteSpaceKnowledgeServiceBase() {
    $addMethod($grpc.ServiceMethod<$25.DeleteSpaceKnowledgeRequest,
            $25.DeleteSpaceKnowledgeResponse>(
        'DeleteSpaceKnowledge',
        deleteSpaceKnowledge_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $25.DeleteSpaceKnowledgeRequest.fromBuffer(value),
        ($25.DeleteSpaceKnowledgeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$25.DeleteSpaceKnowledgeResponse> deleteSpaceKnowledge_Pre(
      $grpc.ServiceCall call,
      $async.Future<$25.DeleteSpaceKnowledgeRequest> request) async {
    return deleteSpaceKnowledge(call, await request);
  }

  $async.Future<$25.DeleteSpaceKnowledgeResponse> deleteSpaceKnowledge(
      $grpc.ServiceCall call, $25.DeleteSpaceKnowledgeRequest request);
}
