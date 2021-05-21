///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/space/create_space.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'create_space.pb.dart' as $15;
export 'create_space.pb.dart';

class CreateSpaceServiceClient extends $grpc.Client {
  static final _$createAccountSpace = $grpc.ClientMethod<
          $15.CreateAccountSpaceRequest, $15.CreateAccountSpaceResponse>(
      '/elint.services.product.identity.space.CreateSpaceService/CreateAccountSpace',
      ($15.CreateAccountSpaceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $15.CreateAccountSpaceResponse.fromBuffer(value));

  CreateSpaceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$15.CreateAccountSpaceResponse> createAccountSpace(
      $15.CreateAccountSpaceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAccountSpace, request, options: options);
  }
}

abstract class CreateSpaceServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.space.CreateSpaceService';

  CreateSpaceServiceBase() {
    $addMethod($grpc.ServiceMethod<$15.CreateAccountSpaceRequest,
            $15.CreateAccountSpaceResponse>(
        'CreateAccountSpace',
        createAccountSpace_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $15.CreateAccountSpaceRequest.fromBuffer(value),
        ($15.CreateAccountSpaceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$15.CreateAccountSpaceResponse> createAccountSpace_Pre(
      $grpc.ServiceCall call,
      $async.Future<$15.CreateAccountSpaceRequest> request) async {
    return createAccountSpace(call, await request);
  }

  $async.Future<$15.CreateAccountSpaceResponse> createAccountSpace(
      $grpc.ServiceCall call, $15.CreateAccountSpaceRequest request);
}
