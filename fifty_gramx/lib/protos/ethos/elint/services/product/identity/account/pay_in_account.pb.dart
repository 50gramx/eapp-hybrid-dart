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
import '../../../../entities/account.pb.dart' as $21;

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
    ..pc<$21.AccountPayInCardDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountPayInCards', $pb.PbFieldType.PM, subBuilder: $21.AccountPayInCardDetails.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ListAllCardsResponse._() : super();
  factory ListAllCardsResponse({
    $core.Iterable<$21.AccountPayInCardDetails>? accountPayInCards,
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
  $core.List<$21.AccountPayInCardDetails> get accountPayInCards => $_getList(0);

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

