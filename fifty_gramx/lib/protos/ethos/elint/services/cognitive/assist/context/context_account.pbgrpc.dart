///
//  Generated code. Do not modify.
//  source: ethos/elint/services/cognitive/assist/context/context_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'context_account.pb.dart' as $52;
export 'context_account.pb.dart';

class ContextAccountServiceClient extends $grpc.Client {
  static final _$getAccountMessageContext = $grpc.ClientMethod<
          $52.AccountMessage, $52.AccountMessageContext>(
      '/elint.services.cognitive.assist.context.account.ContextAccountService/GetAccountMessageContext',
      ($52.AccountMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $52.AccountMessageContext.fromBuffer(value));

  ContextAccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$52.AccountMessageContext> getAccountMessageContext(
      $52.AccountMessage request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountMessageContext, request,
        options: options);
  }
}

abstract class ContextAccountServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.cognitive.assist.context.account.ContextAccountService';

  ContextAccountServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$52.AccountMessage, $52.AccountMessageContext>(
            'GetAccountMessageContext',
            getAccountMessageContext_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $52.AccountMessage.fromBuffer(value),
            ($52.AccountMessageContext value) => value.writeToBuffer()));
  }

  $async.Future<$52.AccountMessageContext> getAccountMessageContext_Pre(
      $grpc.ServiceCall call, $async.Future<$52.AccountMessage> request) async {
    return getAccountMessageContext(call, await request);
  }

  $async.Future<$52.AccountMessageContext> getAccountMessageContext(
      $grpc.ServiceCall call, $52.AccountMessage request);
}
