///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $54;

import 'account.pbenum.dart';

export '../../../google/protobuf/timestamp.pb.dart';
export 'account.pbenum.dart';

class Account extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Account', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAnalyticsId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountPersonalEmailId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountWorkEmailId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountCountryCode')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobileNumber')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountFirstName')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountLastName')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountGalaxyId')
    ..aOM<$54.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountBirthAt', subBuilder: $54.Timestamp.create)
    ..e<AccountGender>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountGender', $pb.PbFieldType.OE, defaultOrMaker: AccountGender.UNKNOWN, valueOf: AccountGender.valueOf, enumValues: AccountGender.values)
    ..aOM<$54.Timestamp>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $54.Timestamp.create)
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountBillingActive')
    ..hasRequiredFields = false
  ;

  Account._() : super();
  factory Account({
    $core.String? accountAnalyticsId,
    $core.String? accountId,
    $core.String? accountPersonalEmailId,
    $core.String? accountWorkEmailId,
    $core.String? accountCountryCode,
    $core.String? accountMobileNumber,
    $core.String? accountFirstName,
    $core.String? accountLastName,
    $core.String? accountGalaxyId,
    $54.Timestamp? accountBirthAt,
    AccountGender? accountGender,
    $54.Timestamp? createdAt,
    $core.String? accountBillingActive,
  }) {
    final _result = create();
    if (accountAnalyticsId != null) {
      _result.accountAnalyticsId = accountAnalyticsId;
    }
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (accountPersonalEmailId != null) {
      _result.accountPersonalEmailId = accountPersonalEmailId;
    }
    if (accountWorkEmailId != null) {
      _result.accountWorkEmailId = accountWorkEmailId;
    }
    if (accountCountryCode != null) {
      _result.accountCountryCode = accountCountryCode;
    }
    if (accountMobileNumber != null) {
      _result.accountMobileNumber = accountMobileNumber;
    }
    if (accountFirstName != null) {
      _result.accountFirstName = accountFirstName;
    }
    if (accountLastName != null) {
      _result.accountLastName = accountLastName;
    }
    if (accountGalaxyId != null) {
      _result.accountGalaxyId = accountGalaxyId;
    }
    if (accountBirthAt != null) {
      _result.accountBirthAt = accountBirthAt;
    }
    if (accountGender != null) {
      _result.accountGender = accountGender;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (accountBillingActive != null) {
      _result.accountBillingActive = accountBillingActive;
    }
    return _result;
  }
  factory Account.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Account.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Account clone() => Account()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Account copyWith(void Function(Account) updates) => super.copyWith((message) => updates(message as Account)) as Account; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();
  Account createEmptyInstance() => create();
  static $pb.PbList<Account> createRepeated() => $pb.PbList<Account>();
  @$core.pragma('dart2js:noInline')
  static Account getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Account>(create);
  static Account? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountAnalyticsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountAnalyticsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAnalyticsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAnalyticsId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountPersonalEmailId => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountPersonalEmailId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountPersonalEmailId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountPersonalEmailId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get accountWorkEmailId => $_getSZ(3);
  @$pb.TagNumber(4)
  set accountWorkEmailId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccountWorkEmailId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountWorkEmailId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get accountCountryCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set accountCountryCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccountCountryCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccountCountryCode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get accountMobileNumber => $_getSZ(5);
  @$pb.TagNumber(6)
  set accountMobileNumber($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAccountMobileNumber() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccountMobileNumber() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get accountFirstName => $_getSZ(6);
  @$pb.TagNumber(7)
  set accountFirstName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAccountFirstName() => $_has(6);
  @$pb.TagNumber(7)
  void clearAccountFirstName() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get accountLastName => $_getSZ(7);
  @$pb.TagNumber(8)
  set accountLastName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAccountLastName() => $_has(7);
  @$pb.TagNumber(8)
  void clearAccountLastName() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get accountGalaxyId => $_getSZ(8);
  @$pb.TagNumber(9)
  set accountGalaxyId($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasAccountGalaxyId() => $_has(8);
  @$pb.TagNumber(9)
  void clearAccountGalaxyId() => clearField(9);

  @$pb.TagNumber(10)
  $54.Timestamp get accountBirthAt => $_getN(9);
  @$pb.TagNumber(10)
  set accountBirthAt($54.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasAccountBirthAt() => $_has(9);
  @$pb.TagNumber(10)
  void clearAccountBirthAt() => clearField(10);
  @$pb.TagNumber(10)
  $54.Timestamp ensureAccountBirthAt() => $_ensure(9);

  @$pb.TagNumber(11)
  AccountGender get accountGender => $_getN(10);
  @$pb.TagNumber(11)
  set accountGender(AccountGender v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasAccountGender() => $_has(10);
  @$pb.TagNumber(11)
  void clearAccountGender() => clearField(11);

  @$pb.TagNumber(12)
  $54.Timestamp get createdAt => $_getN(11);
  @$pb.TagNumber(12)
  set createdAt($54.Timestamp v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasCreatedAt() => $_has(11);
  @$pb.TagNumber(12)
  void clearCreatedAt() => clearField(12);
  @$pb.TagNumber(12)
  $54.Timestamp ensureCreatedAt() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.String get accountBillingActive => $_getSZ(12);
  @$pb.TagNumber(13)
  set accountBillingActive($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAccountBillingActive() => $_has(12);
  @$pb.TagNumber(13)
  void clearAccountBillingActive() => clearField(13);
}

class AccountSpaceKnowledgeAccessMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountSpaceKnowledgeAccessMeta', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'knowledgeSpaceAccessSessionToken')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeId')
    ..aOM<$54.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AccountSpaceKnowledgeAccessMeta._() : super();
  factory AccountSpaceKnowledgeAccessMeta({
    $core.String? accountId,
    $core.String? knowledgeSpaceAccessSessionToken,
    $core.String? spaceKnowledgeId,
    $54.Timestamp? accessAt,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (knowledgeSpaceAccessSessionToken != null) {
      _result.knowledgeSpaceAccessSessionToken = knowledgeSpaceAccessSessionToken;
    }
    if (spaceKnowledgeId != null) {
      _result.spaceKnowledgeId = spaceKnowledgeId;
    }
    if (accessAt != null) {
      _result.accessAt = accessAt;
    }
    return _result;
  }
  factory AccountSpaceKnowledgeAccessMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountSpaceKnowledgeAccessMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountSpaceKnowledgeAccessMeta clone() => AccountSpaceKnowledgeAccessMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountSpaceKnowledgeAccessMeta copyWith(void Function(AccountSpaceKnowledgeAccessMeta) updates) => super.copyWith((message) => updates(message as AccountSpaceKnowledgeAccessMeta)) as AccountSpaceKnowledgeAccessMeta; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountSpaceKnowledgeAccessMeta create() => AccountSpaceKnowledgeAccessMeta._();
  AccountSpaceKnowledgeAccessMeta createEmptyInstance() => create();
  static $pb.PbList<AccountSpaceKnowledgeAccessMeta> createRepeated() => $pb.PbList<AccountSpaceKnowledgeAccessMeta>();
  @$core.pragma('dart2js:noInline')
  static AccountSpaceKnowledgeAccessMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountSpaceKnowledgeAccessMeta>(create);
  static AccountSpaceKnowledgeAccessMeta? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get knowledgeSpaceAccessSessionToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set knowledgeSpaceAccessSessionToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKnowledgeSpaceAccessSessionToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearKnowledgeSpaceAccessSessionToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get spaceKnowledgeId => $_getSZ(2);
  @$pb.TagNumber(3)
  set spaceKnowledgeId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceKnowledgeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceKnowledgeId() => clearField(3);

  @$pb.TagNumber(4)
  $54.Timestamp get accessAt => $_getN(3);
  @$pb.TagNumber(4)
  set accessAt($54.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccessAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccessAt() => clearField(4);
  @$pb.TagNumber(4)
  $54.Timestamp ensureAccessAt() => $_ensure(3);
}

class AccountSpaceKnowledgeDomainAccessMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountSpaceKnowledgeDomainAccessMeta', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'knowledgeSpaceAccessSessionToken')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainId')
    ..aOM<$54.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AccountSpaceKnowledgeDomainAccessMeta._() : super();
  factory AccountSpaceKnowledgeDomainAccessMeta({
    $core.String? accountId,
    $core.String? knowledgeSpaceAccessSessionToken,
    $core.String? spaceKnowledgeId,
    $core.String? spaceKnowledgeDomainId,
    $54.Timestamp? accessAt,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (knowledgeSpaceAccessSessionToken != null) {
      _result.knowledgeSpaceAccessSessionToken = knowledgeSpaceAccessSessionToken;
    }
    if (spaceKnowledgeId != null) {
      _result.spaceKnowledgeId = spaceKnowledgeId;
    }
    if (spaceKnowledgeDomainId != null) {
      _result.spaceKnowledgeDomainId = spaceKnowledgeDomainId;
    }
    if (accessAt != null) {
      _result.accessAt = accessAt;
    }
    return _result;
  }
  factory AccountSpaceKnowledgeDomainAccessMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountSpaceKnowledgeDomainAccessMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountSpaceKnowledgeDomainAccessMeta clone() => AccountSpaceKnowledgeDomainAccessMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountSpaceKnowledgeDomainAccessMeta copyWith(void Function(AccountSpaceKnowledgeDomainAccessMeta) updates) => super.copyWith((message) => updates(message as AccountSpaceKnowledgeDomainAccessMeta)) as AccountSpaceKnowledgeDomainAccessMeta; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountSpaceKnowledgeDomainAccessMeta create() => AccountSpaceKnowledgeDomainAccessMeta._();
  AccountSpaceKnowledgeDomainAccessMeta createEmptyInstance() => create();
  static $pb.PbList<AccountSpaceKnowledgeDomainAccessMeta> createRepeated() => $pb.PbList<AccountSpaceKnowledgeDomainAccessMeta>();
  @$core.pragma('dart2js:noInline')
  static AccountSpaceKnowledgeDomainAccessMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountSpaceKnowledgeDomainAccessMeta>(create);
  static AccountSpaceKnowledgeDomainAccessMeta? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get knowledgeSpaceAccessSessionToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set knowledgeSpaceAccessSessionToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKnowledgeSpaceAccessSessionToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearKnowledgeSpaceAccessSessionToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get spaceKnowledgeId => $_getSZ(2);
  @$pb.TagNumber(3)
  set spaceKnowledgeId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceKnowledgeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceKnowledgeId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get spaceKnowledgeDomainId => $_getSZ(3);
  @$pb.TagNumber(4)
  set spaceKnowledgeDomainId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpaceKnowledgeDomainId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpaceKnowledgeDomainId() => clearField(4);

  @$pb.TagNumber(5)
  $54.Timestamp get accessAt => $_getN(4);
  @$pb.TagNumber(5)
  set accessAt($54.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccessAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccessAt() => clearField(5);
  @$pb.TagNumber(5)
  $54.Timestamp ensureAccessAt() => $_ensure(4);
}

class AccountSpaceKnowledgeDomainFileAccessMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountSpaceKnowledgeDomainFileAccessMeta', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'knowledgeSpaceAccessSessionToken')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileId')
    ..aOM<$54.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AccountSpaceKnowledgeDomainFileAccessMeta._() : super();
  factory AccountSpaceKnowledgeDomainFileAccessMeta({
    $core.String? accountId,
    $core.String? knowledgeSpaceAccessSessionToken,
    $core.String? spaceKnowledgeId,
    $core.String? spaceKnowledgeDomainId,
    $core.String? spaceKnowledgeDomainFileId,
    $54.Timestamp? accessAt,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (knowledgeSpaceAccessSessionToken != null) {
      _result.knowledgeSpaceAccessSessionToken = knowledgeSpaceAccessSessionToken;
    }
    if (spaceKnowledgeId != null) {
      _result.spaceKnowledgeId = spaceKnowledgeId;
    }
    if (spaceKnowledgeDomainId != null) {
      _result.spaceKnowledgeDomainId = spaceKnowledgeDomainId;
    }
    if (spaceKnowledgeDomainFileId != null) {
      _result.spaceKnowledgeDomainFileId = spaceKnowledgeDomainFileId;
    }
    if (accessAt != null) {
      _result.accessAt = accessAt;
    }
    return _result;
  }
  factory AccountSpaceKnowledgeDomainFileAccessMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountSpaceKnowledgeDomainFileAccessMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountSpaceKnowledgeDomainFileAccessMeta clone() => AccountSpaceKnowledgeDomainFileAccessMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountSpaceKnowledgeDomainFileAccessMeta copyWith(void Function(AccountSpaceKnowledgeDomainFileAccessMeta) updates) => super.copyWith((message) => updates(message as AccountSpaceKnowledgeDomainFileAccessMeta)) as AccountSpaceKnowledgeDomainFileAccessMeta; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountSpaceKnowledgeDomainFileAccessMeta create() => AccountSpaceKnowledgeDomainFileAccessMeta._();
  AccountSpaceKnowledgeDomainFileAccessMeta createEmptyInstance() => create();
  static $pb.PbList<AccountSpaceKnowledgeDomainFileAccessMeta> createRepeated() => $pb.PbList<AccountSpaceKnowledgeDomainFileAccessMeta>();
  @$core.pragma('dart2js:noInline')
  static AccountSpaceKnowledgeDomainFileAccessMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountSpaceKnowledgeDomainFileAccessMeta>(create);
  static AccountSpaceKnowledgeDomainFileAccessMeta? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get knowledgeSpaceAccessSessionToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set knowledgeSpaceAccessSessionToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKnowledgeSpaceAccessSessionToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearKnowledgeSpaceAccessSessionToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get spaceKnowledgeId => $_getSZ(2);
  @$pb.TagNumber(3)
  set spaceKnowledgeId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceKnowledgeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceKnowledgeId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get spaceKnowledgeDomainId => $_getSZ(3);
  @$pb.TagNumber(4)
  set spaceKnowledgeDomainId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpaceKnowledgeDomainId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpaceKnowledgeDomainId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get spaceKnowledgeDomainFileId => $_getSZ(4);
  @$pb.TagNumber(5)
  set spaceKnowledgeDomainFileId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSpaceKnowledgeDomainFileId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpaceKnowledgeDomainFileId() => clearField(5);

  @$pb.TagNumber(6)
  $54.Timestamp get accessAt => $_getN(5);
  @$pb.TagNumber(6)
  set accessAt($54.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAccessAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccessAt() => clearField(6);
  @$pb.TagNumber(6)
  $54.Timestamp ensureAccessAt() => $_ensure(5);
}

class AccountConnectedAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountConnectedAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountConnectionId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountInterestedInConnection')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccountInterestedInConnection')
    ..aOM<$54.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AccountConnectedAccount._() : super();
  factory AccountConnectedAccount({
    $core.String? accountConnectionId,
    $core.String? accountId,
    $core.bool? accountInterestedInConnection,
    $core.bool? connectedAccountInterestedInConnection,
    $54.Timestamp? connectedAt,
  }) {
    final _result = create();
    if (accountConnectionId != null) {
      _result.accountConnectionId = accountConnectionId;
    }
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (accountInterestedInConnection != null) {
      _result.accountInterestedInConnection = accountInterestedInConnection;
    }
    if (connectedAccountInterestedInConnection != null) {
      _result.connectedAccountInterestedInConnection = connectedAccountInterestedInConnection;
    }
    if (connectedAt != null) {
      _result.connectedAt = connectedAt;
    }
    return _result;
  }
  factory AccountConnectedAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountConnectedAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountConnectedAccount clone() => AccountConnectedAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountConnectedAccount copyWith(void Function(AccountConnectedAccount) updates) => super.copyWith((message) => updates(message as AccountConnectedAccount)) as AccountConnectedAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountConnectedAccount create() => AccountConnectedAccount._();
  AccountConnectedAccount createEmptyInstance() => create();
  static $pb.PbList<AccountConnectedAccount> createRepeated() => $pb.PbList<AccountConnectedAccount>();
  @$core.pragma('dart2js:noInline')
  static AccountConnectedAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountConnectedAccount>(create);
  static AccountConnectedAccount? _defaultInstance;

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
  $core.bool get accountInterestedInConnection => $_getBF(2);
  @$pb.TagNumber(3)
  set accountInterestedInConnection($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountInterestedInConnection() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountInterestedInConnection() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get connectedAccountInterestedInConnection => $_getBF(3);
  @$pb.TagNumber(4)
  set connectedAccountInterestedInConnection($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasConnectedAccountInterestedInConnection() => $_has(3);
  @$pb.TagNumber(4)
  void clearConnectedAccountInterestedInConnection() => clearField(4);

  @$pb.TagNumber(5)
  $54.Timestamp get connectedAt => $_getN(4);
  @$pb.TagNumber(5)
  set connectedAt($54.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasConnectedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearConnectedAt() => clearField(5);
  @$pb.TagNumber(5)
  $54.Timestamp ensureConnectedAt() => $_ensure(4);
}

class AccountConnectedAccountAssistant extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountConnectedAccountAssistant', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantConnectionId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantId')
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AccountConnectedAccountAssistant._() : super();
  factory AccountConnectedAccountAssistant({
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
  factory AccountConnectedAccountAssistant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountConnectedAccountAssistant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountConnectedAccountAssistant clone() => AccountConnectedAccountAssistant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountConnectedAccountAssistant copyWith(void Function(AccountConnectedAccountAssistant) updates) => super.copyWith((message) => updates(message as AccountConnectedAccountAssistant)) as AccountConnectedAccountAssistant; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountConnectedAccountAssistant create() => AccountConnectedAccountAssistant._();
  AccountConnectedAccountAssistant createEmptyInstance() => create();
  static $pb.PbList<AccountConnectedAccountAssistant> createRepeated() => $pb.PbList<AccountConnectedAccountAssistant>();
  @$core.pragma('dart2js:noInline')
  static AccountConnectedAccountAssistant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountConnectedAccountAssistant>(create);
  static AccountConnectedAccountAssistant? _defaultInstance;

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

class AccountDeviceDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountDeviceDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..e<AccountDeviceOS>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountDeviceOs', $pb.PbFieldType.OE, defaultOrMaker: AccountDeviceOS.IOS, valueOf: AccountDeviceOS.valueOf, enumValues: AccountDeviceOS.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceToken')
    ..hasRequiredFields = false
  ;

  AccountDeviceDetails._() : super();
  factory AccountDeviceDetails({
    AccountDeviceOS? accountDeviceOs,
    $core.String? deviceToken,
  }) {
    final _result = create();
    if (accountDeviceOs != null) {
      _result.accountDeviceOs = accountDeviceOs;
    }
    if (deviceToken != null) {
      _result.deviceToken = deviceToken;
    }
    return _result;
  }
  factory AccountDeviceDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountDeviceDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountDeviceDetails clone() => AccountDeviceDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountDeviceDetails copyWith(void Function(AccountDeviceDetails) updates) => super.copyWith((message) => updates(message as AccountDeviceDetails)) as AccountDeviceDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountDeviceDetails create() => AccountDeviceDetails._();
  AccountDeviceDetails createEmptyInstance() => create();
  static $pb.PbList<AccountDeviceDetails> createRepeated() => $pb.PbList<AccountDeviceDetails>();
  @$core.pragma('dart2js:noInline')
  static AccountDeviceDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountDeviceDetails>(create);
  static AccountDeviceDetails? _defaultInstance;

  @$pb.TagNumber(1)
  AccountDeviceOS get accountDeviceOs => $_getN(0);
  @$pb.TagNumber(1)
  set accountDeviceOs(AccountDeviceOS v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountDeviceOs() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountDeviceOs() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get deviceToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceToken() => clearField(2);
}

class AccountMobile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountMobile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountCountryCode')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobileNumber')
    ..hasRequiredFields = false
  ;

  AccountMobile._() : super();
  factory AccountMobile({
    $core.String? accountCountryCode,
    $core.String? accountMobileNumber,
  }) {
    final _result = create();
    if (accountCountryCode != null) {
      _result.accountCountryCode = accountCountryCode;
    }
    if (accountMobileNumber != null) {
      _result.accountMobileNumber = accountMobileNumber;
    }
    return _result;
  }
  factory AccountMobile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountMobile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountMobile clone() => AccountMobile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountMobile copyWith(void Function(AccountMobile) updates) => super.copyWith((message) => updates(message as AccountMobile)) as AccountMobile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountMobile create() => AccountMobile._();
  AccountMobile createEmptyInstance() => create();
  static $pb.PbList<AccountMobile> createRepeated() => $pb.PbList<AccountMobile>();
  @$core.pragma('dart2js:noInline')
  static AccountMobile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountMobile>(create);
  static AccountMobile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountCountryCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountCountryCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountCountryCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountCountryCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountMobileNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountMobileNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountMobileNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountMobileNumber() => clearField(2);
}

class AccountPayInCardDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountPayInCardDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cardId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'brand')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'country')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiryMonth', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiryYear', $pb.PbFieldType.O3)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fingerprint')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'funding')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'last4Digits', protoName: 'last_4_digits')
    ..hasRequiredFields = false
  ;

  AccountPayInCardDetails._() : super();
  factory AccountPayInCardDetails({
    $core.String? cardId,
    $core.String? brand,
    $core.String? country,
    $core.int? expiryMonth,
    $core.int? expiryYear,
    $core.String? fingerprint,
    $core.String? funding,
    $core.String? last4Digits,
  }) {
    final _result = create();
    if (cardId != null) {
      _result.cardId = cardId;
    }
    if (brand != null) {
      _result.brand = brand;
    }
    if (country != null) {
      _result.country = country;
    }
    if (expiryMonth != null) {
      _result.expiryMonth = expiryMonth;
    }
    if (expiryYear != null) {
      _result.expiryYear = expiryYear;
    }
    if (fingerprint != null) {
      _result.fingerprint = fingerprint;
    }
    if (funding != null) {
      _result.funding = funding;
    }
    if (last4Digits != null) {
      _result.last4Digits = last4Digits;
    }
    return _result;
  }
  factory AccountPayInCardDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountPayInCardDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountPayInCardDetails clone() => AccountPayInCardDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountPayInCardDetails copyWith(void Function(AccountPayInCardDetails) updates) => super.copyWith((message) => updates(message as AccountPayInCardDetails)) as AccountPayInCardDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountPayInCardDetails create() => AccountPayInCardDetails._();
  AccountPayInCardDetails createEmptyInstance() => create();
  static $pb.PbList<AccountPayInCardDetails> createRepeated() => $pb.PbList<AccountPayInCardDetails>();
  @$core.pragma('dart2js:noInline')
  static AccountPayInCardDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountPayInCardDetails>(create);
  static AccountPayInCardDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cardId => $_getSZ(0);
  @$pb.TagNumber(1)
  set cardId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCardId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCardId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get brand => $_getSZ(1);
  @$pb.TagNumber(2)
  set brand($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBrand() => $_has(1);
  @$pb.TagNumber(2)
  void clearBrand() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get country => $_getSZ(2);
  @$pb.TagNumber(3)
  set country($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCountry() => $_has(2);
  @$pb.TagNumber(3)
  void clearCountry() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get expiryMonth => $_getIZ(3);
  @$pb.TagNumber(4)
  set expiryMonth($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpiryMonth() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpiryMonth() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get expiryYear => $_getIZ(4);
  @$pb.TagNumber(5)
  set expiryYear($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExpiryYear() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpiryYear() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get fingerprint => $_getSZ(5);
  @$pb.TagNumber(6)
  set fingerprint($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFingerprint() => $_has(5);
  @$pb.TagNumber(6)
  void clearFingerprint() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get funding => $_getSZ(6);
  @$pb.TagNumber(7)
  set funding($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFunding() => $_has(6);
  @$pb.TagNumber(7)
  void clearFunding() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get last4Digits => $_getSZ(7);
  @$pb.TagNumber(8)
  set last4Digits($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasLast4Digits() => $_has(7);
  @$pb.TagNumber(8)
  void clearLast4Digits() => clearField(8);
}

