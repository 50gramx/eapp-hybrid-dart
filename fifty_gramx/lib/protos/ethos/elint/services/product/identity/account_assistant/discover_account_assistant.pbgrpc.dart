///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/discover_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../../../entities/account.pb.dart' as $19;
import '../../../../entities/account_assistant.pb.dart' as $6;
import 'discover_account_assistant.pb.dart' as $20;
export 'discover_account_assistant.pb.dart';

class DiscoverAccountAssistantServiceClient extends $grpc.Client {
  static final _$getAccountAssistantByAccount = $grpc.ClientMethod<$19.Account,
          $6.AccountAssistant>(
      '/elint.services.product.identity.account.assistant.DiscoverAccountAssistantService/GetAccountAssistantByAccount',
      ($19.Account value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AccountAssistant.fromBuffer(value));
  static final _$getAccountAssistantMetaByAccountId = $grpc.ClientMethod<
          $20.GetAccountAssistantMetaByAccountIdRequest,
          $20.GetAccountAssistantMetaByAccountIdResponse>(
      '/elint.services.product.identity.account.assistant.DiscoverAccountAssistantService/GetAccountAssistantMetaByAccountId',
      ($20.GetAccountAssistantMetaByAccountIdRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $20.GetAccountAssistantMetaByAccountIdResponse.fromBuffer(value));
  static final _$getAccountAssistantMetaByAccountAssistantId = $grpc.ClientMethod<
          $20.GetAccountAssistantMetaByAccountAssistantIdRequest,
          $20.GetAccountAssistantMetaByAccountAssistantIdResponse>(
      '/elint.services.product.identity.account.assistant.DiscoverAccountAssistantService/GetAccountAssistantMetaByAccountAssistantId',
      ($20.GetAccountAssistantMetaByAccountAssistantIdRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $20.GetAccountAssistantMetaByAccountAssistantIdResponse.fromBuffer(
              value));
  static final _$getAccountAssistantById = $grpc.ClientMethod<
          $20.GetAccountAssistantByIdRequest,
          $20.GetAccountAssistantByIdResponse>(
      '/elint.services.product.identity.account.assistant.DiscoverAccountAssistantService/GetAccountAssistantById',
      ($20.GetAccountAssistantByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $20.GetAccountAssistantByIdResponse.fromBuffer(value));
  static final _$getAccountAssistantNameCodeById = $grpc.ClientMethod<
          $20.GetAccountAssistantNameCodeByIdRequest,
          $20.GetAccountAssistantNameCodeByIdResponse>(
      '/elint.services.product.identity.account.assistant.DiscoverAccountAssistantService/GetAccountAssistantNameCodeById',
      ($20.GetAccountAssistantNameCodeByIdRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $20.GetAccountAssistantNameCodeByIdResponse.fromBuffer(value));

  DiscoverAccountAssistantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.AccountAssistant> getAccountAssistantByAccount(
      $19.Account request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantByAccount, request,
        options: options);
  }

  $grpc.ResponseFuture<$20.GetAccountAssistantMetaByAccountIdResponse>
      getAccountAssistantMetaByAccountId(
          $20.GetAccountAssistantMetaByAccountIdRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantMetaByAccountId, request,
        options: options);
  }

  $grpc.ResponseFuture<$20.GetAccountAssistantMetaByAccountAssistantIdResponse>
      getAccountAssistantMetaByAccountAssistantId(
          $20.GetAccountAssistantMetaByAccountAssistantIdRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$getAccountAssistantMetaByAccountAssistantId, request,
        options: options);
  }

  $grpc.ResponseFuture<$20.GetAccountAssistantByIdResponse>
      getAccountAssistantById($20.GetAccountAssistantByIdRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantById, request,
        options: options);
  }

  $grpc.ResponseFuture<$20.GetAccountAssistantNameCodeByIdResponse>
      getAccountAssistantNameCodeById(
          $20.GetAccountAssistantNameCodeByIdRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantNameCodeById, request,
        options: options);
  }
}

abstract class DiscoverAccountAssistantServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.assistant.DiscoverAccountAssistantService';

  DiscoverAccountAssistantServiceBase() {
    $addMethod($grpc.ServiceMethod<$19.Account, $6.AccountAssistant>(
        'GetAccountAssistantByAccount',
        getAccountAssistantByAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $19.Account.fromBuffer(value),
        ($6.AccountAssistant value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $20.GetAccountAssistantMetaByAccountIdRequest,
            $20.GetAccountAssistantMetaByAccountIdResponse>(
        'GetAccountAssistantMetaByAccountId',
        getAccountAssistantMetaByAccountId_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $20.GetAccountAssistantMetaByAccountIdRequest.fromBuffer(value),
        ($20.GetAccountAssistantMetaByAccountIdResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $20.GetAccountAssistantMetaByAccountAssistantIdRequest,
            $20.GetAccountAssistantMetaByAccountAssistantIdResponse>(
        'GetAccountAssistantMetaByAccountAssistantId',
        getAccountAssistantMetaByAccountAssistantId_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $20.GetAccountAssistantMetaByAccountAssistantIdRequest.fromBuffer(
                value),
        ($20.GetAccountAssistantMetaByAccountAssistantIdResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.GetAccountAssistantByIdRequest,
            $20.GetAccountAssistantByIdResponse>(
        'GetAccountAssistantById',
        getAccountAssistantById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $20.GetAccountAssistantByIdRequest.fromBuffer(value),
        ($20.GetAccountAssistantByIdResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.GetAccountAssistantNameCodeByIdRequest,
            $20.GetAccountAssistantNameCodeByIdResponse>(
        'GetAccountAssistantNameCodeById',
        getAccountAssistantNameCodeById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $20.GetAccountAssistantNameCodeByIdRequest.fromBuffer(value),
        ($20.GetAccountAssistantNameCodeByIdResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$6.AccountAssistant> getAccountAssistantByAccount_Pre(
      $grpc.ServiceCall call, $async.Future<$19.Account> request) async {
    return getAccountAssistantByAccount(call, await request);
  }

  $async.Future<$20.GetAccountAssistantMetaByAccountIdResponse>
      getAccountAssistantMetaByAccountId_Pre(
          $grpc.ServiceCall call,
          $async.Future<$20.GetAccountAssistantMetaByAccountIdRequest>
              request) async {
    return getAccountAssistantMetaByAccountId(call, await request);
  }

  $async.Future<$20.GetAccountAssistantMetaByAccountAssistantIdResponse>
      getAccountAssistantMetaByAccountAssistantId_Pre(
          $grpc.ServiceCall call,
          $async.Future<$20.GetAccountAssistantMetaByAccountAssistantIdRequest>
              request) async {
    return getAccountAssistantMetaByAccountAssistantId(call, await request);
  }

  $async.Future<$20.GetAccountAssistantByIdResponse>
      getAccountAssistantById_Pre($grpc.ServiceCall call,
          $async.Future<$20.GetAccountAssistantByIdRequest> request) async {
    return getAccountAssistantById(call, await request);
  }

  $async.Future<$20.GetAccountAssistantNameCodeByIdResponse>
      getAccountAssistantNameCodeById_Pre(
          $grpc.ServiceCall call,
          $async.Future<$20.GetAccountAssistantNameCodeByIdRequest>
              request) async {
    return getAccountAssistantNameCodeById(call, await request);
  }

  $async.Future<$6.AccountAssistant> getAccountAssistantByAccount(
      $grpc.ServiceCall call, $19.Account request);
  $async.Future<$20.GetAccountAssistantMetaByAccountIdResponse>
      getAccountAssistantMetaByAccountId($grpc.ServiceCall call,
          $20.GetAccountAssistantMetaByAccountIdRequest request);
  $async.Future<$20.GetAccountAssistantMetaByAccountAssistantIdResponse>
      getAccountAssistantMetaByAccountAssistantId($grpc.ServiceCall call,
          $20.GetAccountAssistantMetaByAccountAssistantIdRequest request);
  $async.Future<$20.GetAccountAssistantByIdResponse> getAccountAssistantById(
      $grpc.ServiceCall call, $20.GetAccountAssistantByIdRequest request);
  $async.Future<$20.GetAccountAssistantNameCodeByIdResponse>
      getAccountAssistantNameCodeById($grpc.ServiceCall call,
          $20.GetAccountAssistantNameCodeByIdRequest request);
}
