///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/delete_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'delete_account_assistant.pb.dart' as $21;
export 'delete_account_assistant.pb.dart';

class DeleteAccountAssistantServiceClient extends $grpc.Client {
  static final _$deleteAccountAssistant = $grpc.ClientMethod<
          $21.DeleteAccountAssistantRequest,
          $21.DeleteAccountAssistantResponse>(
      '/elint.services.product.identity.account.assistant.DeleteAccountAssistantService/DeleteAccountAssistant',
      ($21.DeleteAccountAssistantRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $21.DeleteAccountAssistantResponse.fromBuffer(value));

  DeleteAccountAssistantServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$21.DeleteAccountAssistantResponse>
      deleteAccountAssistant($21.DeleteAccountAssistantRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAccountAssistant, request,
        options: options);
  }
}

abstract class DeleteAccountAssistantServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.assistant.DeleteAccountAssistantService';

  DeleteAccountAssistantServiceBase() {
    $addMethod($grpc.ServiceMethod<$21.DeleteAccountAssistantRequest,
            $21.DeleteAccountAssistantResponse>(
        'DeleteAccountAssistant',
        deleteAccountAssistant_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $21.DeleteAccountAssistantRequest.fromBuffer(value),
        ($21.DeleteAccountAssistantResponse value) => value.writeToBuffer()));
  }

  $async.Future<$21.DeleteAccountAssistantResponse> deleteAccountAssistant_Pre(
      $grpc.ServiceCall call,
      $async.Future<$21.DeleteAccountAssistantRequest> request) async {
    return deleteAccountAssistant(call, await request);
  }

  $async.Future<$21.DeleteAccountAssistantResponse> deleteAccountAssistant(
      $grpc.ServiceCall call, $21.DeleteAccountAssistantRequest request);
}
