///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/organisation/onboard_organization_space.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../../../entities/organization_space.pb.dart' as $12;
export 'onboard_organization_space.pb.dart';

class OnboardOrganizationSpaceServiceClient extends $grpc.Client {
  static final _$claim_organization_space = $grpc.ClientMethod<
          $12.ClaimOrganizationSpaceRequest,
          $12.ClaimOrganizationSpaceResponse>(
      '/elint.services.product.identity.OnboardOrganizationSpaceService/claim_organization_space',
      ($12.ClaimOrganizationSpaceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $12.ClaimOrganizationSpaceResponse.fromBuffer(value));

  OnboardOrganizationSpaceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$12.ClaimOrganizationSpaceResponse>
      claim_organization_space($12.ClaimOrganizationSpaceRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$claim_organization_space, request,
        options: options);
  }
}

abstract class OnboardOrganizationSpaceServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.OnboardOrganizationSpaceService';

  OnboardOrganizationSpaceServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.ClaimOrganizationSpaceRequest,
            $12.ClaimOrganizationSpaceResponse>(
        'claim_organization_space',
        claim_organization_space_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $12.ClaimOrganizationSpaceRequest.fromBuffer(value),
        ($12.ClaimOrganizationSpaceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.ClaimOrganizationSpaceResponse>
      claim_organization_space_Pre($grpc.ServiceCall call,
          $async.Future<$12.ClaimOrganizationSpaceRequest> request) async {
    return claim_organization_space(call, await request);
  }

  $async.Future<$12.ClaimOrganizationSpaceResponse> claim_organization_space(
      $grpc.ServiceCall call, $12.ClaimOrganizationSpaceRequest request);
}
