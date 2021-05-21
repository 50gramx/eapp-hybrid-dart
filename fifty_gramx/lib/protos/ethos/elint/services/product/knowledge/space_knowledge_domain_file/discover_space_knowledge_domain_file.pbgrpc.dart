///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file/discover_space_knowledge_domain_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'discover_space_knowledge_domain_file.pb.dart' as $36;
import '../../../../entities/space_knowledge_domain_file.pb.dart' as $37;
export 'discover_space_knowledge_domain_file.pb.dart';

class DiscoverKnowledgeDomainFileServiceClient extends $grpc.Client {
  static final _$getFileDetails = $grpc.ClientMethod<$36.GetFileDetailsRequest,
          $37.SpaceKnowledgeDomainFile>(
      '/elint.services.product.knowledge.file.DiscoverKnowledgeDomainFileService/GetFileDetails',
      ($36.GetFileDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $37.SpaceKnowledgeDomainFile.fromBuffer(value));
  static final _$fileExistsByID = $grpc.ClientMethod<$36.FileExistsByIDRequest,
          $36.FileExistsByIDResponse>(
      '/elint.services.product.knowledge.file.DiscoverKnowledgeDomainFileService/FileExistsByID',
      ($36.FileExistsByIDRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $36.FileExistsByIDResponse.fromBuffer(value));

  DiscoverKnowledgeDomainFileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$37.SpaceKnowledgeDomainFile> getFileDetails(
      $36.GetFileDetailsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFileDetails, request, options: options);
  }

  $grpc.ResponseFuture<$36.FileExistsByIDResponse> fileExistsByID(
      $36.FileExistsByIDRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fileExistsByID, request, options: options);
  }
}

abstract class DiscoverKnowledgeDomainFileServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.file.DiscoverKnowledgeDomainFileService';

  DiscoverKnowledgeDomainFileServiceBase() {
    $addMethod($grpc.ServiceMethod<$36.GetFileDetailsRequest,
            $37.SpaceKnowledgeDomainFile>(
        'GetFileDetails',
        getFileDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $36.GetFileDetailsRequest.fromBuffer(value),
        ($37.SpaceKnowledgeDomainFile value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$36.FileExistsByIDRequest,
            $36.FileExistsByIDResponse>(
        'FileExistsByID',
        fileExistsByID_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $36.FileExistsByIDRequest.fromBuffer(value),
        ($36.FileExistsByIDResponse value) => value.writeToBuffer()));
  }

  $async.Future<$37.SpaceKnowledgeDomainFile> getFileDetails_Pre(
      $grpc.ServiceCall call,
      $async.Future<$36.GetFileDetailsRequest> request) async {
    return getFileDetails(call, await request);
  }

  $async.Future<$36.FileExistsByIDResponse> fileExistsByID_Pre(
      $grpc.ServiceCall call,
      $async.Future<$36.FileExistsByIDRequest> request) async {
    return fileExistsByID(call, await request);
  }

  $async.Future<$37.SpaceKnowledgeDomainFile> getFileDetails(
      $grpc.ServiceCall call, $36.GetFileDetailsRequest request);
  $async.Future<$36.FileExistsByIDResponse> fileExistsByID(
      $grpc.ServiceCall call, $36.FileExistsByIDRequest request);
}
