///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/notify_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'notify_account.pb.dart' as $7;
import '../../../../entities/generic.pb.dart' as $2;
export 'notify_account.pb.dart';

class NotifyAccountServiceClient extends $grpc.Client {
  static final _$newReceivedMessageFromAccountAssistant = $grpc.ClientMethod<
          $7.NewReceivedMessageFromAccountAssistantRequest, $2.ResponseMeta>(
      '/elint.services.product.identity.account.NotifyAccountService/NewReceivedMessageFromAccountAssistant',
      ($7.NewReceivedMessageFromAccountAssistantRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$newReceivedMessageFromAccount = $grpc.ClientMethod<
          $7.NewReceivedMessageFromAccountRequest, $2.ResponseMeta>(
      '/elint.services.product.identity.account.NotifyAccountService/NewReceivedMessageFromAccount',
      ($7.NewReceivedMessageFromAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$accountConnectedAccountNotification = $grpc.ClientMethod<
          $7.AccountConnectedAccountNotificationRequest, $2.ResponseMeta>(
      '/elint.services.product.identity.account.NotifyAccountService/AccountConnectedAccountNotification',
      ($7.AccountConnectedAccountNotificationRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));

  NotifyAccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.ResponseMeta> newReceivedMessageFromAccountAssistant(
      $7.NewReceivedMessageFromAccountAssistantRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$newReceivedMessageFromAccountAssistant, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> newReceivedMessageFromAccount(
      $7.NewReceivedMessageFromAccountRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$newReceivedMessageFromAccount, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> accountConnectedAccountNotification(
      $7.AccountConnectedAccountNotificationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accountConnectedAccountNotification, request,
        options: options);
  }
}

abstract class NotifyAccountServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.NotifyAccountService';

  NotifyAccountServiceBase() {
    $addMethod($grpc.ServiceMethod<
            $7.NewReceivedMessageFromAccountAssistantRequest, $2.ResponseMeta>(
        'NewReceivedMessageFromAccountAssistant',
        newReceivedMessageFromAccountAssistant_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.NewReceivedMessageFromAccountAssistantRequest.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.NewReceivedMessageFromAccountRequest,
            $2.ResponseMeta>(
        'NewReceivedMessageFromAccount',
        newReceivedMessageFromAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.NewReceivedMessageFromAccountRequest.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $7.AccountConnectedAccountNotificationRequest, $2.ResponseMeta>(
        'AccountConnectedAccountNotification',
        accountConnectedAccountNotification_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.AccountConnectedAccountNotificationRequest.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
  }

  $async.Future<$2.ResponseMeta> newReceivedMessageFromAccountAssistant_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.NewReceivedMessageFromAccountAssistantRequest>
          request) async {
    return newReceivedMessageFromAccountAssistant(call, await request);
  }

  $async.Future<$2.ResponseMeta> newReceivedMessageFromAccount_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.NewReceivedMessageFromAccountRequest> request) async {
    return newReceivedMessageFromAccount(call, await request);
  }

  $async.Future<$2.ResponseMeta> accountConnectedAccountNotification_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.AccountConnectedAccountNotificationRequest>
          request) async {
    return accountConnectedAccountNotification(call, await request);
  }

  $async.Future<$2.ResponseMeta> newReceivedMessageFromAccountAssistant(
      $grpc.ServiceCall call,
      $7.NewReceivedMessageFromAccountAssistantRequest request);
  $async.Future<$2.ResponseMeta> newReceivedMessageFromAccount(
      $grpc.ServiceCall call, $7.NewReceivedMessageFromAccountRequest request);
  $async.Future<$2.ResponseMeta> accountConnectedAccountNotification(
      $grpc.ServiceCall call,
      $7.AccountConnectedAccountNotificationRequest request);
}
