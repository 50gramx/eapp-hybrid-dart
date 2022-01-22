///
//  Generated code. Do not modify.
//  source: ethos/elint/services/cognitive/assist/context/context_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'context_account.pb.dart' as $50;
export 'context_account.pb.dart';

class ContextAccountServiceClient extends $grpc.Client {
  static final _$getAccountMessageContext = $grpc.ClientMethod<
          $50.AccountMessage, $50.AccountMessageContext>(
      '/elint.services.cognitive.assist.context.account.ContextAccountService/GetAccountMessageContext',
      ($50.AccountMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $50.AccountMessageContext.fromBuffer(value));

  ContextAccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$50.AccountMessageContext> getAccountMessageContext(
      $async.Stream<$50.AccountMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getAccountMessageContext, request,
        options: options);
  }
}

abstract class ContextAccountServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.cognitive.assist.context.account.ContextAccountService';

  ContextAccountServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$50.AccountMessage, $50.AccountMessageContext>(
            'GetAccountMessageContext',
            getAccountMessageContext,
            true,
            true,
            ($core.List<$core.int> value) =>
                $50.AccountMessage.fromBuffer(value),
            ($50.AccountMessageContext value) => value.writeToBuffer()));
  }

  $async.Stream<$50.AccountMessageContext> getAccountMessageContext(
      $grpc.ServiceCall call, $async.Stream<$50.AccountMessage> request);
}
