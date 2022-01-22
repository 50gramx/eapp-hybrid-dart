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
    as $30;
import 'create_space_knowledge_domain_file_page.pb.dart' as $36;
import '../../../../entities/space_knowledge_domain_file_page.pb.dart' as $37;
export 'create_space_knowledge_domain_file_page.pb.dart';

class CreateSpaceKnowledgeDomainFilePageServiceClient extends $grpc.Client {
  static final _$extractPagesFromFile = $grpc.ClientMethod<
          $30.SpaceKnowledgeDomainFileServicesAccessAuthDetails,
          $36.ExtractPagesFromFileResponse>(
      '/elint.services.product.knowledge.page.CreateSpaceKnowledgeDomainFilePageService/ExtractPagesFromFile',
      ($30.SpaceKnowledgeDomainFileServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $36.ExtractPagesFromFileResponse.fromBuffer(value));
  static final _$extractTextFromPage = $grpc.ClientMethod<
          $37.SpaceKnowledgeDomainFilePage, $36.ExtractTextFromPageResponse>(
      '/elint.services.product.knowledge.page.CreateSpaceKnowledgeDomainFilePageService/ExtractTextFromPage',
      ($37.SpaceKnowledgeDomainFilePage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $36.ExtractTextFromPageResponse.fromBuffer(value));

  CreateSpaceKnowledgeDomainFilePageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$36.ExtractPagesFromFileResponse> extractPagesFromFile(
      $30.SpaceKnowledgeDomainFileServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$extractPagesFromFile, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$36.ExtractTextFromPageResponse> extractTextFromPage(
      $37.SpaceKnowledgeDomainFilePage request,
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
            $30.SpaceKnowledgeDomainFileServicesAccessAuthDetails,
            $36.ExtractPagesFromFileResponse>(
        'ExtractPagesFromFile',
        extractPagesFromFile_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $30.SpaceKnowledgeDomainFileServicesAccessAuthDetails.fromBuffer(
                value),
        ($36.ExtractPagesFromFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$37.SpaceKnowledgeDomainFilePage,
            $36.ExtractTextFromPageResponse>(
        'ExtractTextFromPage',
        extractTextFromPage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $37.SpaceKnowledgeDomainFilePage.fromBuffer(value),
        ($36.ExtractTextFromPageResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$36.ExtractPagesFromFileResponse> extractPagesFromFile_Pre(
      $grpc.ServiceCall call,
      $async.Future<$30.SpaceKnowledgeDomainFileServicesAccessAuthDetails>
          request) async* {
    yield* extractPagesFromFile(call, await request);
  }

  $async.Future<$36.ExtractTextFromPageResponse> extractTextFromPage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$37.SpaceKnowledgeDomainFilePage> request) async {
    return extractTextFromPage(call, await request);
  }

  $async.Stream<$36.ExtractPagesFromFileResponse> extractPagesFromFile(
      $grpc.ServiceCall call,
      $30.SpaceKnowledgeDomainFileServicesAccessAuthDetails request);
  $async.Future<$36.ExtractTextFromPageResponse> extractTextFromPage(
      $grpc.ServiceCall call, $37.SpaceKnowledgeDomainFilePage request);
}
