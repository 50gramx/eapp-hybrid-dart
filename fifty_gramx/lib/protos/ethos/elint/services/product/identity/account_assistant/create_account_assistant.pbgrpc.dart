///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/create_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'create_account_assistant.pb.dart' as $19;
export 'create_account_assistant.pb.dart';

class CreateAccountAssistantServiceClient extends $grpc.Client {
  static final _$createAccountAssistant = $grpc.ClientMethod<
          $19.CreateAccountAssistantRequest,
          $19.CreateAccountAssistantResponse>(
      '/elint.services.product.identity.account.assistant.CreateAccountAssistantService/CreateAccountAssistant',
      ($19.CreateAccountAssistantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $19.CreateAccountAssistantResponse.fromBuffer(value));
  static final _$getAccountAssistantNameCode = $grpc.ClientMethod<
          $19.GetAccountAssistantNameCodeRequest,
          $19.GetAccountAssistantNameCodeResponse>(
      '/elint.services.product.identity.account.assistant.CreateAccountAssistantService/GetAccountAssistantNameCode',
      ($19.GetAccountAssistantNameCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $19.GetAccountAssistantNameCodeResponse.fromBuffer(value));

  CreateAccountAssistantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$19.CreateAccountAssistantResponse>
      createAccountAssistant($19.CreateAccountAssistantRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAccountAssistant, request,
        options: options);
  }

  $grpc.ResponseFuture<$19.GetAccountAssistantNameCodeResponse>
      getAccountAssistantNameCode(
          $19.GetAccountAssistantNameCodeRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantNameCode, request,
        options: options);
  }
}

abstract class CreateAccountAssistantServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.assistant.CreateAccountAssistantService';

  CreateAccountAssistantServiceBase() {
    $addMethod($grpc.ServiceMethod<$19.CreateAccountAssistantRequest,
            $19.CreateAccountAssistantResponse>(
        'CreateAccountAssistant',
        createAccountAssistant_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $19.CreateAccountAssistantRequest.fromBuffer(value),
        ($19.CreateAccountAssistantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$19.GetAccountAssistantNameCodeRequest,
            $19.GetAccountAssistantNameCodeResponse>(
        'GetAccountAssistantNameCode',
        getAccountAssistantNameCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $19.GetAccountAssistantNameCodeRequest.fromBuffer(value),
        ($19.GetAccountAssistantNameCodeResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$19.CreateAccountAssistantResponse> createAccountAssistant_Pre(
      $grpc.ServiceCall call,
      $async.Future<$19.CreateAccountAssistantRequest> request) async {
    return createAccountAssistant(call, await request);
  }

  $async.Future<$19.GetAccountAssistantNameCodeResponse>
      getAccountAssistantNameCode_Pre($grpc.ServiceCall call,
          $async.Future<$19.GetAccountAssistantNameCodeRequest> request) async {
    return getAccountAssistantNameCode(call, await request);
  }

  $async.Future<$19.CreateAccountAssistantResponse> createAccountAssistant(
      $grpc.ServiceCall call, $19.CreateAccountAssistantRequest request);
  $async.Future<$19.GetAccountAssistantNameCodeResponse>
      getAccountAssistantNameCode($grpc.ServiceCall call,
          $19.GetAccountAssistantNameCodeRequest request);
}
