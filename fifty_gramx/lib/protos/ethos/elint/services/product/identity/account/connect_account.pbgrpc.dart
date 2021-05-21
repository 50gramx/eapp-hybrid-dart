///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/connect_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_account.pb.dart' as $0;
import 'connect_account.pb.dart' as $1;
import '../../../../entities/generic.pb.dart' as $2;
export 'connect_account.pb.dart';

class ConnectAccountServiceClient extends $grpc.Client {
  static final _$getAllConnectedAccountAssistants = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $1.ConnectedAccountAssistants>(
      '/elint.services.product.identity.account.ConnectAccountService/GetAllConnectedAccountAssistants',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ConnectedAccountAssistants.fromBuffer(value));
  static final _$getAllConnectedAccounts = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $1.ConnectedAccounts>(
      '/elint.services.product.identity.account.ConnectAccountService/GetAllConnectedAccounts',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ConnectedAccounts.fromBuffer(value));
  static final _$isAccountAssistantConnected = $grpc.ClientMethod<
          $1.IsAccountAssistantConnectedRequest, $2.ResponseMeta>(
      '/elint.services.product.identity.account.ConnectAccountService/IsAccountAssistantConnected',
      ($1.IsAccountAssistantConnectedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$isAccountConnected = $grpc.ClientMethod<
          $1.IsAccountConnectedRequest, $2.ResponseMeta>(
      '/elint.services.product.identity.account.ConnectAccountService/IsAccountConnected',
      ($1.IsAccountConnectedRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$parseAccountMobiles = $grpc.ClientMethod<
          $1.ParseAccountMobilesRequest, $1.ParseAccountMobilesResponse>(
      '/elint.services.product.identity.account.ConnectAccountService/ParseAccountMobiles',
      ($1.ParseAccountMobilesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ParseAccountMobilesResponse.fromBuffer(value));
  static final _$syncAccountConnections = $grpc.ClientMethod<
          $1.SyncAccountConnectionsRequest, $1.SyncAccountConnectionsResponse>(
      '/elint.services.product.identity.account.ConnectAccountService/SyncAccountConnections',
      ($1.SyncAccountConnectionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.SyncAccountConnectionsResponse.fromBuffer(value));
  static final _$connectAccount = $grpc.ClientMethod<$1.ConnectAccountRequest,
          $1.ConnectAccountResponse>(
      '/elint.services.product.identity.account.ConnectAccountService/ConnectAccount',
      ($1.ConnectAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $1.ConnectAccountResponse.fromBuffer(value));

  ConnectAccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.ConnectedAccountAssistants>
      getAllConnectedAccountAssistants(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllConnectedAccountAssistants, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.ConnectedAccounts> getAllConnectedAccounts(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAllConnectedAccounts, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> isAccountAssistantConnected(
      $1.IsAccountAssistantConnectedRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isAccountAssistantConnected, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> isAccountConnected(
      $1.IsAccountConnectedRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$isAccountConnected, request, options: options);
  }

  $grpc.ResponseFuture<$1.ParseAccountMobilesResponse> parseAccountMobiles(
      $1.ParseAccountMobilesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$parseAccountMobiles, request, options: options);
  }

  $grpc.ResponseFuture<$1.SyncAccountConnectionsResponse>
      syncAccountConnections($1.SyncAccountConnectionsRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$syncAccountConnections, request,
        options: options);
  }

  $grpc.ResponseFuture<$1.ConnectAccountResponse> connectAccount(
      $1.ConnectAccountRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$connectAccount, request, options: options);
  }
}

abstract class ConnectAccountServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.ConnectAccountService';

  ConnectAccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $1.ConnectedAccountAssistants>(
        'GetAllConnectedAccountAssistants',
        getAllConnectedAccountAssistants_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($1.ConnectedAccountAssistants value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $1.ConnectedAccounts>(
        'GetAllConnectedAccounts',
        getAllConnectedAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($1.ConnectedAccounts value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.IsAccountAssistantConnectedRequest,
            $2.ResponseMeta>(
        'IsAccountAssistantConnected',
        isAccountAssistantConnected_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.IsAccountAssistantConnectedRequest.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.IsAccountConnectedRequest, $2.ResponseMeta>(
            'IsAccountConnected',
            isAccountConnected_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.IsAccountConnectedRequest.fromBuffer(value),
            ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ParseAccountMobilesRequest,
            $1.ParseAccountMobilesResponse>(
        'ParseAccountMobiles',
        parseAccountMobiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ParseAccountMobilesRequest.fromBuffer(value),
        ($1.ParseAccountMobilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SyncAccountConnectionsRequest,
            $1.SyncAccountConnectionsResponse>(
        'SyncAccountConnections',
        syncAccountConnections_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.SyncAccountConnectionsRequest.fromBuffer(value),
        ($1.SyncAccountConnectionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ConnectAccountRequest,
            $1.ConnectAccountResponse>(
        'ConnectAccount',
        connectAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ConnectAccountRequest.fromBuffer(value),
        ($1.ConnectAccountResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.ConnectedAccountAssistants>
      getAllConnectedAccountAssistants_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAllConnectedAccountAssistants(call, await request);
  }

  $async.Future<$1.ConnectedAccounts> getAllConnectedAccounts_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAllConnectedAccounts(call, await request);
  }

  $async.Future<$2.ResponseMeta> isAccountAssistantConnected_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.IsAccountAssistantConnectedRequest> request) async {
    return isAccountAssistantConnected(call, await request);
  }

  $async.Future<$2.ResponseMeta> isAccountConnected_Pre($grpc.ServiceCall call,
      $async.Future<$1.IsAccountConnectedRequest> request) async {
    return isAccountConnected(call, await request);
  }

  $async.Future<$1.ParseAccountMobilesResponse> parseAccountMobiles_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ParseAccountMobilesRequest> request) async {
    return parseAccountMobiles(call, await request);
  }

  $async.Future<$1.SyncAccountConnectionsResponse> syncAccountConnections_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.SyncAccountConnectionsRequest> request) async {
    return syncAccountConnections(call, await request);
  }

  $async.Future<$1.ConnectAccountResponse> connectAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ConnectAccountRequest> request) async {
    return connectAccount(call, await request);
  }

  $async.Future<$1.ConnectedAccountAssistants> getAllConnectedAccountAssistants(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$1.ConnectedAccounts> getAllConnectedAccounts(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta> isAccountAssistantConnected(
      $grpc.ServiceCall call, $1.IsAccountAssistantConnectedRequest request);
  $async.Future<$2.ResponseMeta> isAccountConnected(
      $grpc.ServiceCall call, $1.IsAccountConnectedRequest request);
  $async.Future<$1.ParseAccountMobilesResponse> parseAccountMobiles(
      $grpc.ServiceCall call, $1.ParseAccountMobilesRequest request);
  $async.Future<$1.SyncAccountConnectionsResponse> syncAccountConnections(
      $grpc.ServiceCall call, $1.SyncAccountConnectionsRequest request);
  $async.Future<$1.ConnectAccountResponse> connectAccount(
      $grpc.ServiceCall call, $1.ConnectAccountRequest request);
}
