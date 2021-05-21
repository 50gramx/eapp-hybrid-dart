///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'account.pb.dart' as $21;
import '../../../google/protobuf/timestamp.pb.dart' as $54;

export '../../../google/protobuf/timestamp.pb.dart';
class AccountAssistant extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountAssistant', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantNameCode', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantName')
    ..aOM<$21.Account>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: $21.Account.create)
    ..aOM<$54.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastAssistedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AccountAssistant._() : super();
  factory AccountAssistant({
    $core.String? accountAssistantId,
    $core.int? accountAssistantNameCode,
    $core.String? accountAssistantName,
    $21.Account? account,
    $54.Timestamp? createdAt,
    $54.Timestamp? lastAssistedAt,
  }) {
    final _result = create();
    if (accountAssistantId != null) {
      _result.accountAssistantId = accountAssistantId;
    }
    if (accountAssistantNameCode != null) {
      _result.accountAssistantNameCode = accountAssistantNameCode;
    }
    if (accountAssistantName != null) {
      _result.accountAssistantName = accountAssistantName;
    }
    if (account != null) {
      _result.account = account;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (lastAssistedAt != null) {
      _result.lastAssistedAt = lastAssistedAt;
    }
    return _result;
  }
  factory AccountAssistant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountAssistant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountAssistant clone() => AccountAssistant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountAssistant copyWith(void Function(AccountAssistant) updates) => super.copyWith((message) => updates(message as AccountAssistant)) as AccountAssistant; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountAssistant create() => AccountAssistant._();
  AccountAssistant createEmptyInstance() => create();
  static $pb.PbList<AccountAssistant> createRepeated() => $pb.PbList<AccountAssistant>();
  @$core.pragma('dart2js:noInline')
  static AccountAssistant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountAssistant>(create);
  static AccountAssistant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountAssistantId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountAssistantId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAssistantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAssistantId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get accountAssistantNameCode => $_getIZ(1);
  @$pb.TagNumber(2)
  set accountAssistantNameCode($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountAssistantNameCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountAssistantNameCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountAssistantName => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountAssistantName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountAssistantName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountAssistantName() => clearField(3);

  @$pb.TagNumber(4)
  $21.Account get account => $_getN(3);
  @$pb.TagNumber(4)
  set account($21.Account v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccount() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccount() => clearField(4);
  @$pb.TagNumber(4)
  $21.Account ensureAccount() => $_ensure(3);

  @$pb.TagNumber(5)
  $54.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($54.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $54.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $54.Timestamp get lastAssistedAt => $_getN(5);
  @$pb.TagNumber(6)
  set lastAssistedAt($54.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastAssistedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastAssistedAt() => clearField(6);
  @$pb.TagNumber(6)
  $54.Timestamp ensureLastAssistedAt() => $_ensure(5);
}

class AccountAssistantConnectedAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountAssistantConnectedAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountConnectionId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AccountAssistantConnectedAccount._() : super();
  factory AccountAssistantConnectedAccount({
    $core.String? accountConnectionId,
    $core.String? accountId,
    $54.Timestamp? connectedAt,
  }) {
    final _result = create();
    if (accountConnectionId != null) {
      _result.accountConnectionId = accountConnectionId;
    }
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (connectedAt != null) {
      _result.connectedAt = connectedAt;
    }
    return _result;
  }
  factory AccountAssistantConnectedAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountAssistantConnectedAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountAssistantConnectedAccount clone() => AccountAssistantConnectedAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountAssistantConnectedAccount copyWith(void Function(AccountAssistantConnectedAccount) updates) => super.copyWith((message) => updates(message as AccountAssistantConnectedAccount)) as AccountAssistantConnectedAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountAssistantConnectedAccount create() => AccountAssistantConnectedAccount._();
  AccountAssistantConnectedAccount createEmptyInstance() => create();
  static $pb.PbList<AccountAssistantConnectedAccount> createRepeated() => $pb.PbList<AccountAssistantConnectedAccount>();
  @$core.pragma('dart2js:noInline')
  static AccountAssistantConnectedAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountAssistantConnectedAccount>(create);
  static AccountAssistantConnectedAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountConnectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountConnectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountConnectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountConnectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);

  @$pb.TagNumber(3)
  $54.Timestamp get connectedAt => $_getN(2);
  @$pb.TagNumber(3)
  set connectedAt($54.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasConnectedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearConnectedAt() => clearField(3);
  @$pb.TagNumber(3)
  $54.Timestamp ensureConnectedAt() => $_ensure(2);
}

class AccountAssistantConnectedAccountAssistant extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountAssistantConnectedAccountAssistant', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantConnectionId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantId')
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AccountAssistantConnectedAccountAssistant._() : super();
  factory AccountAssistantConnectedAccountAssistant({
    $core.String? accountAssistantConnectionId,
    $core.String? accountAssistantId,
    $54.Timestamp? connectedAt,
  }) {
    final _result = create();
    if (accountAssistantConnectionId != null) {
      _result.accountAssistantConnectionId = accountAssistantConnectionId;
    }
    if (accountAssistantId != null) {
      _result.accountAssistantId = accountAssistantId;
    }
    if (connectedAt != null) {
      _result.connectedAt = connectedAt;
    }
    return _result;
  }
  factory AccountAssistantConnectedAccountAssistant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountAssistantConnectedAccountAssistant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountAssistantConnectedAccountAssistant clone() => AccountAssistantConnectedAccountAssistant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountAssistantConnectedAccountAssistant copyWith(void Function(AccountAssistantConnectedAccountAssistant) updates) => super.copyWith((message) => updates(message as AccountAssistantConnectedAccountAssistant)) as AccountAssistantConnectedAccountAssistant; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountAssistantConnectedAccountAssistant create() => AccountAssistantConnectedAccountAssistant._();
  AccountAssistantConnectedAccountAssistant createEmptyInstance() => create();
  static $pb.PbList<AccountAssistantConnectedAccountAssistant> createRepeated() => $pb.PbList<AccountAssistantConnectedAccountAssistant>();
  @$core.pragma('dart2js:noInline')
  static AccountAssistantConnectedAccountAssistant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountAssistantConnectedAccountAssistant>(create);
  static AccountAssistantConnectedAccountAssistant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountAssistantConnectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountAssistantConnectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAssistantConnectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAssistantConnectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountAssistantId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountAssistantId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountAssistantId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountAssistantId() => clearField(2);

  @$pb.TagNumber(3)
  $54.Timestamp get connectedAt => $_getN(2);
  @$pb.TagNumber(3)
  set connectedAt($54.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasConnectedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearConnectedAt() => clearField(3);
  @$pb.TagNumber(3)
  $54.Timestamp ensureConnectedAt() => $_ensure(2);
}

class AccountAssistantMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountAssistantMeta', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantNameCode', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..hasRequiredFields = false
  ;

  AccountAssistantMeta._() : super();
  factory AccountAssistantMeta({
    $core.String? accountAssistantId,
    $core.int? accountAssistantNameCode,
    $core.String? accountAssistantName,
    $core.String? accountId,
  }) {
    final _result = create();
    if (accountAssistantId != null) {
      _result.accountAssistantId = accountAssistantId;
    }
    if (accountAssistantNameCode != null) {
      _result.accountAssistantNameCode = accountAssistantNameCode;
    }
    if (accountAssistantName != null) {
      _result.accountAssistantName = accountAssistantName;
    }
    if (accountId != null) {
      _result.accountId = accountId;
    }
    return _result;
  }
  factory AccountAssistantMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountAssistantMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountAssistantMeta clone() => AccountAssistantMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountAssistantMeta copyWith(void Function(AccountAssistantMeta) updates) => super.copyWith((message) => updates(message as AccountAssistantMeta)) as AccountAssistantMeta; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountAssistantMeta create() => AccountAssistantMeta._();
  AccountAssistantMeta createEmptyInstance() => create();
  static $pb.PbList<AccountAssistantMeta> createRepeated() => $pb.PbList<AccountAssistantMeta>();
  @$core.pragma('dart2js:noInline')
  static AccountAssistantMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountAssistantMeta>(create);
  static AccountAssistantMeta? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountAssistantId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountAssistantId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAssistantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAssistantId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get accountAssistantNameCode => $_getIZ(1);
  @$pb.TagNumber(2)
  set accountAssistantNameCode($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountAssistantNameCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountAssistantNameCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountAssistantName => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountAssistantName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountAssistantName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountAssistantName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get accountId => $_getSZ(3);
  @$pb.TagNumber(4)
  set accountId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccountId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountId() => clearField(4);
}

