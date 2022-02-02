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
//  source: ethos/elint/services/product/identity/account_assistant/discover_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import '../../../../entities/account.pb.dart' as $22;
import '../../../../entities/account_assistant.pb.dart' as $6;
import 'discover_account_assistant.pb.dart' as $23;
export 'discover_account_assistant.pb.dart';

class DiscoverAccountAssistantServiceClient extends $grpc.Client {
  static final _$getAccountAssistantByAccount = $grpc.ClientMethod<$22.Account,
          $6.AccountAssistant>(
      '/elint.services.product.identity.account.assistant.DiscoverAccountAssistantService/GetAccountAssistantByAccount',
      ($22.Account value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.AccountAssistant.fromBuffer(value));
  static final _$getAccountAssistantMetaByAccountId = $grpc.ClientMethod<
          $23.GetAccountAssistantMetaByAccountIdRequest,
          $23.GetAccountAssistantMetaByAccountIdResponse>(
      '/elint.services.product.identity.account.assistant.DiscoverAccountAssistantService/GetAccountAssistantMetaByAccountId',
      ($23.GetAccountAssistantMetaByAccountIdRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $23.GetAccountAssistantMetaByAccountIdResponse.fromBuffer(value));
  static final _$getAccountAssistantMetaByAccountAssistantId = $grpc.ClientMethod<
          $23.GetAccountAssistantMetaByAccountAssistantIdRequest,
          $23.GetAccountAssistantMetaByAccountAssistantIdResponse>(
      '/elint.services.product.identity.account.assistant.DiscoverAccountAssistantService/GetAccountAssistantMetaByAccountAssistantId',
      ($23.GetAccountAssistantMetaByAccountAssistantIdRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $23.GetAccountAssistantMetaByAccountAssistantIdResponse.fromBuffer(
              value));
  static final _$getAccountAssistantById = $grpc.ClientMethod<
          $23.GetAccountAssistantByIdRequest,
          $23.GetAccountAssistantByIdResponse>(
      '/elint.services.product.identity.account.assistant.DiscoverAccountAssistantService/GetAccountAssistantById',
      ($23.GetAccountAssistantByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $23.GetAccountAssistantByIdResponse.fromBuffer(value));

  DiscoverAccountAssistantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.AccountAssistant> getAccountAssistantByAccount(
      $22.Account request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantByAccount, request,
        options: options);
  }

  $grpc.ResponseFuture<$23.GetAccountAssistantMetaByAccountIdResponse>
      getAccountAssistantMetaByAccountId(
          $23.GetAccountAssistantMetaByAccountIdRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantMetaByAccountId, request,
        options: options);
  }

  $grpc.ResponseFuture<$23.GetAccountAssistantMetaByAccountAssistantIdResponse>
      getAccountAssistantMetaByAccountAssistantId(
          $23.GetAccountAssistantMetaByAccountAssistantIdRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$getAccountAssistantMetaByAccountAssistantId, request,
        options: options);
  }

  $grpc.ResponseFuture<$23.GetAccountAssistantByIdResponse>
      getAccountAssistantById($23.GetAccountAssistantByIdRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantById, request,
        options: options);
  }
}

abstract class DiscoverAccountAssistantServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.assistant.DiscoverAccountAssistantService';

  DiscoverAccountAssistantServiceBase() {
    $addMethod($grpc.ServiceMethod<$22.Account, $6.AccountAssistant>(
        'GetAccountAssistantByAccount',
        getAccountAssistantByAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $22.Account.fromBuffer(value),
        ($6.AccountAssistant value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $23.GetAccountAssistantMetaByAccountIdRequest,
            $23.GetAccountAssistantMetaByAccountIdResponse>(
        'GetAccountAssistantMetaByAccountId',
        getAccountAssistantMetaByAccountId_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $23.GetAccountAssistantMetaByAccountIdRequest.fromBuffer(value),
        ($23.GetAccountAssistantMetaByAccountIdResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $23.GetAccountAssistantMetaByAccountAssistantIdRequest,
            $23.GetAccountAssistantMetaByAccountAssistantIdResponse>(
        'GetAccountAssistantMetaByAccountAssistantId',
        getAccountAssistantMetaByAccountAssistantId_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $23.GetAccountAssistantMetaByAccountAssistantIdRequest.fromBuffer(
                value),
        ($23.GetAccountAssistantMetaByAccountAssistantIdResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$23.GetAccountAssistantByIdRequest,
            $23.GetAccountAssistantByIdResponse>(
        'GetAccountAssistantById',
        getAccountAssistantById_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $23.GetAccountAssistantByIdRequest.fromBuffer(value),
        ($23.GetAccountAssistantByIdResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.AccountAssistant> getAccountAssistantByAccount_Pre(
      $grpc.ServiceCall call, $async.Future<$22.Account> request) async {
    return getAccountAssistantByAccount(call, await request);
  }

  $async.Future<$23.GetAccountAssistantMetaByAccountIdResponse>
      getAccountAssistantMetaByAccountId_Pre(
          $grpc.ServiceCall call,
          $async.Future<$23.GetAccountAssistantMetaByAccountIdRequest>
              request) async {
    return getAccountAssistantMetaByAccountId(call, await request);
  }

  $async.Future<$23.GetAccountAssistantMetaByAccountAssistantIdResponse>
      getAccountAssistantMetaByAccountAssistantId_Pre(
          $grpc.ServiceCall call,
          $async.Future<$23.GetAccountAssistantMetaByAccountAssistantIdRequest>
              request) async {
    return getAccountAssistantMetaByAccountAssistantId(call, await request);
  }

  $async.Future<$23.GetAccountAssistantByIdResponse>
      getAccountAssistantById_Pre($grpc.ServiceCall call,
          $async.Future<$23.GetAccountAssistantByIdRequest> request) async {
    return getAccountAssistantById(call, await request);
  }

  $async.Future<$6.AccountAssistant> getAccountAssistantByAccount(
      $grpc.ServiceCall call, $22.Account request);
  $async.Future<$23.GetAccountAssistantMetaByAccountIdResponse>
      getAccountAssistantMetaByAccountId($grpc.ServiceCall call,
          $23.GetAccountAssistantMetaByAccountIdRequest request);
  $async.Future<$23.GetAccountAssistantMetaByAccountAssistantIdResponse>
      getAccountAssistantMetaByAccountAssistantId($grpc.ServiceCall call,
          $23.GetAccountAssistantMetaByAccountAssistantIdRequest request);
  $async.Future<$23.GetAccountAssistantByIdResponse> getAccountAssistantById(
      $grpc.ServiceCall call, $23.GetAccountAssistantByIdRequest request);
}
