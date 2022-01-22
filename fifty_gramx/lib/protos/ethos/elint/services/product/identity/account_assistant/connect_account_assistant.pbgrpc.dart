///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/connect_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'connect_account_assistant.pb.dart' as $16;
import '../../../../entities/generic.pb.dart' as $2;
export 'connect_account_assistant.pb.dart';

class ConnectAccountAssistantServiceClient extends $grpc.Client {
  static final _$isAccountConnected = $grpc.ClientMethod<
          $16.IsAccountConnectedRequest, $2.ResponseMeta>(
      '/elint.services.product.identity.account.assistant.ConnectAccountAssistantService/IsAccountConnected',
      ($16.IsAccountConnectedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$connectAccount = $grpc.ClientMethod<$16.ConnectAccountRequest,
          $16.ConnectAccountResponse>(
      '/elint.services.product.identity.account.assistant.ConnectAccountAssistantService/ConnectAccount',
      ($16.ConnectAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $16.ConnectAccountResponse.fromBuffer(value));

  ConnectAccountAssistantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.ResponseMeta> isAccountConnected(
      $16.IsAccountConnectedRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isAccountConnected, request, options: options);
  }

  $grpc.ResponseFuture<$16.ConnectAccountResponse> connectAccount(
      $16.ConnectAccountRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$connectAccount, request, options: options);
  }
}

abstract class ConnectAccountAssistantServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.assistant.ConnectAccountAssistantService';

  ConnectAccountAssistantServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$16.IsAccountConnectedRequest, $2.ResponseMeta>(
            'IsAccountConnected',
            isAccountConnected_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $16.IsAccountConnectedRequest.fromBuffer(value),
            ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$16.ConnectAccountRequest,
            $16.ConnectAccountResponse>(
        'ConnectAccount',
        connectAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $16.ConnectAccountRequest.fromBuffer(value),
        ($16.ConnectAccountResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.ResponseMeta> isAccountConnected_Pre($grpc.ServiceCall call,
      $async.Future<$16.IsAccountConnectedRequest> request) async {
    return isAccountConnected(call, await request);
  }

  $async.Future<$16.ConnectAccountResponse> connectAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$16.ConnectAccountRequest> request) async {
    return connectAccount(call, await request);
  }

  $async.Future<$2.ResponseMeta> isAccountConnected(
      $grpc.ServiceCall call, $16.IsAccountConnectedRequest request);
  $async.Future<$16.ConnectAccountResponse> connectAccount(
      $grpc.ServiceCall call, $16.ConnectAccountRequest request);
}
