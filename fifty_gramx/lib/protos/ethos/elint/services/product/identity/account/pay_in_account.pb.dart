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

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/generic.pb.dart' as $2;
import 'access_account.pb.dart' as $0;
import '../../../../entities/account.pb.dart' as $19;

import '../../../../entities/galaxy.pbenum.dart' as $54;
import 'pay_in_account.pbenum.dart';

export 'pay_in_account.pbenum.dart';

class AccountPayInPublishableKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountPayInPublishableKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  AccountPayInPublishableKey._() : super();
  factory AccountPayInPublishableKey({
    $core.String? key,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory AccountPayInPublishableKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountPayInPublishableKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountPayInPublishableKey clone() => AccountPayInPublishableKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountPayInPublishableKey copyWith(void Function(AccountPayInPublishableKey) updates) => super.copyWith((message) => updates(message as AccountPayInPublishableKey)) as AccountPayInPublishableKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountPayInPublishableKey create() => AccountPayInPublishableKey._();
  AccountPayInPublishableKey createEmptyInstance() => create();
  static $pb.PbList<AccountPayInPublishableKey> createRepeated() => $pb.PbList<AccountPayInPublishableKey>();
  @$core.pragma('dart2js:noInline')
  static AccountPayInPublishableKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountPayInPublishableKey>(create);
  static AccountPayInPublishableKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  $2.ResponseMeta get responseMeta => $_getN(1);
  @$pb.TagNumber(2)
  set responseMeta($2.ResponseMeta v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseMeta() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseMeta() => clearField(2);
  @$pb.TagNumber(2)
  $2.ResponseMeta ensureResponseMeta() => $_ensure(1);
}

class AccountPayInAccessKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountPayInAccessKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'jsonKey')
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  AccountPayInAccessKey._() : super();
  factory AccountPayInAccessKey({
    $core.String? jsonKey,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (jsonKey != null) {
      _result.jsonKey = jsonKey;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory AccountPayInAccessKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountPayInAccessKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountPayInAccessKey clone() => AccountPayInAccessKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountPayInAccessKey copyWith(void Function(AccountPayInAccessKey) updates) => super.copyWith((message) => updates(message as AccountPayInAccessKey)) as AccountPayInAccessKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountPayInAccessKey create() => AccountPayInAccessKey._();
  AccountPayInAccessKey createEmptyInstance() => create();
  static $pb.PbList<AccountPayInAccessKey> createRepeated() => $pb.PbList<AccountPayInAccessKey>();
  @$core.pragma('dart2js:noInline')
  static AccountPayInAccessKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountPayInAccessKey>(create);
  static AccountPayInAccessKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jsonKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set jsonKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasJsonKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearJsonKey() => clearField(1);

  @$pb.TagNumber(2)
  $2.ResponseMeta get responseMeta => $_getN(1);
  @$pb.TagNumber(2)
  set responseMeta($2.ResponseMeta v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseMeta() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseMeta() => clearField(2);
  @$pb.TagNumber(2)
  $2.ResponseMeta ensureResponseMeta() => $_ensure(1);
}

class AccountPayInSecretKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountPayInSecretKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'key')
    ..hasRequiredFields = false
  ;

  AccountPayInSecretKey._() : super();
  factory AccountPayInSecretKey({
    $core.String? key,
  }) {
    final _result = create();
    if (key != null) {
      _result.key = key;
    }
    return _result;
  }
  factory AccountPayInSecretKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountPayInSecretKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountPayInSecretKey clone() => AccountPayInSecretKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountPayInSecretKey copyWith(void Function(AccountPayInSecretKey) updates) => super.copyWith((message) => updates(message as AccountPayInSecretKey)) as AccountPayInSecretKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountPayInSecretKey create() => AccountPayInSecretKey._();
  AccountPayInSecretKey createEmptyInstance() => create();
  static $pb.PbList<AccountPayInSecretKey> createRepeated() => $pb.PbList<AccountPayInSecretKey>();
  @$core.pragma('dart2js:noInline')
  static AccountPayInSecretKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountPayInSecretKey>(create);
  static AccountPayInSecretKey? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
}

class GetAccountPayInIntentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountPayInIntentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preferBillingAnnually')
    ..hasRequiredFields = false
  ;

  GetAccountPayInIntentRequest._() : super();
  factory GetAccountPayInIntentRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $core.bool? preferBillingAnnually,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (preferBillingAnnually != null) {
      _result.preferBillingAnnually = preferBillingAnnually;
    }
    return _result;
  }
  factory GetAccountPayInIntentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountPayInIntentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountPayInIntentRequest clone() => GetAccountPayInIntentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountPayInIntentRequest copyWith(void Function(GetAccountPayInIntentRequest) updates) => super.copyWith((message) => updates(message as GetAccountPayInIntentRequest)) as GetAccountPayInIntentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountPayInIntentRequest create() => GetAccountPayInIntentRequest._();
  GetAccountPayInIntentRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountPayInIntentRequest> createRepeated() => $pb.PbList<GetAccountPayInIntentRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAccountPayInIntentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountPayInIntentRequest>(create);
  static GetAccountPayInIntentRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails($0.AccountServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get preferBillingAnnually => $_getBF(1);
  @$pb.TagNumber(2)
  set preferBillingAnnually($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPreferBillingAnnually() => $_has(1);
  @$pb.TagNumber(2)
  void clearPreferBillingAnnually() => clearField(2);
}

class GetAccountPayInIntentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountPayInIntentResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetAccountPayInIntentResponse._() : super();
  factory GetAccountPayInIntentResponse({
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetAccountPayInIntentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountPayInIntentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountPayInIntentResponse clone() => GetAccountPayInIntentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountPayInIntentResponse copyWith(void Function(GetAccountPayInIntentResponse) updates) => super.copyWith((message) => updates(message as GetAccountPayInIntentResponse)) as GetAccountPayInIntentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountPayInIntentResponse create() => GetAccountPayInIntentResponse._();
  GetAccountPayInIntentResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountPayInIntentResponse> createRepeated() => $pb.PbList<GetAccountPayInIntentResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountPayInIntentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountPayInIntentResponse>(create);
  static GetAccountPayInIntentResponse? _defaultInstance;

  @$pb.TagNumber(2)
  $2.ResponseMeta get responseMeta => $_getN(0);
  @$pb.TagNumber(2)
  set responseMeta($2.ResponseMeta v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseMeta() => $_has(0);
  @$pb.TagNumber(2)
  void clearResponseMeta() => clearField(2);
  @$pb.TagNumber(2)
  $2.ResponseMeta ensureResponseMeta() => $_ensure(0);
}

class ListAllCardsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListAllCardsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..pc<$19.AccountPayInCardDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountPayInCards', $pb.PbFieldType.PM, subBuilder: $19.AccountPayInCardDetails.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ListAllCardsResponse._() : super();
  factory ListAllCardsResponse({
    $core.Iterable<$19.AccountPayInCardDetails>? accountPayInCards,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (accountPayInCards != null) {
      _result.accountPayInCards.addAll(accountPayInCards);
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory ListAllCardsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListAllCardsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListAllCardsResponse clone() => ListAllCardsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListAllCardsResponse copyWith(void Function(ListAllCardsResponse) updates) => super.copyWith((message) => updates(message as ListAllCardsResponse)) as ListAllCardsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListAllCardsResponse create() => ListAllCardsResponse._();
  ListAllCardsResponse createEmptyInstance() => create();
  static $pb.PbList<ListAllCardsResponse> createRepeated() => $pb.PbList<ListAllCardsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAllCardsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAllCardsResponse>(create);
  static ListAllCardsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$19.AccountPayInCardDetails> get accountPayInCards => $_getList(0);

  @$pb.TagNumber(2)
  $2.ResponseMeta get responseMeta => $_getN(1);
  @$pb.TagNumber(2)
  set responseMeta($2.ResponseMeta v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseMeta() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseMeta() => clearField(2);
  @$pb.TagNumber(2)
  $2.ResponseMeta ensureResponseMeta() => $_ensure(1);
}

class SaveCardResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SaveCardResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'saveCardSecret')
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  SaveCardResponse._() : super();
  factory SaveCardResponse({
    $core.String? saveCardSecret,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (saveCardSecret != null) {
      _result.saveCardSecret = saveCardSecret;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory SaveCardResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SaveCardResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SaveCardResponse clone() => SaveCardResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SaveCardResponse copyWith(void Function(SaveCardResponse) updates) => super.copyWith((message) => updates(message as SaveCardResponse)) as SaveCardResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SaveCardResponse create() => SaveCardResponse._();
  SaveCardResponse createEmptyInstance() => create();
  static $pb.PbList<SaveCardResponse> createRepeated() => $pb.PbList<SaveCardResponse>();
  @$core.pragma('dart2js:noInline')
  static SaveCardResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveCardResponse>(create);
  static SaveCardResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get saveCardSecret => $_getSZ(0);
  @$pb.TagNumber(1)
  set saveCardSecret($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSaveCardSecret() => $_has(0);
  @$pb.TagNumber(1)
  void clearSaveCardSecret() => clearField(1);

  @$pb.TagNumber(2)
  $2.ResponseMeta get responseMeta => $_getN(1);
  @$pb.TagNumber(2)
  set responseMeta($2.ResponseMeta v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseMeta() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseMeta() => clearField(2);
  @$pb.TagNumber(2)
  $2.ResponseMeta ensureResponseMeta() => $_ensure(1);
}

class AccountEthosCoinBalanceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountEthosCoinBalanceResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$2.ResponseMeta>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balance', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  AccountEthosCoinBalanceResponse._() : super();
  factory AccountEthosCoinBalanceResponse({
    $2.ResponseMeta? responseMeta,
    $core.double? balance,
  }) {
    final _result = create();
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    if (balance != null) {
      _result.balance = balance;
    }
    return _result;
  }
  factory AccountEthosCoinBalanceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountEthosCoinBalanceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountEthosCoinBalanceResponse clone() => AccountEthosCoinBalanceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountEthosCoinBalanceResponse copyWith(void Function(AccountEthosCoinBalanceResponse) updates) => super.copyWith((message) => updates(message as AccountEthosCoinBalanceResponse)) as AccountEthosCoinBalanceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountEthosCoinBalanceResponse create() => AccountEthosCoinBalanceResponse._();
  AccountEthosCoinBalanceResponse createEmptyInstance() => create();
  static $pb.PbList<AccountEthosCoinBalanceResponse> createRepeated() => $pb.PbList<AccountEthosCoinBalanceResponse>();
  @$core.pragma('dart2js:noInline')
  static AccountEthosCoinBalanceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountEthosCoinBalanceResponse>(create);
  static AccountEthosCoinBalanceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $2.ResponseMeta get responseMeta => $_getN(0);
  @$pb.TagNumber(1)
  set responseMeta($2.ResponseMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponseMeta() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponseMeta() => clearField(1);
  @$pb.TagNumber(1)
  $2.ResponseMeta ensureResponseMeta() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get balance => $_getN(1);
  @$pb.TagNumber(2)
  set balance($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearBalance() => clearField(2);
}

class CreditAccountEthosCoinBalanceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreditAccountEthosCoinBalanceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addEthoscoin', $pb.PbFieldType.OD)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountCurrency')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playStoreSubscriptionId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'googlePlayPurchaseToken')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'playStoreProductId')
    ..hasRequiredFields = false
  ;

  CreditAccountEthosCoinBalanceRequest._() : super();
  factory CreditAccountEthosCoinBalanceRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $core.double? addEthoscoin,
    $core.String? accountCurrency,
    $core.String? playStoreSubscriptionId,
    $core.String? googlePlayPurchaseToken,
    $core.String? description,
    $core.String? playStoreProductId,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (addEthoscoin != null) {
      _result.addEthoscoin = addEthoscoin;
    }
    if (accountCurrency != null) {
      _result.accountCurrency = accountCurrency;
    }
    if (playStoreSubscriptionId != null) {
      _result.playStoreSubscriptionId = playStoreSubscriptionId;
    }
    if (googlePlayPurchaseToken != null) {
      _result.googlePlayPurchaseToken = googlePlayPurchaseToken;
    }
    if (description != null) {
      _result.description = description;
    }
    if (playStoreProductId != null) {
      _result.playStoreProductId = playStoreProductId;
    }
    return _result;
  }
  factory CreditAccountEthosCoinBalanceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreditAccountEthosCoinBalanceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreditAccountEthosCoinBalanceRequest clone() => CreditAccountEthosCoinBalanceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreditAccountEthosCoinBalanceRequest copyWith(void Function(CreditAccountEthosCoinBalanceRequest) updates) => super.copyWith((message) => updates(message as CreditAccountEthosCoinBalanceRequest)) as CreditAccountEthosCoinBalanceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreditAccountEthosCoinBalanceRequest create() => CreditAccountEthosCoinBalanceRequest._();
  CreditAccountEthosCoinBalanceRequest createEmptyInstance() => create();
  static $pb.PbList<CreditAccountEthosCoinBalanceRequest> createRepeated() => $pb.PbList<CreditAccountEthosCoinBalanceRequest>();
  @$core.pragma('dart2js:noInline')
  static CreditAccountEthosCoinBalanceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreditAccountEthosCoinBalanceRequest>(create);
  static CreditAccountEthosCoinBalanceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails($0.AccountServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get addEthoscoin => $_getN(1);
  @$pb.TagNumber(2)
  set addEthoscoin($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddEthoscoin() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddEthoscoin() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountCurrency => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountCurrency($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountCurrency() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountCurrency() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get playStoreSubscriptionId => $_getSZ(3);
  @$pb.TagNumber(4)
  set playStoreSubscriptionId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPlayStoreSubscriptionId() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlayStoreSubscriptionId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get googlePlayPurchaseToken => $_getSZ(4);
  @$pb.TagNumber(5)
  set googlePlayPurchaseToken($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasGooglePlayPurchaseToken() => $_has(4);
  @$pb.TagNumber(5)
  void clearGooglePlayPurchaseToken() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get playStoreProductId => $_getSZ(6);
  @$pb.TagNumber(7)
  set playStoreProductId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPlayStoreProductId() => $_has(6);
  @$pb.TagNumber(7)
  void clearPlayStoreProductId() => clearField(7);
}

class CreateAccountOpenGalaxyTierSubscriptionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateAccountOpenGalaxyTierSubscriptionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..e<$54.OpenGalaxyTierEnum>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openGalaxyTierEnum', $pb.PbFieldType.OE, defaultOrMaker: $54.OpenGalaxyTierEnum.FREE_TIER, valueOf: $54.OpenGalaxyTierEnum.valueOf, enumValues: $54.OpenGalaxyTierEnum.values)
    ..hasRequiredFields = false
  ;

  CreateAccountOpenGalaxyTierSubscriptionRequest._() : super();
  factory CreateAccountOpenGalaxyTierSubscriptionRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $54.OpenGalaxyTierEnum? openGalaxyTierEnum,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (openGalaxyTierEnum != null) {
      _result.openGalaxyTierEnum = openGalaxyTierEnum;
    }
    return _result;
  }
  factory CreateAccountOpenGalaxyTierSubscriptionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateAccountOpenGalaxyTierSubscriptionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateAccountOpenGalaxyTierSubscriptionRequest clone() => CreateAccountOpenGalaxyTierSubscriptionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateAccountOpenGalaxyTierSubscriptionRequest copyWith(void Function(CreateAccountOpenGalaxyTierSubscriptionRequest) updates) => super.copyWith((message) => updates(message as CreateAccountOpenGalaxyTierSubscriptionRequest)) as CreateAccountOpenGalaxyTierSubscriptionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAccountOpenGalaxyTierSubscriptionRequest create() => CreateAccountOpenGalaxyTierSubscriptionRequest._();
  CreateAccountOpenGalaxyTierSubscriptionRequest createEmptyInstance() => create();
  static $pb.PbList<CreateAccountOpenGalaxyTierSubscriptionRequest> createRepeated() => $pb.PbList<CreateAccountOpenGalaxyTierSubscriptionRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateAccountOpenGalaxyTierSubscriptionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAccountOpenGalaxyTierSubscriptionRequest>(create);
  static CreateAccountOpenGalaxyTierSubscriptionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails($0.AccountServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $54.OpenGalaxyTierEnum get openGalaxyTierEnum => $_getN(1);
  @$pb.TagNumber(2)
  set openGalaxyTierEnum($54.OpenGalaxyTierEnum v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOpenGalaxyTierEnum() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpenGalaxyTierEnum() => clearField(2);
}

class VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..e<$54.OpenGalaxyTierEnum>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openGalaxyTierEnum', $pb.PbFieldType.OE, defaultOrMaker: $54.OpenGalaxyTierEnum.FREE_TIER, valueOf: $54.OpenGalaxyTierEnum.valueOf, enumValues: $54.OpenGalaxyTierEnum.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'googlePlayPurchaseToken')
    ..hasRequiredFields = false
  ;

  VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest._() : super();
  factory VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $54.OpenGalaxyTierEnum? openGalaxyTierEnum,
    $core.String? googlePlayPurchaseToken,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (openGalaxyTierEnum != null) {
      _result.openGalaxyTierEnum = openGalaxyTierEnum;
    }
    if (googlePlayPurchaseToken != null) {
      _result.googlePlayPurchaseToken = googlePlayPurchaseToken;
    }
    return _result;
  }
  factory VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest clone() => VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest copyWith(void Function(VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest) updates) => super.copyWith((message) => updates(message as VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest)) as VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest create() => VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest._();
  VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest> createRepeated() => $pb.PbList<VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest>(create);
  static VerifyAccountOpenGalaxyPlayStoreSubscriptionChargeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails($0.AccountServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $54.OpenGalaxyTierEnum get openGalaxyTierEnum => $_getN(1);
  @$pb.TagNumber(2)
  set openGalaxyTierEnum($54.OpenGalaxyTierEnum v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOpenGalaxyTierEnum() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpenGalaxyTierEnum() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get googlePlayPurchaseToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set googlePlayPurchaseToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGooglePlayPurchaseToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearGooglePlayPurchaseToken() => clearField(3);
}

class ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..e<$54.OpenGalaxyTierEnum>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openGalaxyTierEnum', $pb.PbFieldType.OE, defaultOrMaker: $54.OpenGalaxyTierEnum.FREE_TIER, valueOf: $54.OpenGalaxyTierEnum.valueOf, enumValues: $54.OpenGalaxyTierEnum.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'googlePlayPurchaseToken')
    ..hasRequiredFields = false
  ;

  ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest._() : super();
  factory ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $54.OpenGalaxyTierEnum? openGalaxyTierEnum,
    $core.String? googlePlayPurchaseToken,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (openGalaxyTierEnum != null) {
      _result.openGalaxyTierEnum = openGalaxyTierEnum;
    }
    if (googlePlayPurchaseToken != null) {
      _result.googlePlayPurchaseToken = googlePlayPurchaseToken;
    }
    return _result;
  }
  factory ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest clone() => ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest copyWith(void Function(ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest) updates) => super.copyWith((message) => updates(message as ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest)) as ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest create() => ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest._();
  ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest createEmptyInstance() => create();
  static $pb.PbList<ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest> createRepeated() => $pb.PbList<ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest>();
  @$core.pragma('dart2js:noInline')
  static ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest>(create);
  static ConfirmAccountOpenGalaxyPlayStoreSubscriptionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails($0.AccountServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $54.OpenGalaxyTierEnum get openGalaxyTierEnum => $_getN(1);
  @$pb.TagNumber(2)
  set openGalaxyTierEnum($54.OpenGalaxyTierEnum v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOpenGalaxyTierEnum() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpenGalaxyTierEnum() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get googlePlayPurchaseToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set googlePlayPurchaseToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGooglePlayPurchaseToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearGooglePlayPurchaseToken() => clearField(3);
}

class ConfirmAccountEthosCoinBalanceAdditionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConfirmAccountEthosCoinBalanceAdditionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..e<AddEthosCoinEnum>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addEthosCoinEnum', $pb.PbFieldType.OE, defaultOrMaker: AddEthosCoinEnum.ADD_100_ETHOSCOIN, valueOf: AddEthosCoinEnum.valueOf, enumValues: AddEthosCoinEnum.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'googlePlayPurchaseToken')
    ..hasRequiredFields = false
  ;

  ConfirmAccountEthosCoinBalanceAdditionRequest._() : super();
  factory ConfirmAccountEthosCoinBalanceAdditionRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    AddEthosCoinEnum? addEthosCoinEnum,
    $core.String? googlePlayPurchaseToken,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (addEthosCoinEnum != null) {
      _result.addEthosCoinEnum = addEthosCoinEnum;
    }
    if (googlePlayPurchaseToken != null) {
      _result.googlePlayPurchaseToken = googlePlayPurchaseToken;
    }
    return _result;
  }
  factory ConfirmAccountEthosCoinBalanceAdditionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfirmAccountEthosCoinBalanceAdditionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfirmAccountEthosCoinBalanceAdditionRequest clone() => ConfirmAccountEthosCoinBalanceAdditionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfirmAccountEthosCoinBalanceAdditionRequest copyWith(void Function(ConfirmAccountEthosCoinBalanceAdditionRequest) updates) => super.copyWith((message) => updates(message as ConfirmAccountEthosCoinBalanceAdditionRequest)) as ConfirmAccountEthosCoinBalanceAdditionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfirmAccountEthosCoinBalanceAdditionRequest create() => ConfirmAccountEthosCoinBalanceAdditionRequest._();
  ConfirmAccountEthosCoinBalanceAdditionRequest createEmptyInstance() => create();
  static $pb.PbList<ConfirmAccountEthosCoinBalanceAdditionRequest> createRepeated() => $pb.PbList<ConfirmAccountEthosCoinBalanceAdditionRequest>();
  @$core.pragma('dart2js:noInline')
  static ConfirmAccountEthosCoinBalanceAdditionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfirmAccountEthosCoinBalanceAdditionRequest>(create);
  static ConfirmAccountEthosCoinBalanceAdditionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails($0.AccountServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  AddEthosCoinEnum get addEthosCoinEnum => $_getN(1);
  @$pb.TagNumber(2)
  set addEthosCoinEnum(AddEthosCoinEnum v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddEthosCoinEnum() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddEthosCoinEnum() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get googlePlayPurchaseToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set googlePlayPurchaseToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGooglePlayPurchaseToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearGooglePlayPurchaseToken() => clearField(3);
}

class VerifyAccountEthosCoinBalanceAdditionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyAccountEthosCoinBalanceAdditionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..e<AddEthosCoinEnum>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addEthosCoinEnum', $pb.PbFieldType.OE, defaultOrMaker: AddEthosCoinEnum.ADD_100_ETHOSCOIN, valueOf: AddEthosCoinEnum.valueOf, enumValues: AddEthosCoinEnum.values)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'googlePlayPurchaseToken')
    ..hasRequiredFields = false
  ;

  VerifyAccountEthosCoinBalanceAdditionRequest._() : super();
  factory VerifyAccountEthosCoinBalanceAdditionRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    AddEthosCoinEnum? addEthosCoinEnum,
    $core.String? googlePlayPurchaseToken,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (addEthosCoinEnum != null) {
      _result.addEthosCoinEnum = addEthosCoinEnum;
    }
    if (googlePlayPurchaseToken != null) {
      _result.googlePlayPurchaseToken = googlePlayPurchaseToken;
    }
    return _result;
  }
  factory VerifyAccountEthosCoinBalanceAdditionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyAccountEthosCoinBalanceAdditionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyAccountEthosCoinBalanceAdditionRequest clone() => VerifyAccountEthosCoinBalanceAdditionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyAccountEthosCoinBalanceAdditionRequest copyWith(void Function(VerifyAccountEthosCoinBalanceAdditionRequest) updates) => super.copyWith((message) => updates(message as VerifyAccountEthosCoinBalanceAdditionRequest)) as VerifyAccountEthosCoinBalanceAdditionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyAccountEthosCoinBalanceAdditionRequest create() => VerifyAccountEthosCoinBalanceAdditionRequest._();
  VerifyAccountEthosCoinBalanceAdditionRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyAccountEthosCoinBalanceAdditionRequest> createRepeated() => $pb.PbList<VerifyAccountEthosCoinBalanceAdditionRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyAccountEthosCoinBalanceAdditionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyAccountEthosCoinBalanceAdditionRequest>(create);
  static VerifyAccountEthosCoinBalanceAdditionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails($0.AccountServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  AddEthosCoinEnum get addEthosCoinEnum => $_getN(1);
  @$pb.TagNumber(2)
  set addEthosCoinEnum(AddEthosCoinEnum v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddEthosCoinEnum() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddEthosCoinEnum() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get googlePlayPurchaseToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set googlePlayPurchaseToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGooglePlayPurchaseToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearGooglePlayPurchaseToken() => clearField(3);
}

