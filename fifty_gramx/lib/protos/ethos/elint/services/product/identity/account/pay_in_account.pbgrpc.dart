///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/pay_in_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_account.pb.dart' as $0;
import 'pay_in_account.pb.dart' as $8;
import '../../../../entities/generic.pb.dart' as $2;
export 'pay_in_account.pb.dart';

class PayInAccountServiceClient extends $grpc.Client {
  static final _$getAccountPayInPublishableKey = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $8.AccountPayInPublishableKey>(
      '/elint.services.product.identity.account.PayInAccountService/GetAccountPayInPublishableKey',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.AccountPayInPublishableKey.fromBuffer(value));
  static final _$createAccountPayIn = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $2.ResponseMeta>(
      '/elint.services.product.identity.account.PayInAccountService/CreateAccountPayIn',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$getAccountPayInAccessKey = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $8.AccountPayInAccessKey>(
      '/elint.services.product.identity.account.PayInAccountService/GetAccountPayInAccessKey',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.AccountPayInAccessKey.fromBuffer(value));
  static final _$getAccountPayInSecretKey = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $8.AccountPayInSecretKey>(
      '/elint.services.product.identity.account.PayInAccountService/GetAccountPayInSecretKey',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.AccountPayInSecretKey.fromBuffer(value));
  static final _$getAccountPayInIntent = $grpc.ClientMethod<
          $8.GetAccountPayInIntentRequest, $8.GetAccountPayInIntentResponse>(
      '/elint.services.product.identity.account.PayInAccountService/GetAccountPayInIntent',
      ($8.GetAccountPayInIntentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.GetAccountPayInIntentResponse.fromBuffer(value));
  static final _$listAllCards = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $8.ListAllCardsResponse>(
      '/elint.services.product.identity.account.PayInAccountService/ListAllCards',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $8.ListAllCardsResponse.fromBuffer(value));
  static final _$saveCard = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $8.SaveCardResponse>(
      '/elint.services.product.identity.account.PayInAccountService/SaveCard',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.SaveCardResponse.fromBuffer(value));

  PayInAccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$8.AccountPayInPublishableKey>
      getAccountPayInPublishableKey($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountPayInPublishableKey, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> createAccountPayIn(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAccountPayIn, request, options: options);
  }

  $grpc.ResponseFuture<$8.AccountPayInAccessKey> getAccountPayInAccessKey(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountPayInAccessKey, request,
        options: options);
  }

  $grpc.ResponseFuture<$8.AccountPayInSecretKey> getAccountPayInSecretKey(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountPayInSecretKey, request,
        options: options);
  }

  $grpc.ResponseFuture<$8.GetAccountPayInIntentResponse> getAccountPayInIntent(
      $8.GetAccountPayInIntentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountPayInIntent, request, options: options);
  }

  $grpc.ResponseFuture<$8.ListAllCardsResponse> listAllCards(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAllCards, request, options: options);
  }

  $grpc.ResponseFuture<$8.SaveCardResponse> saveCard(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveCard, request, options: options);
  }
}

abstract class PayInAccountServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.PayInAccountService';

  PayInAccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $8.AccountPayInPublishableKey>(
        'GetAccountPayInPublishableKey',
        getAccountPayInPublishableKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($8.AccountPayInPublishableKey value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $2.ResponseMeta>(
        'CreateAccountPayIn',
        createAccountPayIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $8.AccountPayInAccessKey>(
        'GetAccountPayInAccessKey',
        getAccountPayInAccessKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($8.AccountPayInAccessKey value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $8.AccountPayInSecretKey>(
        'GetAccountPayInSecretKey',
        getAccountPayInSecretKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($8.AccountPayInSecretKey value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.GetAccountPayInIntentRequest,
            $8.GetAccountPayInIntentResponse>(
        'GetAccountPayInIntent',
        getAccountPayInIntent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $8.GetAccountPayInIntentRequest.fromBuffer(value),
        ($8.GetAccountPayInIntentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $8.ListAllCardsResponse>(
        'ListAllCards',
        listAllCards_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($8.ListAllCardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $8.SaveCardResponse>(
        'SaveCard',
        saveCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($8.SaveCardResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.AccountPayInPublishableKey>
      getAccountPayInPublishableKey_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountPayInPublishableKey(call, await request);
  }

  $async.Future<$2.ResponseMeta> createAccountPayIn_Pre($grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return createAccountPayIn(call, await request);
  }

  $async.Future<$8.AccountPayInAccessKey> getAccountPayInAccessKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountPayInAccessKey(call, await request);
  }

  $async.Future<$8.AccountPayInSecretKey> getAccountPayInSecretKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountPayInSecretKey(call, await request);
  }

  $async.Future<$8.GetAccountPayInIntentResponse> getAccountPayInIntent_Pre(
      $grpc.ServiceCall call,
      $async.Future<$8.GetAccountPayInIntentRequest> request) async {
    return getAccountPayInIntent(call, await request);
  }

  $async.Future<$8.ListAllCardsResponse> listAllCards_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return listAllCards(call, await request);
  }

  $async.Future<$8.SaveCardResponse> saveCard_Pre($grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return saveCard(call, await request);
  }

  $async.Future<$8.AccountPayInPublishableKey> getAccountPayInPublishableKey(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta> createAccountPayIn(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$8.AccountPayInAccessKey> getAccountPayInAccessKey(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$8.AccountPayInSecretKey> getAccountPayInSecretKey(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$8.GetAccountPayInIntentResponse> getAccountPayInIntent(
      $grpc.ServiceCall call, $8.GetAccountPayInIntentRequest request);
  $async.Future<$8.ListAllCardsResponse> listAllCards(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$8.SaveCardResponse> saveCard(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
}
