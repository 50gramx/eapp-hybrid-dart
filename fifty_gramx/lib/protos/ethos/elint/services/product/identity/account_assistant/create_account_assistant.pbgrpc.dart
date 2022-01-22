///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/create_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'create_account_assistant.pb.dart' as $17;
export 'create_account_assistant.pb.dart';

class CreateAccountAssistantServiceClient extends $grpc.Client {
  static final _$createAccountAssistant = $grpc.ClientMethod<
          $17.CreateAccountAssistantRequest,
          $17.CreateAccountAssistantResponse>(
      '/elint.services.product.identity.account.assistant.CreateAccountAssistantService/CreateAccountAssistant',
      ($17.CreateAccountAssistantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $17.CreateAccountAssistantResponse.fromBuffer(value));
  static final _$getAccountAssistantNameCode = $grpc.ClientMethod<
          $17.GetAccountAssistantNameCodeRequest,
          $17.GetAccountAssistantNameCodeResponse>(
      '/elint.services.product.identity.account.assistant.CreateAccountAssistantService/GetAccountAssistantNameCode',
      ($17.GetAccountAssistantNameCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $17.GetAccountAssistantNameCodeResponse.fromBuffer(value));

  CreateAccountAssistantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$17.CreateAccountAssistantResponse>
      createAccountAssistant($17.CreateAccountAssistantRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAccountAssistant, request,
        options: options);
  }

  $grpc.ResponseFuture<$17.GetAccountAssistantNameCodeResponse>
      getAccountAssistantNameCode(
          $17.GetAccountAssistantNameCodeRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountAssistantNameCode, request,
        options: options);
  }
}

abstract class CreateAccountAssistantServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.assistant.CreateAccountAssistantService';

  CreateAccountAssistantServiceBase() {
    $addMethod($grpc.ServiceMethod<$17.CreateAccountAssistantRequest,
            $17.CreateAccountAssistantResponse>(
        'CreateAccountAssistant',
        createAccountAssistant_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $17.CreateAccountAssistantRequest.fromBuffer(value),
        ($17.CreateAccountAssistantResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$17.GetAccountAssistantNameCodeRequest,
            $17.GetAccountAssistantNameCodeResponse>(
        'GetAccountAssistantNameCode',
        getAccountAssistantNameCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $17.GetAccountAssistantNameCodeRequest.fromBuffer(value),
        ($17.GetAccountAssistantNameCodeResponse value) =>
            value.writeToBuffer()));
  }

  $async.Future<$17.CreateAccountAssistantResponse> createAccountAssistant_Pre(
      $grpc.ServiceCall call,
      $async.Future<$17.CreateAccountAssistantRequest> request) async {
    return createAccountAssistant(call, await request);
  }

  $async.Future<$17.GetAccountAssistantNameCodeResponse>
      getAccountAssistantNameCode_Pre($grpc.ServiceCall call,
          $async.Future<$17.GetAccountAssistantNameCodeRequest> request) async {
    return getAccountAssistantNameCode(call, await request);
  }

  $async.Future<$17.CreateAccountAssistantResponse> createAccountAssistant(
      $grpc.ServiceCall call, $17.CreateAccountAssistantRequest request);
  $async.Future<$17.GetAccountAssistantNameCodeResponse>
      getAccountAssistantNameCode($grpc.ServiceCall call,
          $17.GetAccountAssistantNameCodeRequest request);
}
