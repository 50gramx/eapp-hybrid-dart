///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/action_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'action_account_assistant.pb.dart' as $17;
import '../../../../entities/generic.pb.dart' as $2;
export 'action_account_assistant.pb.dart';

class ActionAccountAssistantServiceClient extends $grpc.Client {
  static final _$actOnAccountMessage = $grpc.ClientMethod<
          $17.ActOnAccountMessageRequest, $2.ResponseMeta>(
      '/elint.services.product.identity.account.assistant.ActionAccountAssistantService/ActOnAccountMessage',
      ($17.ActOnAccountMessageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));

  ActionAccountAssistantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.ResponseMeta> actOnAccountMessage(
      $17.ActOnAccountMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$actOnAccountMessage, request, options: options);
  }
}

abstract class ActionAccountAssistantServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.assistant.ActionAccountAssistantService';

  ActionAccountAssistantServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$17.ActOnAccountMessageRequest, $2.ResponseMeta>(
            'ActOnAccountMessage',
            actOnAccountMessage_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $17.ActOnAccountMessageRequest.fromBuffer(value),
            ($2.ResponseMeta value) => value.writeToBuffer()));
  }

  $async.Future<$2.ResponseMeta> actOnAccountMessage_Pre($grpc.ServiceCall call,
      $async.Future<$17.ActOnAccountMessageRequest> request) async {
    return actOnAccountMessage(call, await request);
  }

  $async.Future<$2.ResponseMeta> actOnAccountMessage(
      $grpc.ServiceCall call, $17.ActOnAccountMessageRequest request);
}
