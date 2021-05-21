///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/access_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/generic.pb.dart' as $2;
import '../../../../entities/account_assistant.pb.dart' as $6;
import '../../../../../../google/protobuf/timestamp.pb.dart' as $54;

class AccountAssistantAccessTokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountAssistantAccessTokenResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOM<AccountAssistantServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantServicesAccessAuthDetails', subBuilder: AccountAssistantServicesAccessAuthDetails.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  AccountAssistantAccessTokenResponse._() : super();
  factory AccountAssistantAccessTokenResponse({
    AccountAssistantServicesAccessAuthDetails? accountAssistantServicesAccessAuthDetails,
    $2.ResponseMeta? meta,
  }) {
    final _result = create();
    if (accountAssistantServicesAccessAuthDetails != null) {
      _result.accountAssistantServicesAccessAuthDetails = accountAssistantServicesAccessAuthDetails;
    }
    if (meta != null) {
      _result.meta = meta;
    }
    return _result;
  }
  factory AccountAssistantAccessTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountAssistantAccessTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountAssistantAccessTokenResponse clone() => AccountAssistantAccessTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountAssistantAccessTokenResponse copyWith(void Function(AccountAssistantAccessTokenResponse) updates) => super.copyWith((message) => updates(message as AccountAssistantAccessTokenResponse)) as AccountAssistantAccessTokenResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountAssistantAccessTokenResponse create() => AccountAssistantAccessTokenResponse._();
  AccountAssistantAccessTokenResponse createEmptyInstance() => create();
  static $pb.PbList<AccountAssistantAccessTokenResponse> createRepeated() => $pb.PbList<AccountAssistantAccessTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static AccountAssistantAccessTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountAssistantAccessTokenResponse>(create);
  static AccountAssistantAccessTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AccountAssistantServicesAccessAuthDetails get accountAssistantServicesAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accountAssistantServicesAccessAuthDetails(AccountAssistantServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAssistantServicesAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAssistantServicesAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  AccountAssistantServicesAccessAuthDetails ensureAccountAssistantServicesAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.ResponseMeta get meta => $_getN(1);
  @$pb.TagNumber(2)
  set meta($2.ResponseMeta v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMeta() => $_has(1);
  @$pb.TagNumber(2)
  void clearMeta() => clearField(2);
  @$pb.TagNumber(2)
  $2.ResponseMeta ensureMeta() => $_ensure(1);
}

class AccountAssistantAccessTokenWithMasterConnectionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountAssistantAccessTokenWithMasterConnectionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantId')
    ..aOM<$6.AccountAssistantConnectedAccount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $6.AccountAssistantConnectedAccount.create)
    ..hasRequiredFields = false
  ;

  AccountAssistantAccessTokenWithMasterConnectionRequest._() : super();
  factory AccountAssistantAccessTokenWithMasterConnectionRequest({
    $core.String? accountAssistantId,
    $6.AccountAssistantConnectedAccount? connectedAccount,
  }) {
    final _result = create();
    if (accountAssistantId != null) {
      _result.accountAssistantId = accountAssistantId;
    }
    if (connectedAccount != null) {
      _result.connectedAccount = connectedAccount;
    }
    return _result;
  }
  factory AccountAssistantAccessTokenWithMasterConnectionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountAssistantAccessTokenWithMasterConnectionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountAssistantAccessTokenWithMasterConnectionRequest clone() => AccountAssistantAccessTokenWithMasterConnectionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountAssistantAccessTokenWithMasterConnectionRequest copyWith(void Function(AccountAssistantAccessTokenWithMasterConnectionRequest) updates) => super.copyWith((message) => updates(message as AccountAssistantAccessTokenWithMasterConnectionRequest)) as AccountAssistantAccessTokenWithMasterConnectionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountAssistantAccessTokenWithMasterConnectionRequest create() => AccountAssistantAccessTokenWithMasterConnectionRequest._();
  AccountAssistantAccessTokenWithMasterConnectionRequest createEmptyInstance() => create();
  static $pb.PbList<AccountAssistantAccessTokenWithMasterConnectionRequest> createRepeated() => $pb.PbList<AccountAssistantAccessTokenWithMasterConnectionRequest>();
  @$core.pragma('dart2js:noInline')
  static AccountAssistantAccessTokenWithMasterConnectionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountAssistantAccessTokenWithMasterConnectionRequest>(create);
  static AccountAssistantAccessTokenWithMasterConnectionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountAssistantId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountAssistantId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAssistantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAssistantId() => clearField(1);

  @$pb.TagNumber(2)
  $6.AccountAssistantConnectedAccount get connectedAccount => $_getN(1);
  @$pb.TagNumber(2)
  set connectedAccount($6.AccountAssistantConnectedAccount v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectedAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectedAccount() => clearField(2);
  @$pb.TagNumber(2)
  $6.AccountAssistantConnectedAccount ensureConnectedAccount() => $_ensure(1);
}

class AccessMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccessMeta', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessDone')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessMessage')
    ..hasRequiredFields = false
  ;

  AccessMeta._() : super();
  factory AccessMeta({
    $core.bool? accessDone,
    $core.String? accessMessage,
  }) {
    final _result = create();
    if (accessDone != null) {
      _result.accessDone = accessDone;
    }
    if (accessMessage != null) {
      _result.accessMessage = accessMessage;
    }
    return _result;
  }
  factory AccessMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccessMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccessMeta clone() => AccessMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccessMeta copyWith(void Function(AccessMeta) updates) => super.copyWith((message) => updates(message as AccessMeta)) as AccessMeta; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccessMeta create() => AccessMeta._();
  AccessMeta createEmptyInstance() => create();
  static $pb.PbList<AccessMeta> createRepeated() => $pb.PbList<AccessMeta>();
  @$core.pragma('dart2js:noInline')
  static AccessMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessMeta>(create);
  static AccessMeta? _defaultInstance;

  @$pb.TagNumber(2)
  $core.bool get accessDone => $_getBF(0);
  @$pb.TagNumber(2)
  set accessDone($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccessDone() => $_has(0);
  @$pb.TagNumber(2)
  void clearAccessDone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accessMessage => $_getSZ(1);
  @$pb.TagNumber(3)
  set accessMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccessMessage() => $_has(1);
  @$pb.TagNumber(3)
  void clearAccessMessage() => clearField(3);
}

class ValidateAccessMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValidateAccessMeta', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validationDone')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validationMessage')
    ..hasRequiredFields = false
  ;

  ValidateAccessMeta._() : super();
  factory ValidateAccessMeta({
    $core.bool? validationDone,
    $core.String? validationMessage,
  }) {
    final _result = create();
    if (validationDone != null) {
      _result.validationDone = validationDone;
    }
    if (validationMessage != null) {
      _result.validationMessage = validationMessage;
    }
    return _result;
  }
  factory ValidateAccessMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAccessMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAccessMeta clone() => ValidateAccessMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAccessMeta copyWith(void Function(ValidateAccessMeta) updates) => super.copyWith((message) => updates(message as ValidateAccessMeta)) as ValidateAccessMeta; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidateAccessMeta create() => ValidateAccessMeta._();
  ValidateAccessMeta createEmptyInstance() => create();
  static $pb.PbList<ValidateAccessMeta> createRepeated() => $pb.PbList<ValidateAccessMeta>();
  @$core.pragma('dart2js:noInline')
  static ValidateAccessMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAccessMeta>(create);
  static ValidateAccessMeta? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get validationDone => $_getBF(0);
  @$pb.TagNumber(1)
  set validationDone($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValidationDone() => $_has(0);
  @$pb.TagNumber(1)
  void clearValidationDone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get validationMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set validationMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValidationMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearValidationMessage() => clearField(2);
}

class AccountAssistantServicesAccessAuthDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountAssistantServicesAccessAuthDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOM<$6.AccountAssistant>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistant', subBuilder: $6.AccountAssistant.create)
    ..aOM<$2.PersistentSessionTokenDetails>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantServicesAccessSessionTokenDetails', subBuilder: $2.PersistentSessionTokenDetails.create)
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AccountAssistantServicesAccessAuthDetails._() : super();
  factory AccountAssistantServicesAccessAuthDetails({
    $6.AccountAssistant? accountAssistant,
    $2.PersistentSessionTokenDetails? accountAssistantServicesAccessSessionTokenDetails,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (accountAssistant != null) {
      _result.accountAssistant = accountAssistant;
    }
    if (accountAssistantServicesAccessSessionTokenDetails != null) {
      _result.accountAssistantServicesAccessSessionTokenDetails = accountAssistantServicesAccessSessionTokenDetails;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory AccountAssistantServicesAccessAuthDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountAssistantServicesAccessAuthDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountAssistantServicesAccessAuthDetails clone() => AccountAssistantServicesAccessAuthDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountAssistantServicesAccessAuthDetails copyWith(void Function(AccountAssistantServicesAccessAuthDetails) updates) => super.copyWith((message) => updates(message as AccountAssistantServicesAccessAuthDetails)) as AccountAssistantServicesAccessAuthDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountAssistantServicesAccessAuthDetails create() => AccountAssistantServicesAccessAuthDetails._();
  AccountAssistantServicesAccessAuthDetails createEmptyInstance() => create();
  static $pb.PbList<AccountAssistantServicesAccessAuthDetails> createRepeated() => $pb.PbList<AccountAssistantServicesAccessAuthDetails>();
  @$core.pragma('dart2js:noInline')
  static AccountAssistantServicesAccessAuthDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountAssistantServicesAccessAuthDetails>(create);
  static AccountAssistantServicesAccessAuthDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $6.AccountAssistant get accountAssistant => $_getN(0);
  @$pb.TagNumber(1)
  set accountAssistant($6.AccountAssistant v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAssistant() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAssistant() => clearField(1);
  @$pb.TagNumber(1)
  $6.AccountAssistant ensureAccountAssistant() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.PersistentSessionTokenDetails get accountAssistantServicesAccessSessionTokenDetails => $_getN(1);
  @$pb.TagNumber(2)
  set accountAssistantServicesAccessSessionTokenDetails($2.PersistentSessionTokenDetails v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountAssistantServicesAccessSessionTokenDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountAssistantServicesAccessSessionTokenDetails() => clearField(2);
  @$pb.TagNumber(2)
  $2.PersistentSessionTokenDetails ensureAccountAssistantServicesAccessSessionTokenDetails() => $_ensure(1);

  @$pb.TagNumber(3)
  $54.Timestamp get requestedAt => $_getN(2);
  @$pb.TagNumber(3)
  set requestedAt($54.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestedAt() => clearField(3);
  @$pb.TagNumber(3)
  $54.Timestamp ensureRequestedAt() => $_ensure(2);
}

