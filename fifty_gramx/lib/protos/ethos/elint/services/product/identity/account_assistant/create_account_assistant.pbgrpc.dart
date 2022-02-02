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
//  source: ethos/elint/services/product/identity/account_assistant/create_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'create_account_assistant.pb.dart' as $20;
export 'create_account_assistant.pb.dart';

class CreateAccountAssistantServiceClient extends $grpc.Client {
  static final _$createAccountAssistant = $grpc.ClientMethod<
          $20.CreateAccountAssistantRequest,
          $20.CreateAccountAssistantResponse>(
      '/elint.services.product.identity.account.assistant.CreateAccountAssistantService/CreateAccountAssistant',
      ($20.CreateAccountAssistantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $20.CreateAccountAssistantResponse.fromBuffer(value));
  static final _$getAccountAssistantNameCode = $grpc.ClientMethod<
          $20.GetAccountAssistantNameCodeRequest,
          $20.GetAccountAssistantNameCodeResponse>(
      '/elint.services.product.identity.account.assistant.CreateAccountAssistantService/GetAccountAssistantNameCode',
      ($20.GetAccountAssistantNameCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $20.GetAccountAssistantNameCodeResponse.fromBuffer(value));

  CreateAccountAssistantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$20.CreateAccountAssistantResponse>
      createAccountAssistant($20.CreateAccountAssistantRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAccountAssistant, request,
        options: options);
  }

  $grpc.ResponseFuture<$20.GetAccountAssistantNameCodeResponse>
      getAccountAssistantNameCode(
          $20.GetAccountAssistantNameCodeRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantNameCode, request,
        options: options);
  }
}

abstract class CreateAccountAssistantServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.assistant.CreateAccountAssistantService';

  CreateAccountAssistantServiceBase() {
    $addMethod($grpc.ServiceMethod<$20.CreateAccountAssistantRequest,
            $20.CreateAccountAssistantResponse>(
        'CreateAccountAssistant',
        createAccountAssistant_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $20.CreateAccountAssistantRequest.fromBuffer(value),
        ($20.CreateAccountAssistantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$20.GetAccountAssistantNameCodeRequest,
            $20.GetAccountAssistantNameCodeResponse>(
        'GetAccountAssistantNameCode',
        getAccountAssistantNameCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $20.GetAccountAssistantNameCodeRequest.fromBuffer(value),
        ($20.GetAccountAssistantNameCodeResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$20.CreateAccountAssistantResponse> createAccountAssistant_Pre(
      $grpc.ServiceCall call,
      $async.Future<$20.CreateAccountAssistantRequest> request) async {
    return createAccountAssistant(call, await request);
  }

  $async.Future<$20.GetAccountAssistantNameCodeResponse>
      getAccountAssistantNameCode_Pre($grpc.ServiceCall call,
          $async.Future<$20.GetAccountAssistantNameCodeRequest> request) async {
    return getAccountAssistantNameCode(call, await request);
  }

  $async.Future<$20.CreateAccountAssistantResponse> createAccountAssistant(
      $grpc.ServiceCall call, $20.CreateAccountAssistantRequest request);
  $async.Future<$20.GetAccountAssistantNameCodeResponse>
      getAccountAssistantNameCode($grpc.ServiceCall call,
          $20.GetAccountAssistantNameCodeRequest request);
}
