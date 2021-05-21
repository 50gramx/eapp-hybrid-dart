///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/delete_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'delete_account.pb.dart' as $4;
export 'delete_account.pb.dart';

class DeleteAccountServiceClient extends $grpc.Client {
  static final _$deleteAccount = $grpc.ClientMethod<$4.DeleteAccountRequest,
          $4.DeleteAccountResponse>(
      '/elint.services.product.identity.account.DeleteAccountService/DeleteAccount',
      ($4.DeleteAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.DeleteAccountResponse.fromBuffer(value));

  DeleteAccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.DeleteAccountResponse> deleteAccount(
      $4.DeleteAccountRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAccount, request, options: options);
  }
}

abstract class DeleteAccountServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.DeleteAccountService';

  DeleteAccountServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$4.DeleteAccountRequest, $4.DeleteAccountResponse>(
            'DeleteAccount',
            deleteAccount_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.DeleteAccountRequest.fromBuffer(value),
            ($4.DeleteAccountResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.DeleteAccountResponse> deleteAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.DeleteAccountRequest> request) async {
    return deleteAccount(call, await request);
  }

  $async.Future<$4.DeleteAccountResponse> deleteAccount(
      $grpc.ServiceCall call, $4.DeleteAccountRequest request);
}
