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
//  source: ethos/elint/services/cognitive/assist/context/context_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'context_account.pb.dart' as $53;
export 'context_account.pb.dart';

class ContextAccountServiceClient extends $grpc.Client {
  static final _$getAccountMessageContext = $grpc.ClientMethod<
          $53.AccountMessage, $53.AccountMessageContext>(
      '/elint.services.cognitive.assist.context.account.ContextAccountService/GetAccountMessageContext',
      ($53.AccountMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $53.AccountMessageContext.fromBuffer(value));

  ContextAccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$53.AccountMessageContext> getAccountMessageContext(
      $async.Stream<$53.AccountMessage> request,
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
        $grpc.ServiceMethod<$53.AccountMessage, $53.AccountMessageContext>(
            'GetAccountMessageContext',
            getAccountMessageContext,
            true,
            true,
            ($core.List<$core.int> value) =>
                $53.AccountMessage.fromBuffer(value),
            ($53.AccountMessageContext value) => value.writeToBuffer()));
  }

  $async.Stream<$53.AccountMessageContext> getAccountMessageContext(
      $grpc.ServiceCall call, $async.Stream<$53.AccountMessage> request);
}
