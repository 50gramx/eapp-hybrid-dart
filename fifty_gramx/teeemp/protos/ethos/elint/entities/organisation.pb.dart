///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/organisation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'galaxy.pb.dart' as $54;
import 'account.pb.dart' as $19;
import 'community.pb.dart' as $55;
import '../../../google/protobuf/timestamp.pb.dart' as $52;

export '../../../google/protobuf/timestamp.pb.dart';
class Organisation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Organisation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'analyticsId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOM<OrganisationName>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name', subBuilder: OrganisationName.create)
    ..aOM<$54.Galaxy>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'galaxy', subBuilder: $54.Galaxy.create)
    ..aOM<$19.Account>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'admin', subBuilder: $19.Account.create)
    ..aOM<$55.Community>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associatedCommunity', subBuilder: $55.Community.create)
    ..aOM<OrganisationPostalAddress>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'postalAddress', subBuilder: OrganisationPostalAddress.create)
    ..aOM<$52.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incorporatedAt', subBuilder: $52.Timestamp.create)
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isActive')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isBillingActive')
    ..aOM<$52.Timestamp>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $52.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Organisation._() : super();
  factory Organisation({
    $core.String? analyticsId,
    $core.String? id,
    OrganisationName? name,
    $54.Galaxy? galaxy,
    $19.Account? admin,
    $55.Community? associatedCommunity,
    OrganisationPostalAddress? postalAddress,
    $52.Timestamp? incorporatedAt,
    $core.bool? isActive,
    $core.bool? isBillingActive,
    $52.Timestamp? createdAt,
  }) {
    final _result = create();
    if (analyticsId != null) {
      _result.analyticsId = analyticsId;
    }
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (galaxy != null) {
      _result.galaxy = galaxy;
    }
    if (admin != null) {
      _result.admin = admin;
    }
    if (associatedCommunity != null) {
      _result.associatedCommunity = associatedCommunity;
    }
    if (postalAddress != null) {
      _result.postalAddress = postalAddress;
    }
    if (incorporatedAt != null) {
      _result.incorporatedAt = incorporatedAt;
    }
    if (isActive != null) {
      _result.isActive = isActive;
    }
    if (isBillingActive != null) {
      _result.isBillingActive = isBillingActive;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    return _result;
  }
  factory Organisation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Organisation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Organisation clone() => Organisation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Organisation copyWith(void Function(Organisation) updates) => super.copyWith((message) => updates(message as Organisation)) as Organisation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Organisation create() => Organisation._();
  Organisation createEmptyInstance() => create();
  static $pb.PbList<Organisation> createRepeated() => $pb.PbList<Organisation>();
  @$core.pragma('dart2js:noInline')
  static Organisation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Organisation>(create);
  static Organisation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get analyticsId => $_getSZ(0);
  @$pb.TagNumber(1)
  set analyticsId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnalyticsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnalyticsId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get id => $_getSZ(1);
  @$pb.TagNumber(2)
  set id($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  OrganisationName get name => $_getN(2);
  @$pb.TagNumber(3)
  set name(OrganisationName v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
  @$pb.TagNumber(3)
  OrganisationName ensureName() => $_ensure(2);

  @$pb.TagNumber(4)
  $54.Galaxy get galaxy => $_getN(3);
  @$pb.TagNumber(4)
  set galaxy($54.Galaxy v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGalaxy() => $_has(3);
  @$pb.TagNumber(4)
  void clearGalaxy() => clearField(4);
  @$pb.TagNumber(4)
  $54.Galaxy ensureGalaxy() => $_ensure(3);

  @$pb.TagNumber(5)
  $19.Account get admin => $_getN(4);
  @$pb.TagNumber(5)
  set admin($19.Account v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAdmin() => $_has(4);
  @$pb.TagNumber(5)
  void clearAdmin() => clearField(5);
  @$pb.TagNumber(5)
  $19.Account ensureAdmin() => $_ensure(4);

  @$pb.TagNumber(6)
  $55.Community get associatedCommunity => $_getN(5);
  @$pb.TagNumber(6)
  set associatedCommunity($55.Community v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAssociatedCommunity() => $_has(5);
  @$pb.TagNumber(6)
  void clearAssociatedCommunity() => clearField(6);
  @$pb.TagNumber(6)
  $55.Community ensureAssociatedCommunity() => $_ensure(5);

  @$pb.TagNumber(7)
  OrganisationPostalAddress get postalAddress => $_getN(6);
  @$pb.TagNumber(7)
  set postalAddress(OrganisationPostalAddress v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasPostalAddress() => $_has(6);
  @$pb.TagNumber(7)
  void clearPostalAddress() => clearField(7);
  @$pb.TagNumber(7)
  OrganisationPostalAddress ensurePostalAddress() => $_ensure(6);

  @$pb.TagNumber(8)
  $52.Timestamp get incorporatedAt => $_getN(7);
  @$pb.TagNumber(8)
  set incorporatedAt($52.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasIncorporatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearIncorporatedAt() => clearField(8);
  @$pb.TagNumber(8)
  $52.Timestamp ensureIncorporatedAt() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.bool get isActive => $_getBF(8);
  @$pb.TagNumber(9)
  set isActive($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasIsActive() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsActive() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get isBillingActive => $_getBF(9);
  @$pb.TagNumber(10)
  set isBillingActive($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasIsBillingActive() => $_has(9);
  @$pb.TagNumber(10)
  void clearIsBillingActive() => clearField(10);

  @$pb.TagNumber(11)
  $52.Timestamp get createdAt => $_getN(10);
  @$pb.TagNumber(11)
  set createdAt($52.Timestamp v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasCreatedAt() => $_has(10);
  @$pb.TagNumber(11)
  void clearCreatedAt() => clearField(11);
  @$pb.TagNumber(11)
  $52.Timestamp ensureCreatedAt() => $_ensure(10);
}

class OrganisationName extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrganisationName', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'legalName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assistantName')
    ..hasRequiredFields = false
  ;

  OrganisationName._() : super();
  factory OrganisationName({
    $core.String? legalName,
    $core.String? assistantName,
  }) {
    final _result = create();
    if (legalName != null) {
      _result.legalName = legalName;
    }
    if (assistantName != null) {
      _result.assistantName = assistantName;
    }
    return _result;
  }
  factory OrganisationName.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrganisationName.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrganisationName clone() => OrganisationName()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrganisationName copyWith(void Function(OrganisationName) updates) => super.copyWith((message) => updates(message as OrganisationName)) as OrganisationName; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrganisationName create() => OrganisationName._();
  OrganisationName createEmptyInstance() => create();
  static $pb.PbList<OrganisationName> createRepeated() => $pb.PbList<OrganisationName>();
  @$core.pragma('dart2js:noInline')
  static OrganisationName getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrganisationName>(create);
  static OrganisationName? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get legalName => $_getSZ(0);
  @$pb.TagNumber(1)
  set legalName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLegalName() => $_has(0);
  @$pb.TagNumber(1)
  void clearLegalName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get assistantName => $_getSZ(1);
  @$pb.TagNumber(2)
  set assistantName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssistantName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssistantName() => clearField(2);
}

class OrganisationPostalAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrganisationPostalAddress', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressLine1', protoName: 'address_line_1')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressLine2', protoName: 'address_line_2')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'city')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stateProvinceOrRegion')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'zipOrPostalCode')
    ..hasRequiredFields = false
  ;

  OrganisationPostalAddress._() : super();
  factory OrganisationPostalAddress({
    $core.String? addressLine1,
    $core.String? addressLine2,
    $core.String? city,
    $core.String? stateProvinceOrRegion,
    $core.String? zipOrPostalCode,
  }) {
    final _result = create();
    if (addressLine1 != null) {
      _result.addressLine1 = addressLine1;
    }
    if (addressLine2 != null) {
      _result.addressLine2 = addressLine2;
    }
    if (city != null) {
      _result.city = city;
    }
    if (stateProvinceOrRegion != null) {
      _result.stateProvinceOrRegion = stateProvinceOrRegion;
    }
    if (zipOrPostalCode != null) {
      _result.zipOrPostalCode = zipOrPostalCode;
    }
    return _result;
  }
  factory OrganisationPostalAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrganisationPostalAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrganisationPostalAddress clone() => OrganisationPostalAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrganisationPostalAddress copyWith(void Function(OrganisationPostalAddress) updates) => super.copyWith((message) => updates(message as OrganisationPostalAddress)) as OrganisationPostalAddress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrganisationPostalAddress create() => OrganisationPostalAddress._();
  OrganisationPostalAddress createEmptyInstance() => create();
  static $pb.PbList<OrganisationPostalAddress> createRepeated() => $pb.PbList<OrganisationPostalAddress>();
  @$core.pragma('dart2js:noInline')
  static OrganisationPostalAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrganisationPostalAddress>(create);
  static OrganisationPostalAddress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get addressLine1 => $_getSZ(0);
  @$pb.TagNumber(1)
  set addressLine1($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddressLine1() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddressLine1() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get addressLine2 => $_getSZ(1);
  @$pb.TagNumber(2)
  set addressLine2($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddressLine2() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddressLine2() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get city => $_getSZ(2);
  @$pb.TagNumber(3)
  set city($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCity() => $_has(2);
  @$pb.TagNumber(3)
  void clearCity() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get stateProvinceOrRegion => $_getSZ(3);
  @$pb.TagNumber(4)
  set stateProvinceOrRegion($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStateProvinceOrRegion() => $_has(3);
  @$pb.TagNumber(4)
  void clearStateProvinceOrRegion() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get zipOrPostalCode => $_getSZ(4);
  @$pb.TagNumber(5)
  set zipOrPostalCode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasZipOrPostalCode() => $_has(4);
  @$pb.TagNumber(5)
  void clearZipOrPostalCode() => clearField(5);
}

