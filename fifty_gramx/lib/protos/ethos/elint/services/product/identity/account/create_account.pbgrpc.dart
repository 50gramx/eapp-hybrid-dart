///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/create_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'create_account.pb.dart' as $3;
export 'create_account.pb.dart';

class CreateAccountServiceClient extends $grpc.Client {
  static final _$validateAccountWithMobile = $grpc.ClientMethod<
          $3.ValidateAccountWithMobileRequest,
          $3.ValidateAccountWithMobileResponse>(
      '/elint.services.product.identity.account.CreateAccountService/ValidateAccountWithMobile',
      ($3.ValidateAccountWithMobileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.ValidateAccountWithMobileResponse.fromBuffer(value));
  static final _$verificationAccount = $grpc.ClientMethod<
          $3.VerificationAccountRequest, $3.VerificationAccountResponse>(
      '/elint.services.product.identity.account.CreateAccountService/VerificationAccount',
      ($3.VerificationAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.VerificationAccountResponse.fromBuffer(value));
  static final _$captureAccountMetaDetails = $grpc.ClientMethod<
          $3.CaptureAccountMetaDetailsRequest,
          $3.CaptureAccountMetaDetailsResponse>(
      '/elint.services.product.identity.account.CreateAccountService/CaptureAccountMetaDetails',
      ($3.CaptureAccountMetaDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.CaptureAccountMetaDetailsResponse.fromBuffer(value));

  CreateAccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.ValidateAccountWithMobileResponse>
      validateAccountWithMobile($3.ValidateAccountWithMobileRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateAccountWithMobile, request,
        options: options);
  }

  $grpc.ResponseFuture<$3.VerificationAccountResponse> verificationAccount(
      $3.VerificationAccountRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verificationAccount, request, options: options);
  }

  $grpc.ResponseFuture<$3.CaptureAccountMetaDetailsResponse>
      captureAccountMetaDetails($3.CaptureAccountMetaDetailsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$captureAccountMetaDetails, request,
        options: options);
  }
}

abstract class CreateAccountServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.CreateAccountService';

  CreateAccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.ValidateAccountWithMobileRequest,
            $3.ValidateAccountWithMobileResponse>(
        'ValidateAccountWithMobile',
        validateAccountWithMobile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.ValidateAccountWithMobileRequest.fromBuffer(value),
        ($3.ValidateAccountWithMobileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.VerificationAccountRequest,
            $3.VerificationAccountResponse>(
        'VerificationAccount',
        verificationAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.VerificationAccountRequest.fromBuffer(value),
        ($3.VerificationAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CaptureAccountMetaDetailsRequest,
            $3.CaptureAccountMetaDetailsResponse>(
        'CaptureAccountMetaDetails',
        captureAccountMetaDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.CaptureAccountMetaDetailsRequest.fromBuffer(value),
        ($3.CaptureAccountMetaDetailsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.ValidateAccountWithMobileResponse>
      validateAccountWithMobile_Pre($grpc.ServiceCall call,
          $async.Future<$3.ValidateAccountWithMobileRequest> request) async {
    return validateAccountWithMobile(call, await request);
  }

  $async.Future<$3.VerificationAccountResponse> verificationAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.VerificationAccountRequest> request) async {
    return verificationAccount(call, await request);
  }

  $async.Future<$3.CaptureAccountMetaDetailsResponse>
      captureAccountMetaDetails_Pre($grpc.ServiceCall call,
          $async.Future<$3.CaptureAccountMetaDetailsRequest> request) async {
    return captureAccountMetaDetails(call, await request);
  }

  $async.Future<$3.ValidateAccountWithMobileResponse> validateAccountWithMobile(
      $grpc.ServiceCall call, $3.ValidateAccountWithMobileRequest request);
  $async.Future<$3.VerificationAccountResponse> verificationAccount(
      $grpc.ServiceCall call, $3.VerificationAccountRequest request);
  $async.Future<$3.CaptureAccountMetaDetailsResponse> captureAccountMetaDetails(
      $grpc.ServiceCall call, $3.CaptureAccountMetaDetailsRequest request);
}
