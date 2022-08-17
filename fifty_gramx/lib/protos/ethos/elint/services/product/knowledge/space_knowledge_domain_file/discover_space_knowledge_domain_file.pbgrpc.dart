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
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file/discover_space_knowledge_domain_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'discover_space_knowledge_domain_file.pb.dart' as $33;
import '../../../../entities/space_knowledge_domain_file.pb.dart' as $34;
export 'discover_space_knowledge_domain_file.pb.dart';

class DiscoverKnowledgeDomainFileServiceClient extends $grpc.Client {
  static final _$getFileDetails = $grpc.ClientMethod<$33.GetFileDetailsRequest,
          $34.SpaceKnowledgeDomainFile>(
      '/elint.services.product.knowledge.file.DiscoverKnowledgeDomainFileService/GetFileDetails',
      ($33.GetFileDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $34.SpaceKnowledgeDomainFile.fromBuffer(value));
  static final _$fileExistsByID = $grpc.ClientMethod<$33.FileExistsByIDRequest,
          $33.FileExistsByIDResponse>(
      '/elint.services.product.knowledge.file.DiscoverKnowledgeDomainFileService/FileExistsByID',
      ($33.FileExistsByIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $33.FileExistsByIDResponse.fromBuffer(value));

  DiscoverKnowledgeDomainFileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$34.SpaceKnowledgeDomainFile> getFileDetails(
      $33.GetFileDetailsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFileDetails, request, options: options);
  }

  $grpc.ResponseFuture<$33.FileExistsByIDResponse> fileExistsByID(
      $33.FileExistsByIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fileExistsByID, request, options: options);
  }
}

abstract class DiscoverKnowledgeDomainFileServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.file.DiscoverKnowledgeDomainFileService';

  DiscoverKnowledgeDomainFileServiceBase() {
    $addMethod($grpc.ServiceMethod<$33.GetFileDetailsRequest,
            $34.SpaceKnowledgeDomainFile>(
        'GetFileDetails',
        getFileDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $33.GetFileDetailsRequest.fromBuffer(value),
        ($34.SpaceKnowledgeDomainFile value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$33.FileExistsByIDRequest,
            $33.FileExistsByIDResponse>(
        'FileExistsByID',
        fileExistsByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $33.FileExistsByIDRequest.fromBuffer(value),
        ($33.FileExistsByIDResponse value) => value.writeToBuffer()));
  }

  $async.Future<$34.SpaceKnowledgeDomainFile> getFileDetails_Pre(
      $grpc.ServiceCall call,
      $async.Future<$33.GetFileDetailsRequest> request) async {
    return getFileDetails(call, await request);
  }

  $async.Future<$33.FileExistsByIDResponse> fileExistsByID_Pre(
      $grpc.ServiceCall call,
      $async.Future<$33.FileExistsByIDRequest> request) async {
    return fileExistsByID(call, await request);
  }

  $async.Future<$34.SpaceKnowledgeDomainFile> getFileDetails(
      $grpc.ServiceCall call, $33.GetFileDetailsRequest request);
  $async.Future<$33.FileExistsByIDResponse> fileExistsByID(
      $grpc.ServiceCall call, $33.FileExistsByIDRequest request);
}
