///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/space/delete_space.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'delete_space.pb.dart' as $17;
export 'delete_space.pb.dart';

class DeleteSpaceServiceClient extends $grpc.Client {
  static final _$deleteSpace = $grpc.ClientMethod<$17.DeleteSpaceRequest,
          $17.DeleteSpaceResponse>(
      '/elint.services.product.identity.space.DeleteSpaceService/DeleteSpace',
      ($17.DeleteSpaceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $17.DeleteSpaceResponse.fromBuffer(value));

  DeleteSpaceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$17.DeleteSpaceResponse> deleteSpace(
      $17.DeleteSpaceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSpace, request, options: options);
  }
}

abstract class DeleteSpaceServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.space.DeleteSpaceService';

  DeleteSpaceServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$17.DeleteSpaceRequest, $17.DeleteSpaceResponse>(
            'DeleteSpace',
            deleteSpace_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $17.DeleteSpaceRequest.fromBuffer(value),
            ($17.DeleteSpaceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$17.DeleteSpaceResponse> deleteSpace_Pre($grpc.ServiceCall call,
      $async.Future<$17.DeleteSpaceRequest> request) async {
    return deleteSpace(call, await request);
  }

  $async.Future<$17.DeleteSpaceResponse> deleteSpace(
      $grpc.ServiceCall call, $17.DeleteSpaceRequest request);
}
