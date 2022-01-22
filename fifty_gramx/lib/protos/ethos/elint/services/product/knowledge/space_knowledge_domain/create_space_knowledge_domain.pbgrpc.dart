///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain/create_space_knowledge_domain.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../space_knowledge/access_space_knowledge.pb.dart' as $10;
import 'create_space_knowledge_domain.pb.dart' as $25;
import 'access_space_knowledge_domain.pb.dart' as $24;
import '../../../../entities/generic.pb.dart' as $2;
export 'create_space_knowledge_domain.pb.dart';

class CreateSpaceKnowledgeDomainServiceClient extends $grpc.Client {
  static final _$createAccountWhiteSpaceKnowledgeDomain = $grpc.ClientMethod<
          $10.SpaceKnowledgeServicesAccessAuthDetails,
          $25.CreateAccountWhiteSpaceKnowledgeDomainResponse>(
      '/elint.services.product.knowledge.domain.CreateSpaceKnowledgeDomainService/CreateAccountWhiteSpaceKnowledgeDomain',
      ($10.SpaceKnowledgeServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $25.CreateAccountWhiteSpaceKnowledgeDomainResponse.fromBuffer(value));
  static final _$createSpaceKnowledgeDomainTfIdf = $grpc.ClientMethod<
          $24.SpaceKnowledgeDomainServicesAccessAuthDetails, $2.ResponseMeta>(
      '/elint.services.product.knowledge.domain.CreateSpaceKnowledgeDomainService/CreateSpaceKnowledgeDomainTfIdf',
      ($24.SpaceKnowledgeDomainServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$createSpaceKnowledgeDomain = $grpc.ClientMethod<
          $25.CreateSpaceKnowledgeDomainRequest,
          $25.CreateSpaceKnowledgeDomainResponse>(
      '/elint.services.product.knowledge.domain.CreateSpaceKnowledgeDomainService/CreateSpaceKnowledgeDomain',
      ($25.CreateSpaceKnowledgeDomainRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $25.CreateSpaceKnowledgeDomainResponse.fromBuffer(value));

  CreateSpaceKnowledgeDomainServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$25.CreateAccountWhiteSpaceKnowledgeDomainResponse>
      createAccountWhiteSpaceKnowledgeDomain(
          $10.SpaceKnowledgeServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAccountWhiteSpaceKnowledgeDomain, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> createSpaceKnowledgeDomainTfIdf(
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSpaceKnowledgeDomainTfIdf, request,
        options: options);
  }

  $grpc.ResponseFuture<$25.CreateSpaceKnowledgeDomainResponse>
      createSpaceKnowledgeDomain($25.CreateSpaceKnowledgeDomainRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSpaceKnowledgeDomain, request,
        options: options);
  }
}

abstract class CreateSpaceKnowledgeDomainServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.knowledge.domain.CreateSpaceKnowledgeDomainService';

  CreateSpaceKnowledgeDomainServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.SpaceKnowledgeServicesAccessAuthDetails,
            $25.CreateAccountWhiteSpaceKnowledgeDomainResponse>(
        'CreateAccountWhiteSpaceKnowledgeDomain',
        createAccountWhiteSpaceKnowledgeDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $10.SpaceKnowledgeServicesAccessAuthDetails.fromBuffer(value),
        ($25.CreateAccountWhiteSpaceKnowledgeDomainResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails, $2.ResponseMeta>(
        'CreateSpaceKnowledgeDomainTfIdf',
        createSpaceKnowledgeDomainTfIdf_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $24.SpaceKnowledgeDomainServicesAccessAuthDetails.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$25.CreateSpaceKnowledgeDomainRequest,
            $25.CreateSpaceKnowledgeDomainResponse>(
        'CreateSpaceKnowledgeDomain',
        createSpaceKnowledgeDomain_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $25.CreateSpaceKnowledgeDomainRequest.fromBuffer(value),
        ($25.CreateSpaceKnowledgeDomainResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$25.CreateAccountWhiteSpaceKnowledgeDomainResponse>
      createAccountWhiteSpaceKnowledgeDomain_Pre(
          $grpc.ServiceCall call,
          $async.Future<$10.SpaceKnowledgeServicesAccessAuthDetails>
              request) async {
    return createAccountWhiteSpaceKnowledgeDomain(call, await request);
  }

  $async.Future<$2.ResponseMeta> createSpaceKnowledgeDomainTfIdf_Pre(
      $grpc.ServiceCall call,
      $async.Future<$24.SpaceKnowledgeDomainServicesAccessAuthDetails>
          request) async {
    return createSpaceKnowledgeDomainTfIdf(call, await request);
  }

  $async.Future<$25.CreateSpaceKnowledgeDomainResponse>
      createSpaceKnowledgeDomain_Pre($grpc.ServiceCall call,
          $async.Future<$25.CreateSpaceKnowledgeDomainRequest> request) async {
    return createSpaceKnowledgeDomain(call, await request);
  }

  $async.Future<$25.CreateAccountWhiteSpaceKnowledgeDomainResponse>
      createAccountWhiteSpaceKnowledgeDomain($grpc.ServiceCall call,
          $10.SpaceKnowledgeServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta> createSpaceKnowledgeDomainTfIdf(
      $grpc.ServiceCall call,
      $24.SpaceKnowledgeDomainServicesAccessAuthDetails request);
  $async.Future<$25.CreateSpaceKnowledgeDomainResponse>
      createSpaceKnowledgeDomain($grpc.ServiceCall call,
          $25.CreateSpaceKnowledgeDomainRequest request);
}
