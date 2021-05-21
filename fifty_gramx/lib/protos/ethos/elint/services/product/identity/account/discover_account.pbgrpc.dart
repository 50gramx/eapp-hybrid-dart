///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/discover_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'discover_account.pb.dart' as $5;
import 'access_account.pb.dart' as $0;
import '../../../../entities/account_assistant.pb.dart' as $6;
import '../../../../entities/generic.pb.dart' as $2;
export 'discover_account.pb.dart';

class DiscoverAccountServiceClient extends $grpc.Client {
  static final _$getAccountById = $grpc.ClientMethod<$5.GetAccountByIdRequest,
          $5.GetAccountByIdResponse>(
      '/elint.services.product.identity.account.DiscoverAccountService/GetAccountById',
      ($5.GetAccountByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.GetAccountByIdResponse.fromBuffer(value));
  static final _$getAccountProfilePicture = $grpc.ClientMethod<
          $5.GetAccountProfilePictureRequest,
          $5.GetAccountProfilePictureResponse>(
      '/elint.services.product.identity.account.DiscoverAccountService/GetAccountProfilePicture',
      ($5.GetAccountProfilePictureRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.GetAccountProfilePictureResponse.fromBuffer(value));
  static final _$getAccountAssistant = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $6.AccountAssistant>(
      '/elint.services.product.identity.account.DiscoverAccountService/GetAccountAssistant',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AccountAssistant.fromBuffer(value));
  static final _$isAccountExistsWithMobile = $grpc.ClientMethod<
          $5.IsAccountExistsWithMobileRequest, $2.ResponseMeta>(
      '/elint.services.product.identity.account.DiscoverAccountService/IsAccountExistsWithMobile',
      ($5.IsAccountExistsWithMobileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$areAccountsExistingWithMobile = $grpc.ClientMethod<
          $5.AreAccountsExistingWithMobileRequest,
          $5.AreAccountsExistingWithMobileResponse>(
      '/elint.services.product.identity.account.DiscoverAccountService/AreAccountsExistingWithMobile',
      ($5.AreAccountsExistingWithMobileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $5.AreAccountsExistingWithMobileResponse.fromBuffer(value));

  DiscoverAccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.GetAccountByIdResponse> getAccountById(
      $5.GetAccountByIdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountById, request, options: options);
  }

  $grpc.ResponseStream<$5.GetAccountProfilePictureResponse>
      getAccountProfilePicture($5.GetAccountProfilePictureRequest request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getAccountProfilePicture, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$6.AccountAssistant> getAccountAssistant(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistant, request, options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> isAccountExistsWithMobile(
      $5.IsAccountExistsWithMobileRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isAccountExistsWithMobile, request,
        options: options);
  }

  $grpc.ResponseStream<$5.AreAccountsExistingWithMobileResponse>
      areAccountsExistingWithMobile(
          $5.AreAccountsExistingWithMobileRequest request,
          {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$areAccountsExistingWithMobile, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class DiscoverAccountServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.DiscoverAccountService';

  DiscoverAccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.GetAccountByIdRequest,
            $5.GetAccountByIdResponse>(
        'GetAccountById',
        getAccountById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.GetAccountByIdRequest.fromBuffer(value),
        ($5.GetAccountByIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetAccountProfilePictureRequest,
            $5.GetAccountProfilePictureResponse>(
        'GetAccountProfilePicture',
        getAccountProfilePicture_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $5.GetAccountProfilePictureRequest.fromBuffer(value),
        ($5.GetAccountProfilePictureResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $6.AccountAssistant>(
        'GetAccountAssistant',
        getAccountAssistant_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($6.AccountAssistant value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.IsAccountExistsWithMobileRequest,
            $2.ResponseMeta>(
        'IsAccountExistsWithMobile',
        isAccountExistsWithMobile_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.IsAccountExistsWithMobileRequest.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.AreAccountsExistingWithMobileRequest,
            $5.AreAccountsExistingWithMobileResponse>(
        'AreAccountsExistingWithMobile',
        areAccountsExistingWithMobile_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $5.AreAccountsExistingWithMobileRequest.fromBuffer(value),
        ($5.AreAccountsExistingWithMobileResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$5.GetAccountByIdResponse> getAccountById_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.GetAccountByIdRequest> request) async {
    return getAccountById(call, await request);
  }

  $async.Stream<$5.GetAccountProfilePictureResponse>
      getAccountProfilePicture_Pre($grpc.ServiceCall call,
          $async.Future<$5.GetAccountProfilePictureRequest> request) async* {
    yield* getAccountProfilePicture(call, await request);
  }

  $async.Future<$6.AccountAssistant> getAccountAssistant_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountAssistant(call, await request);
  }

  $async.Future<$2.ResponseMeta> isAccountExistsWithMobile_Pre(
      $grpc.ServiceCall call,
      $async.Future<$5.IsAccountExistsWithMobileRequest> request) async {
    return isAccountExistsWithMobile(call, await request);
  }

  $async.Stream<$5.AreAccountsExistingWithMobileResponse>
      areAccountsExistingWithMobile_Pre(
          $grpc.ServiceCall call,
          $async.Future<$5.AreAccountsExistingWithMobileRequest>
              request) async* {
    yield* areAccountsExistingWithMobile(call, await request);
  }

  $async.Future<$5.GetAccountByIdResponse> getAccountById(
      $grpc.ServiceCall call, $5.GetAccountByIdRequest request);
  $async.Stream<$5.GetAccountProfilePictureResponse> getAccountProfilePicture(
      $grpc.ServiceCall call, $5.GetAccountProfilePictureRequest request);
  $async.Future<$6.AccountAssistant> getAccountAssistant(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta> isAccountExistsWithMobile(
      $grpc.ServiceCall call, $5.IsAccountExistsWithMobileRequest request);
  $async.Stream<$5.AreAccountsExistingWithMobileResponse>
      areAccountsExistingWithMobile($grpc.ServiceCall call,
          $5.AreAccountsExistingWithMobileRequest request);
}
