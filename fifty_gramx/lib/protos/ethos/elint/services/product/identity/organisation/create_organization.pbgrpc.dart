///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/organisation/create_organization.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'create_organization.pb.dart' as $13;
export 'create_organization.pb.dart';

class CreateOrganizationServiceClient extends $grpc.Client {
  static final _$createOrganization = $grpc.ClientMethod<
          $13.CreateOrganizationRequest, $13.CreateOrganizationResponse>(
      '/elint.services.product.identity.organization.CreateOrganizationService/CreateOrganization',
      ($13.CreateOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $13.CreateOrganizationResponse.fromBuffer(value));

  CreateOrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$13.CreateOrganizationResponse> createOrganization(
      $13.CreateOrganizationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createOrganization, request, options: options);
  }
}

abstract class CreateOrganizationServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.organization.CreateOrganizationService';

  CreateOrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.CreateOrganizationRequest,
            $13.CreateOrganizationResponse>(
        'CreateOrganization',
        createOrganization_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $13.CreateOrganizationRequest.fromBuffer(value),
        ($13.CreateOrganizationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.CreateOrganizationResponse> createOrganization_Pre(
      $grpc.ServiceCall call,
      $async.Future<$13.CreateOrganizationRequest> request) async {
    return createOrganization(call, await request);
  }

  $async.Future<$13.CreateOrganizationResponse> createOrganization(
      $grpc.ServiceCall call, $13.CreateOrganizationRequest request);
}
