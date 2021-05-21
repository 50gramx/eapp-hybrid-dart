///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/discover_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../../../entities/account.pb.dart' as $21;
import '../../../../entities/account_assistant.pb.dart' as $6;
import 'discover_account_assistant.pb.dart' as $22;
export 'discover_account_assistant.pb.dart';

class DiscoverAccountAssistantServiceClient extends $grpc.Client {
  static final _$getAccountAssistantByAccount = $grpc.ClientMethod<$21.Account,
          $6.AccountAssistant>(
      '/elint.services.product.identity.account.assistant.DiscoverAccountAssistantService/GetAccountAssistantByAccount',
      ($21.Account value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AccountAssistant.fromBuffer(value));
  static final _$getAccountAssistantMetaByAccountId = $grpc.ClientMethod<
          $22.GetAccountAssistantMetaByAccountIdRequest,
          $22.GetAccountAssistantMetaByAccountIdResponse>(
      '/elint.services.product.identity.account.assistant.DiscoverAccountAssistantService/GetAccountAssistantMetaByAccountId',
      ($22.GetAccountAssistantMetaByAccountIdRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $22.GetAccountAssistantMetaByAccountIdResponse.fromBuffer(value));
  static final _$getAccountAssistantMetaByAccountAssistantId = $grpc.ClientMethod<
          $22.GetAccountAssistantMetaByAccountAssistantIdRequest,
          $22.GetAccountAssistantMetaByAccountAssistantIdResponse>(
      '/elint.services.product.identity.account.assistant.DiscoverAccountAssistantService/GetAccountAssistantMetaByAccountAssistantId',
      ($22.GetAccountAssistantMetaByAccountAssistantIdRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $22.GetAccountAssistantMetaByAccountAssistantIdResponse.fromBuffer(
              value));

  DiscoverAccountAssistantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.AccountAssistant> getAccountAssistantByAccount(
      $21.Account request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantByAccount, request,
        options: options);
  }

  $grpc.ResponseFuture<$22.GetAccountAssistantMetaByAccountIdResponse>
      getAccountAssistantMetaByAccountId(
          $22.GetAccountAssistantMetaByAccountIdRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantMetaByAccountId, request,
        options: options);
  }

  $grpc.ResponseFuture<$22.GetAccountAssistantMetaByAccountAssistantIdResponse>
      getAccountAssistantMetaByAccountAssistantId(
          $22.GetAccountAssistantMetaByAccountAssistantIdRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$getAccountAssistantMetaByAccountAssistantId, request,
        options: options);
  }
}

abstract class DiscoverAccountAssistantServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.assistant.DiscoverAccountAssistantService';

  DiscoverAccountAssistantServiceBase() {
    $addMethod($grpc.ServiceMethod<$21.Account, $6.AccountAssistant>(
        'GetAccountAssistantByAccount',
        getAccountAssistantByAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $21.Account.fromBuffer(value),
        ($6.AccountAssistant value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $22.GetAccountAssistantMetaByAccountIdRequest,
            $22.GetAccountAssistantMetaByAccountIdResponse>(
        'GetAccountAssistantMetaByAccountId',
        getAccountAssistantMetaByAccountId_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $22.GetAccountAssistantMetaByAccountIdRequest.fromBuffer(value),
        ($22.GetAccountAssistantMetaByAccountIdResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $22.GetAccountAssistantMetaByAccountAssistantIdRequest,
            $22.GetAccountAssistantMetaByAccountAssistantIdResponse>(
        'GetAccountAssistantMetaByAccountAssistantId',
        getAccountAssistantMetaByAccountAssistantId_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $22.GetAccountAssistantMetaByAccountAssistantIdRequest.fromBuffer(
                value),
        ($22.GetAccountAssistantMetaByAccountAssistantIdResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$6.AccountAssistant> getAccountAssistantByAccount_Pre(
      $grpc.ServiceCall call, $async.Future<$21.Account> request) async {
    return getAccountAssistantByAccount(call, await request);
  }

  $async.Future<$22.GetAccountAssistantMetaByAccountIdResponse>
      getAccountAssistantMetaByAccountId_Pre(
          $grpc.ServiceCall call,
          $async.Future<$22.GetAccountAssistantMetaByAccountIdRequest>
              request) async {
    return getAccountAssistantMetaByAccountId(call, await request);
  }

  $async.Future<$22.GetAccountAssistantMetaByAccountAssistantIdResponse>
      getAccountAssistantMetaByAccountAssistantId_Pre(
          $grpc.ServiceCall call,
          $async.Future<$22.GetAccountAssistantMetaByAccountAssistantIdRequest>
              request) async {
    return getAccountAssistantMetaByAccountAssistantId(call, await request);
  }

  $async.Future<$6.AccountAssistant> getAccountAssistantByAccount(
      $grpc.ServiceCall call, $21.Account request);
  $async.Future<$22.GetAccountAssistantMetaByAccountIdResponse>
      getAccountAssistantMetaByAccountId($grpc.ServiceCall call,
          $22.GetAccountAssistantMetaByAccountIdRequest request);
  $async.Future<$22.GetAccountAssistantMetaByAccountAssistantIdResponse>
      getAccountAssistantMetaByAccountAssistantId($grpc.ServiceCall call,
          $22.GetAccountAssistantMetaByAccountAssistantIdRequest request);
}
