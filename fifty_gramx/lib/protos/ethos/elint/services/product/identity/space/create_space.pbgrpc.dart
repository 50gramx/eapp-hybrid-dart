/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/space/create_space.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'create_space.pb.dart' as $13;
export 'create_space.pb.dart';

class CreateSpaceServiceClient extends $grpc.Client {
  static final _$createAccountSpace = $grpc.ClientMethod<
          $13.CreateAccountSpaceRequest, $13.CreateAccountSpaceResponse>(
      '/elint.services.product.identity.space.CreateSpaceService/CreateAccountSpace',
      ($13.CreateAccountSpaceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $13.CreateAccountSpaceResponse.fromBuffer(value));

  CreateSpaceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$13.CreateAccountSpaceResponse> createAccountSpace(
      $13.CreateAccountSpaceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAccountSpace, request, options: options);
  }
}

abstract class CreateSpaceServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.space.CreateSpaceService';

  CreateSpaceServiceBase() {
    $addMethod($grpc.ServiceMethod<$13.CreateAccountSpaceRequest,
            $13.CreateAccountSpaceResponse>(
        'CreateAccountSpace',
        createAccountSpace_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $13.CreateAccountSpaceRequest.fromBuffer(value),
        ($13.CreateAccountSpaceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$13.CreateAccountSpaceResponse> createAccountSpace_Pre(
      $grpc.ServiceCall call,
      $async.Future<$13.CreateAccountSpaceRequest> request) async {
    return createAccountSpace(call, await request);
  }

  $async.Future<$13.CreateAccountSpaceResponse> createAccountSpace(
      $grpc.ServiceCall call, $13.CreateAccountSpaceRequest request);
}
