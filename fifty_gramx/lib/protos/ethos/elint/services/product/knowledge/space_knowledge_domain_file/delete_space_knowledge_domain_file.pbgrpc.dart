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
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file/delete_space_knowledge_domain_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'delete_space_knowledge_domain_file.pb.dart' as $35;
import '../../../../entities/generic.pb.dart' as $2;
export 'delete_space_knowledge_domain_file.pb.dart';

class DeleteSpaceKnowledgeDomainFileServiceClient extends $grpc.Client {
  static final _$deleteSpaceKnowledgeDomainFile = $grpc.ClientMethod<
          $35.DeleteSpaceKnowledgeDomainFileRequest, $2.ResponseMeta>(
      '/elint.services.product.knowledge.file.DeleteSpaceKnowledgeDomainFileService/DeleteSpaceKnowledgeDomainFile',
      ($35.DeleteSpaceKnowledgeDomainFileRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));

  DeleteSpaceKnowledgeDomainFileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.ResponseMeta> deleteSpaceKnowledgeDomainFile(
      $35.DeleteSpaceKnowledgeDomainFileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSpaceKnowledgeDomainFile, request,
        options: options);
  }
}

abstract class DeleteSpaceKnowledgeDomainFileServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.file.DeleteSpaceKnowledgeDomainFileService';

  DeleteSpaceKnowledgeDomainFileServiceBase() {
    $addMethod($grpc.ServiceMethod<$35.DeleteSpaceKnowledgeDomainFileRequest,
            $2.ResponseMeta>(
        'DeleteSpaceKnowledgeDomainFile',
        deleteSpaceKnowledgeDomainFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $35.DeleteSpaceKnowledgeDomainFileRequest.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
  }

  $async.Future<$2.ResponseMeta> deleteSpaceKnowledgeDomainFile_Pre(
      $grpc.ServiceCall call,
      $async.Future<$35.DeleteSpaceKnowledgeDomainFileRequest> request) async {
    return deleteSpaceKnowledgeDomainFile(call, await request);
  }

  $async.Future<$2.ResponseMeta> deleteSpaceKnowledgeDomainFile(
      $grpc.ServiceCall call,
      $35.DeleteSpaceKnowledgeDomainFileRequest request);
}
