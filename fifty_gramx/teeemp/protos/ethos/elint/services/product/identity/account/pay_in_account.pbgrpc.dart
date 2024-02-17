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
//  source: ethos/elint/services/product/identity/account/pay_in_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'access_account.pb.dart' as $0;
import 'pay_in_account.pb.dart' as $11;
import '../../../../entities/generic.pb.dart' as $2;
import '../../knowledge/space_knowledge/access_space_knowledge.pb.dart' as $10;
export 'pay_in_account.pb.dart';

class PayInAccountServiceClient extends $grpc.Client {
  static final _$getAccountPayInPublishableKey = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $11.AccountPayInPublishableKey>(
      '/elint.services.product.identity.account.PayInAccountService/GetAccountPayInPublishableKey',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $11.AccountPayInPublishableKey.fromBuffer(value));
  static final _$createAccountPayIn = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $2.ResponseMeta>(
      '/elint.services.product.identity.account.PayInAccountService/CreateAccountPayIn',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$getAccountPayInAccessKey = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $11.AccountPayInAccessKey>(
      '/elint.services.product.identity.account.PayInAccountService/GetAccountPayInAccessKey',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $11.AccountPayInAccessKey.fromBuffer(value));
  static final _$getAccountPayInSecretKey = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $11.AccountPayInSecretKey>(
      '/elint.services.product.identity.account.PayInAccountService/GetAccountPayInSecretKey',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $11.AccountPayInSecretKey.fromBuffer(value));
  static final _$getAccountPayInIntent = $grpc.ClientMethod<
          $11.GetAccountPayInIntentRequest, $11.GetAccountPayInIntentResponse>(
      '/elint.services.product.identity.account.PayInAccountService/GetAccountPayInIntent',
      ($11.GetAccountPayInIntentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $11.GetAccountPayInIntentResponse.fromBuffer(value));
  static final _$listAllCards = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $11.ListAllCardsResponse>(
      '/elint.services.product.identity.account.PayInAccountService/ListAllCards',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $11.ListAllCardsResponse.fromBuffer(value));
  static final _$saveCard = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $11.SaveCardResponse>(
      '/elint.services.product.identity.account.PayInAccountService/SaveCard',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $11.SaveCardResponse.fromBuffer(value));
  static final _$accountEthosCoinBalance = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails,
          $11.AccountEthosCoinBalanceResponse>(
      '/elint.services.product.identity.account.PayInAccountService/AccountEthosCoinBalance',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $11.AccountEthosCoinBalanceResponse.fromBuffer(value));
  static final _$creditAccountEthosCoinBalance = $grpc.ClientMethod<
          $11.CreditAccountEthosCoinBalanceRequest, $2.ResponseMeta>(
      '/elint.services.product.identity.account.PayInAccountService/CreditAccountEthosCoinBalance',
      ($11.CreditAccountEthosCoinBalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$createAccountOpenGalaxyTierSubscription = $grpc.ClientMethod<
          $11.CreateAccountOpenGalaxyTierSubscriptionRequest, $2.ResponseMeta>(
      '/elint.services.product.identity.account.PayInAccountService/CreateAccountOpenGalaxyTierSubscription',
      ($11.CreateAccountOpenGalaxyTierSubscriptionRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$verifyAccountOpenGalaxyPlayStoreSubscriptionCharge =
      $grpc.ClientMethod<
              $11.VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest,
              $2.ResponseMeta>(
          '/elint.services.product.identity.account.PayInAccountService/VerifyAccountOpenGalaxyPlayStoreSubscriptionCharge',
          ($11.VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest
                  value) =>
              value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$confirmAccountOpenGalaxyPlayStoreSubscription = $grpc.ClientMethod<
          $11.ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest,
          $2.ResponseMeta>(
      '/elint.services.product.identity.account.PayInAccountService/ConfirmAccountOpenGalaxyPlayStoreSubscription',
      ($11.ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$verifyAccountEthosCoinBalanceAddition = $grpc.ClientMethod<
          $11.VerifyAccountEthosCoinBalanceAdditionRequest, $2.ResponseMeta>(
      '/elint.services.product.identity.account.PayInAccountService/VerifyAccountEthosCoinBalanceAddition',
      ($11.VerifyAccountEthosCoinBalanceAdditionRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$confirmAccountEthosCoinBalanceAddition = $grpc.ClientMethod<
          $11.ConfirmAccountEthosCoinBalanceAdditionRequest, $2.ResponseMeta>(
      '/elint.services.product.identity.account.PayInAccountService/ConfirmAccountEthosCoinBalanceAddition',
      ($11.ConfirmAccountEthosCoinBalanceAdditionRequest value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$updateAccountRemainingOpenGalaxyTierBenefits = $grpc.ClientMethod<
          $0.AccountServicesAccessAuthDetails, $2.ResponseMeta>(
      '/elint.services.product.identity.account.PayInAccountService/UpdateAccountRemainingOpenGalaxyTierBenefits',
      ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$isTierBenefitsRemainingForClosedDomainLaunchPerMonth =
      $grpc.ClientMethod<$0.AccountServicesAccessAuthDetails, $2.ResponseMeta>(
          '/elint.services.product.identity.account.PayInAccountService/IsTierBenefitsRemainingForClosedDomainLaunchPerMonth',
          ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$isTierBenefitsRemainingForClosedDomainPageLearningPerMonth =
      $grpc.ClientMethod<$0.AccountServicesAccessAuthDetails, $2.ResponseMeta>(
          '/elint.services.product.identity.account.PayInAccountService/IsTierBenefitsRemainingForClosedDomainPageLearningPerMonth',
          ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$isTierBenefitsRemainingForClosedDomainInferencePerDay =
      $grpc.ClientMethod<$0.AccountServicesAccessAuthDetails, $2.ResponseMeta>(
          '/elint.services.product.identity.account.PayInAccountService/IsTierBenefitsRemainingForClosedDomainInferencePerDay',
          ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$isTierBenefitsRemainingForOpenDomainInferencePerDay =
      $grpc.ClientMethod<$0.AccountServicesAccessAuthDetails, $2.ResponseMeta>(
          '/elint.services.product.identity.account.PayInAccountService/IsTierBenefitsRemainingForOpenDomainInferencePerDay',
          ($0.AccountServicesAccessAuthDetails value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));
  static final _$chargeForClosedDomainLaunch = $grpc.ClientMethod<
          $10.SpaceKnowledgeServicesAccessAuthDetails, $2.ResponseMeta>(
      '/elint.services.product.identity.account.PayInAccountService/ChargeForClosedDomainLaunch',
      ($10.SpaceKnowledgeServicesAccessAuthDetails value) =>
          value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ResponseMeta.fromBuffer(value));

  PayInAccountServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$11.AccountPayInPublishableKey>
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

  $grpc.ResponseFuture<$11.AccountPayInAccessKey> getAccountPayInAccessKey(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountPayInAccessKey, request,
        options: options);
  }

  $grpc.ResponseFuture<$11.AccountPayInSecretKey> getAccountPayInSecretKey(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountPayInSecretKey, request,
        options: options);
  }

  $grpc.ResponseFuture<$11.GetAccountPayInIntentResponse> getAccountPayInIntent(
      $11.GetAccountPayInIntentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAccountPayInIntent, request, options: options);
  }

  $grpc.ResponseFuture<$11.ListAllCardsResponse> listAllCards(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAllCards, request, options: options);
  }

  $grpc.ResponseFuture<$11.SaveCardResponse> saveCard(
      $0.AccountServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveCard, request, options: options);
  }

  $grpc.ResponseFuture<$11.AccountEthosCoinBalanceResponse>
      accountEthosCoinBalance($0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accountEthosCoinBalance, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> creditAccountEthosCoinBalance(
      $11.CreditAccountEthosCoinBalanceRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$creditAccountEthosCoinBalance, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> createAccountOpenGalaxyTierSubscription(
      $11.CreateAccountOpenGalaxyTierSubscriptionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAccountOpenGalaxyTierSubscription, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta>
      verifyAccountOpenGalaxyPlayStoreSubscriptionCharge(
          $11.VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$verifyAccountOpenGalaxyPlayStoreSubscriptionCharge, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta>
      confirmAccountOpenGalaxyPlayStoreSubscription(
          $11.ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$confirmAccountOpenGalaxyPlayStoreSubscription, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> verifyAccountEthosCoinBalanceAddition(
      $11.VerifyAccountEthosCoinBalanceAdditionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verifyAccountEthosCoinBalanceAddition, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> confirmAccountEthosCoinBalanceAddition(
      $11.ConfirmAccountEthosCoinBalanceAdditionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$confirmAccountEthosCoinBalanceAddition, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta>
      updateAccountRemainingOpenGalaxyTierBenefits(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$updateAccountRemainingOpenGalaxyTierBenefits, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta>
      isTierBenefitsRemainingForClosedDomainLaunchPerMonth(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$isTierBenefitsRemainingForClosedDomainLaunchPerMonth, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta>
      isTierBenefitsRemainingForClosedDomainPageLearningPerMonth(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$isTierBenefitsRemainingForClosedDomainPageLearningPerMonth, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta>
      isTierBenefitsRemainingForClosedDomainInferencePerDay(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$isTierBenefitsRemainingForClosedDomainInferencePerDay, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta>
      isTierBenefitsRemainingForOpenDomainInferencePerDay(
          $0.AccountServicesAccessAuthDetails request,
          {$grpc.CallOptions? options}) {
    return $createUnaryCall(
        _$isTierBenefitsRemainingForOpenDomainInferencePerDay, request,
        options: options);
  }

  $grpc.ResponseFuture<$2.ResponseMeta> chargeForClosedDomainLaunch(
      $10.SpaceKnowledgeServicesAccessAuthDetails request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$chargeForClosedDomainLaunch, request,
        options: options);
  }
}

abstract class PayInAccountServiceBase extends $grpc.Service {
  $core.String get $name =>
      'elint.services.product.identity.account.PayInAccountService';

  PayInAccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $11.AccountPayInPublishableKey>(
        'GetAccountPayInPublishableKey',
        getAccountPayInPublishableKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($11.AccountPayInPublishableKey value) => value.writeToBuffer()));
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
            $11.AccountPayInAccessKey>(
        'GetAccountPayInAccessKey',
        getAccountPayInAccessKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($11.AccountPayInAccessKey value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $11.AccountPayInSecretKey>(
        'GetAccountPayInSecretKey',
        getAccountPayInSecretKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($11.AccountPayInSecretKey value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.GetAccountPayInIntentRequest,
            $11.GetAccountPayInIntentResponse>(
        'GetAccountPayInIntent',
        getAccountPayInIntent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.GetAccountPayInIntentRequest.fromBuffer(value),
        ($11.GetAccountPayInIntentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $11.ListAllCardsResponse>(
        'ListAllCards',
        listAllCards_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($11.ListAllCardsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $11.SaveCardResponse>(
        'SaveCard',
        saveCard_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($11.SaveCardResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $11.AccountEthosCoinBalanceResponse>(
        'AccountEthosCoinBalance',
        accountEthosCoinBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($11.AccountEthosCoinBalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.CreditAccountEthosCoinBalanceRequest,
            $2.ResponseMeta>(
        'CreditAccountEthosCoinBalance',
        creditAccountEthosCoinBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.CreditAccountEthosCoinBalanceRequest.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $11.CreateAccountOpenGalaxyTierSubscriptionRequest,
            $2.ResponseMeta>(
        'CreateAccountOpenGalaxyTierSubscription',
        createAccountOpenGalaxyTierSubscription_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.CreateAccountOpenGalaxyTierSubscriptionRequest.fromBuffer(
                value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $11.VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest,
            $2.ResponseMeta>(
        'VerifyAccountOpenGalaxyPlayStoreSubscriptionCharge',
        verifyAccountOpenGalaxyPlayStoreSubscriptionCharge_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest
                .fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $11.ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest,
            $2.ResponseMeta>(
        'ConfirmAccountOpenGalaxyPlayStoreSubscription',
        confirmAccountOpenGalaxyPlayStoreSubscription_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest.fromBuffer(
                value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $11.VerifyAccountEthosCoinBalanceAdditionRequest, $2.ResponseMeta>(
        'VerifyAccountEthosCoinBalanceAddition',
        verifyAccountEthosCoinBalanceAddition_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.VerifyAccountEthosCoinBalanceAdditionRequest.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<
            $11.ConfirmAccountEthosCoinBalanceAdditionRequest, $2.ResponseMeta>(
        'ConfirmAccountEthosCoinBalanceAddition',
        confirmAccountEthosCoinBalanceAddition_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.ConfirmAccountEthosCoinBalanceAdditionRequest.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $2.ResponseMeta>(
        'UpdateAccountRemainingOpenGalaxyTierBenefits',
        updateAccountRemainingOpenGalaxyTierBenefits_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $2.ResponseMeta>(
        'IsTierBenefitsRemainingForClosedDomainLaunchPerMonth',
        isTierBenefitsRemainingForClosedDomainLaunchPerMonth_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $2.ResponseMeta>(
        'IsTierBenefitsRemainingForClosedDomainPageLearningPerMonth',
        isTierBenefitsRemainingForClosedDomainPageLearningPerMonth_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $2.ResponseMeta>(
        'IsTierBenefitsRemainingForClosedDomainInferencePerDay',
        isTierBenefitsRemainingForClosedDomainInferencePerDay_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountServicesAccessAuthDetails,
            $2.ResponseMeta>(
        'IsTierBenefitsRemainingForOpenDomainInferencePerDay',
        isTierBenefitsRemainingForOpenDomainInferencePerDay_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AccountServicesAccessAuthDetails.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.SpaceKnowledgeServicesAccessAuthDetails,
            $2.ResponseMeta>(
        'ChargeForClosedDomainLaunch',
        chargeForClosedDomainLaunch_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $10.SpaceKnowledgeServicesAccessAuthDetails.fromBuffer(value),
        ($2.ResponseMeta value) => value.writeToBuffer()));
  }

  $async.Future<$11.AccountPayInPublishableKey>
      getAccountPayInPublishableKey_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountPayInPublishableKey(call, await request);
  }

  $async.Future<$2.ResponseMeta> createAccountPayIn_Pre($grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return createAccountPayIn(call, await request);
  }

  $async.Future<$11.AccountPayInAccessKey> getAccountPayInAccessKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountPayInAccessKey(call, await request);
  }

  $async.Future<$11.AccountPayInSecretKey> getAccountPayInSecretKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return getAccountPayInSecretKey(call, await request);
  }

  $async.Future<$11.GetAccountPayInIntentResponse> getAccountPayInIntent_Pre(
      $grpc.ServiceCall call,
      $async.Future<$11.GetAccountPayInIntentRequest> request) async {
    return getAccountPayInIntent(call, await request);
  }

  $async.Future<$11.ListAllCardsResponse> listAllCards_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return listAllCards(call, await request);
  }

  $async.Future<$11.SaveCardResponse> saveCard_Pre($grpc.ServiceCall call,
      $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return saveCard(call, await request);
  }

  $async.Future<$11.AccountEthosCoinBalanceResponse>
      accountEthosCoinBalance_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return accountEthosCoinBalance(call, await request);
  }

  $async.Future<$2.ResponseMeta> creditAccountEthosCoinBalance_Pre(
      $grpc.ServiceCall call,
      $async.Future<$11.CreditAccountEthosCoinBalanceRequest> request) async {
    return creditAccountEthosCoinBalance(call, await request);
  }

  $async.Future<$2.ResponseMeta> createAccountOpenGalaxyTierSubscription_Pre(
      $grpc.ServiceCall call,
      $async.Future<$11.CreateAccountOpenGalaxyTierSubscriptionRequest>
          request) async {
    return createAccountOpenGalaxyTierSubscription(call, await request);
  }

  $async.Future<$2.ResponseMeta>
      verifyAccountOpenGalaxyPlayStoreSubscriptionCharge_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $11.VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest>
              request) async {
    return verifyAccountOpenGalaxyPlayStoreSubscriptionCharge(
        call, await request);
  }

  $async.Future<$2.ResponseMeta>
      confirmAccountOpenGalaxyPlayStoreSubscription_Pre(
          $grpc.ServiceCall call,
          $async.Future<
                  $11.ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest>
              request) async {
    return confirmAccountOpenGalaxyPlayStoreSubscription(call, await request);
  }

  $async.Future<$2.ResponseMeta> verifyAccountEthosCoinBalanceAddition_Pre(
      $grpc.ServiceCall call,
      $async.Future<$11.VerifyAccountEthosCoinBalanceAdditionRequest>
          request) async {
    return verifyAccountEthosCoinBalanceAddition(call, await request);
  }

  $async.Future<$2.ResponseMeta> confirmAccountEthosCoinBalanceAddition_Pre(
      $grpc.ServiceCall call,
      $async.Future<$11.ConfirmAccountEthosCoinBalanceAdditionRequest>
          request) async {
    return confirmAccountEthosCoinBalanceAddition(call, await request);
  }

  $async.Future<$2.ResponseMeta>
      updateAccountRemainingOpenGalaxyTierBenefits_Pre($grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return updateAccountRemainingOpenGalaxyTierBenefits(call, await request);
  }

  $async.Future<$2.ResponseMeta>
      isTierBenefitsRemainingForClosedDomainLaunchPerMonth_Pre(
          $grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return isTierBenefitsRemainingForClosedDomainLaunchPerMonth(
        call, await request);
  }

  $async.Future<$2.ResponseMeta>
      isTierBenefitsRemainingForClosedDomainPageLearningPerMonth_Pre(
          $grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return isTierBenefitsRemainingForClosedDomainPageLearningPerMonth(
        call, await request);
  }

  $async.Future<$2.ResponseMeta>
      isTierBenefitsRemainingForClosedDomainInferencePerDay_Pre(
          $grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return isTierBenefitsRemainingForClosedDomainInferencePerDay(
        call, await request);
  }

  $async.Future<$2.ResponseMeta>
      isTierBenefitsRemainingForOpenDomainInferencePerDay_Pre(
          $grpc.ServiceCall call,
          $async.Future<$0.AccountServicesAccessAuthDetails> request) async {
    return isTierBenefitsRemainingForOpenDomainInferencePerDay(
        call, await request);
  }

  $async.Future<$2.ResponseMeta> chargeForClosedDomainLaunch_Pre(
      $grpc.ServiceCall call,
      $async.Future<$10.SpaceKnowledgeServicesAccessAuthDetails>
          request) async {
    return chargeForClosedDomainLaunch(call, await request);
  }

  $async.Future<$11.AccountPayInPublishableKey> getAccountPayInPublishableKey(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta> createAccountPayIn(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$11.AccountPayInAccessKey> getAccountPayInAccessKey(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$11.AccountPayInSecretKey> getAccountPayInSecretKey(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$11.GetAccountPayInIntentResponse> getAccountPayInIntent(
      $grpc.ServiceCall call, $11.GetAccountPayInIntentRequest request);
  $async.Future<$11.ListAllCardsResponse> listAllCards(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$11.SaveCardResponse> saveCard(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$11.AccountEthosCoinBalanceResponse> accountEthosCoinBalance(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta> creditAccountEthosCoinBalance(
      $grpc.ServiceCall call, $11.CreditAccountEthosCoinBalanceRequest request);
  $async.Future<$2.ResponseMeta> createAccountOpenGalaxyTierSubscription(
      $grpc.ServiceCall call,
      $11.CreateAccountOpenGalaxyTierSubscriptionRequest request);
  $async.Future<$2.ResponseMeta>
      verifyAccountOpenGalaxyPlayStoreSubscriptionCharge(
          $grpc.ServiceCall call,
          $11.VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest
              request);
  $async.Future<$2.ResponseMeta> confirmAccountOpenGalaxyPlayStoreSubscription(
      $grpc.ServiceCall call,
      $11.ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest request);
  $async.Future<$2.ResponseMeta> verifyAccountEthosCoinBalanceAddition(
      $grpc.ServiceCall call,
      $11.VerifyAccountEthosCoinBalanceAdditionRequest request);
  $async.Future<$2.ResponseMeta> confirmAccountEthosCoinBalanceAddition(
      $grpc.ServiceCall call,
      $11.ConfirmAccountEthosCoinBalanceAdditionRequest request);
  $async.Future<$2.ResponseMeta> updateAccountRemainingOpenGalaxyTierBenefits(
      $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta>
      isTierBenefitsRemainingForClosedDomainLaunchPerMonth(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta>
      isTierBenefitsRemainingForClosedDomainPageLearningPerMonth(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta>
      isTierBenefitsRemainingForClosedDomainInferencePerDay(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta>
      isTierBenefitsRemainingForOpenDomainInferencePerDay(
          $grpc.ServiceCall call, $0.AccountServicesAccessAuthDetails request);
  $async.Future<$2.ResponseMeta> chargeForClosedDomainLaunch(
      $grpc.ServiceCall call,
      $10.SpaceKnowledgeServicesAccessAuthDetails request);
}
