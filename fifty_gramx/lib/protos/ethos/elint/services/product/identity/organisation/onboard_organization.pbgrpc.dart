///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/organisation/onboard_organization.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../../../entities/organization.pb.dart' as $14;
export 'onboard_organization.pb.dart';

class OnboardOrganizationServiceClient extends $grpc.Client {
  static final _$reserve_organization_space = $grpc.ClientMethod<
          $14.ReserveOrganizationRequest, $14.ReserveOrganizationResponse>(
      '/elint.services.product.identity.OnboardOrganizationService/reserve_organization_space',
      ($14.ReserveOrganizationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $14.ReserveOrganizationResponse.fromBuffer(value));

  OnboardOrganizationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$14.ReserveOrganizationResponse>
      reserve_organization_space($14.ReserveOrganizationRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reserve_organization_space, request,
        options: options);
  }
}

abstract class OnboardOrganizationServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.OnboardOrganizationService';

  OnboardOrganizationServiceBase() {
    $addMethod($grpc.ServiceMethod<$14.ReserveOrganizationRequest,
            $14.ReserveOrganizationResponse>(
        'reserve_organization_space',
        reserve_organization_space_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $14.ReserveOrganizationRequest.fromBuffer(value),
        ($14.ReserveOrganizationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$14.ReserveOrganizationResponse> reserve_organization_space_Pre(
      $grpc.ServiceCall call,
      $async.Future<$14.ReserveOrganizationRequest> request) async {
    return reserve_organization_space(call, await request);
  }

  $async.Future<$14.ReserveOrganizationResponse> reserve_organization_space(
      $grpc.ServiceCall call, $14.ReserveOrganizationRequest request);
}
