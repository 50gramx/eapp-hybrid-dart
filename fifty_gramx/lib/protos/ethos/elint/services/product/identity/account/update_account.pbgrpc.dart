///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/update_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'update_account.pb.dart' as $9;
export 'update_account.pb.dart';

class UpdateAccountServiceClient extends $grpc.Client {
  static final _$updateAccountProfilePicture = $grpc.ClientMethod<
          $9.UpdateAccountProfilePictureRequest,
          $9.UpdateAccountProfilePictureResponse>(
      '/elint.services.product.identity.account.UpdateAccountService/UpdateAccountProfilePicture',
      ($9.UpdateAccountProfilePictureRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $9.UpdateAccountProfilePictureResponse.fromBuffer(value));

  UpdateAccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$9.UpdateAccountProfilePictureResponse>
      updateAccountProfilePicture($9.UpdateAccountProfilePictureRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAccountProfilePicture, request,
        options: options);
  }
}

abstract class UpdateAccountServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.UpdateAccountService';

  UpdateAccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.UpdateAccountProfilePictureRequest,
            $9.UpdateAccountProfilePictureResponse>(
        'UpdateAccountProfilePicture',
        updateAccountProfilePicture_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $9.UpdateAccountProfilePictureRequest.fromBuffer(value),
        ($9.UpdateAccountProfilePictureResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$9.UpdateAccountProfilePictureResponse>
      updateAccountProfilePicture_Pre($grpc.ServiceCall call,
          $async.Future<$9.UpdateAccountProfilePictureRequest> request) async {
    return updateAccountProfilePicture(call, await request);
  }

  $async.Future<$9.UpdateAccountProfilePictureResponse>
      updateAccountProfilePicture($grpc.ServiceCall call,
          $9.UpdateAccountProfilePictureRequest request);
}
