///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/access_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_account.pb.dart' as $0;
export 'access_account.pb.dart';

class AccessAccountServiceClient extends $grpc.Client {
  static final _$validateAccount = $grpc.ClientMethod<$0.ValidateAccountRequest,
          $0.ValidateAccountResponse>(
      '/elint.services.product.identity.account.AccessAccountService/ValidateAccount',
      ($0.ValidateAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ValidateAccountResponse.fromBuffer(value));
  static final _$verifyAccount = $grpc.ClientMethod<$0.VerifyAccountRequest,
          $0.VerifyAccountResponse>(
      '/elint.services.product.identity.account.AccessAccountService/VerifyAccount',
      ($0.VerifyAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.VerifyAccountResponse.fromBuffer(value));
  static final _$validateAccountServices = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $0.ValidateAccountServicesResponse>(
      '/elint.services.product.identity.account.AccessAccountService/ValidateAccountServices',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ValidateAccountServicesResponse.fromBuffer(value));
  static final _$reAccountAccessToken = $grpc.ClientMethod<
          $0.ReAccountAccessTokenRequest, $0.ReAccountAccessTokenResponse>(
      '/elint.services.product.identity.account.AccessAccountService/ReAccountAccessToken',
      ($0.ReAccountAccessTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ReAccountAccessTokenResponse.fromBuffer(value));

  AccessAccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ValidateAccountResponse> validateAccount(
      $0.ValidateAccountRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateAccount, request, options: options);
  }

  $grpc.ResponseFuture<$0.VerifyAccountResponse> verifyAccount(
      $0.VerifyAccountRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyAccount, request, options: options);
  }

  $grpc.ResponseFuture<$0.ValidateAccountServicesResponse>
      validateAccountServices($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateAccountServices, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.ReAccountAccessTokenResponse> reAccountAccessToken(
      $0.ReAccountAccessTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reAccountAccessToken, request, options: options);
  }
}

abstract class AccessAccountServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.AccessAccountService';

  AccessAccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ValidateAccountRequest,
            $0.ValidateAccountResponse>(
        'ValidateAccount',
        validateAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ValidateAccountRequest.fromBuffer(value),
        ($0.ValidateAccountResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.VerifyAccountRequest, $0.VerifyAccountResponse>(
            'VerifyAccount',
            verifyAccount_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.VerifyAccountRequest.fromBuffer(value),
            ($0.VerifyAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $0.ValidateAccountServicesResponse>(
        'ValidateAccountServices',
        validateAccountServices_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($0.ValidateAccountServicesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReAccountAccessTokenRequest,
            $0.ReAccountAccessTokenResponse>(
        'ReAccountAccessToken',
        reAccountAccessToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ReAccountAccessTokenRequest.fromBuffer(value),
        ($0.ReAccountAccessTokenResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ValidateAccountResponse> validateAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ValidateAccountRequest> request) async {
    return validateAccount(call, await request);
  }

  $async.Future<$0.VerifyAccountResponse> verifyAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.VerifyAccountRequest> request) async {
    return verifyAccount(call, await request);
  }

  $async.Future<$0.ValidateAccountServicesResponse> validateAccountServices_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return validateAccountServices(call, await request);
  }

  $async.Future<$0.ReAccountAccessTokenResponse> reAccountAccessToken_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ReAccountAccessTokenRequest> request) async {
    return reAccountAccessToken(call, await request);
  }

  $async.Future<$0.ValidateAccountResponse> validateAccount(
      $grpc.ServiceCall call, $0.ValidateAccountRequest request);
  $async.Future<$0.VerifyAccountResponse> verifyAccount(
      $grpc.ServiceCall call, $0.VerifyAccountRequest request);
  $async.Future<$0.ValidateAccountServicesResponse> validateAccountServices(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$0.ReAccountAccessTokenResponse> reAccountAccessToken(
      $grpc.ServiceCall call, $0.ReAccountAccessTokenRequest request);
}
