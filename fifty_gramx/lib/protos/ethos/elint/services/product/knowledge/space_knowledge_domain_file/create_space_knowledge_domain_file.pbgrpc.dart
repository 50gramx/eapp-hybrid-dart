///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file/create_space_knowledge_domain_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'create_space_knowledge_domain_file.pb.dart' as $31;
export 'create_space_knowledge_domain_file.pb.dart';

class CreateSpaceKnowledgeDomainFileServiceClient extends $grpc.Client {
  static final _$uploadSpaceKnowledgeDomainFile = $grpc.ClientMethod<
          $31.UploadSpaceKnowledgeDomainFileRequest,
          $31.UploadSpaceKnowledgeDomainFileResponse>(
      '/elint.services.product.knowledge.file.CreateSpaceKnowledgeDomainFileService/UploadSpaceKnowledgeDomainFile',
      ($31.UploadSpaceKnowledgeDomainFileRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $31.UploadSpaceKnowledgeDomainFileResponse.fromBuffer(value));

  CreateSpaceKnowledgeDomainFileServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$31.UploadSpaceKnowledgeDomainFileResponse>
      uploadSpaceKnowledgeDomainFile(
          $async.Stream<$31.UploadSpaceKnowledgeDomainFileRequest> request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$uploadSpaceKnowledgeDomainFile, request,
        options: options);
  }
}

abstract class CreateSpaceKnowledgeDomainFileServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.file.CreateSpaceKnowledgeDomainFileService';

  CreateSpaceKnowledgeDomainFileServiceBase() {
    $addMethod($grpc.ServiceMethod<$31.UploadSpaceKnowledgeDomainFileRequest,
            $31.UploadSpaceKnowledgeDomainFileResponse>(
        'UploadSpaceKnowledgeDomainFile',
        uploadSpaceKnowledgeDomainFile,
        true,
        true,
        ($core.List<$core.int> value) =>
            $31.UploadSpaceKnowledgeDomainFileRequest.fromBuffer(value),
        ($31.UploadSpaceKnowledgeDomainFileResponse value) =>
            value.writeToBuffer()));
  }

  $async.Stream<$31.UploadSpaceKnowledgeDomainFileResponse>
      uploadSpaceKnowledgeDomainFile($grpc.ServiceCall call,
          $async.Stream<$31.UploadSpaceKnowledgeDomainFileRequest> request);
}
