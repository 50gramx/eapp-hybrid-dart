///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page/create_space_knowledge_domain_file_page.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../space_knowledge_domain_file/access_space_knowledge_domain_file.pb.dart'
    as $33;
import 'create_space_knowledge_domain_file_page.pb.dart' as $39;
import '../../../../entities/space_knowledge_domain_file_page.pb.dart' as $40;
export 'create_space_knowledge_domain_file_page.pb.dart';

class CreateSpaceKnowledgeDomainFilePageServiceClient extends $grpc.Client {
  static final _$extractPagesFromFile = $grpc.ClientMethod<
          $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails,
          $39.ExtractPagesFromFileResponse>(
      '/elint.services.product.knowledge.page.CreateSpaceKnowledgeDomainFilePageService/ExtractPagesFromFile',
      ($33.SpaceKnowledgeDomainFileServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $39.ExtractPagesFromFileResponse.fromBuffer(value));
  static final _$extractTextFromPage = $grpc.ClientMethod<
          $40.SpaceKnowledgeDomainFilePage, $39.ExtractTextFromPageResponse>(
      '/elint.services.product.knowledge.page.CreateSpaceKnowledgeDomainFilePageService/ExtractTextFromPage',
      ($40.SpaceKnowledgeDomainFilePage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $39.ExtractTextFromPageResponse.fromBuffer(value));

  CreateSpaceKnowledgeDomainFilePageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$39.ExtractPagesFromFileResponse> extractPagesFromFile(
      $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$extractPagesFromFile, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$39.ExtractTextFromPageResponse> extractTextFromPage(
      $40.SpaceKnowledgeDomainFilePage request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$extractTextFromPage, request, options: options);
  }
}

abstract class CreateSpaceKnowledgeDomainFilePageServiceBase
    extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.page.CreateSpaceKnowledgeDomainFilePageService';

  CreateSpaceKnowledgeDomainFilePageServiceBase() {
    $addMethod($grpc.ServiceMethod<
            $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails,
            $39.ExtractPagesFromFileResponse>(
        'ExtractPagesFromFile',
        extractPagesFromFile_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails.fromBuffer(
                value),
        ($39.ExtractPagesFromFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$40.SpaceKnowledgeDomainFilePage,
            $39.ExtractTextFromPageResponse>(
        'ExtractTextFromPage',
        extractTextFromPage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $40.SpaceKnowledgeDomainFilePage.fromBuffer(value),
        ($39.ExtractTextFromPageResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$39.ExtractPagesFromFileResponse> extractPagesFromFile_Pre(
      $grpc.ServiceCall call,
      $async.Future<$33.SpaceKnowledgeDomainFileServicesAccessAuthDetails>
          request) async* {
    yield* extractPagesFromFile(call, await request);
  }

  $async.Future<$39.ExtractTextFromPageResponse> extractTextFromPage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$40.SpaceKnowledgeDomainFilePage> request) async {
    return extractTextFromPage(call, await request);
  }

  $async.Stream<$39.ExtractPagesFromFileResponse> extractPagesFromFile(
      $grpc.ServiceCall call,
      $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails request);
  $async.Future<$39.ExtractTextFromPageResponse> extractTextFromPage(
      $grpc.ServiceCall call, $40.SpaceKnowledgeDomainFilePage request);
}
