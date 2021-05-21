///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/organization.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $54;

export '../../../google/protobuf/timestamp.pb.dart';
class Organization extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Organization', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationSpaceId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adminAccountId')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'active')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'billingActive')
    ..aOM<$54.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Organization._() : super();
  factory Organization({
    $core.String? organizationId,
    $core.String? organizationName,
    $core.String? organizationSpaceId,
    $core.String? adminAccountId,
    $core.bool? active,
    $core.bool? billingActive,
    $54.Timestamp? createdAt,
  }) {
    final _result = create();
    if (organizationId != null) {
      _result.organizationId = organizationId;
    }
    if (organizationName != null) {
      _result.organizationName = organizationName;
    }
    if (organizationSpaceId != null) {
      _result.organizationSpaceId = organizationSpaceId;
    }
    if (adminAccountId != null) {
      _result.adminAccountId = adminAccountId;
    }
    if (active != null) {
      _result.active = active;
    }
    if (billingActive != null) {
      _result.billingActive = billingActive;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    return _result;
  }
  factory Organization.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Organization.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Organization clone() => Organization()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Organization copyWith(void Function(Organization) updates) => super.copyWith((message) => updates(message as Organization)) as Organization; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Organization create() => Organization._();
  Organization createEmptyInstance() => create();
  static $pb.PbList<Organization> createRepeated() => $pb.PbList<Organization>();
  @$core.pragma('dart2js:noInline')
  static Organization getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Organization>(create);
  static Organization? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organizationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set organizationId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get organizationName => $_getSZ(1);
  @$pb.TagNumber(2)
  set organizationName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrganizationName() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrganizationName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get organizationSpaceId => $_getSZ(2);
  @$pb.TagNumber(3)
  set organizationSpaceId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrganizationSpaceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrganizationSpaceId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get adminAccountId => $_getSZ(3);
  @$pb.TagNumber(4)
  set adminAccountId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAdminAccountId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAdminAccountId() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get active => $_getBF(4);
  @$pb.TagNumber(5)
  set active($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasActive() => $_has(4);
  @$pb.TagNumber(5)
  void clearActive() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get billingActive => $_getBF(5);
  @$pb.TagNumber(6)
  set billingActive($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBillingActive() => $_has(5);
  @$pb.TagNumber(6)
  void clearBillingActive() => clearField(6);

  @$pb.TagNumber(7)
  $54.Timestamp get createdAt => $_getN(6);
  @$pb.TagNumber(7)
  set createdAt($54.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $54.Timestamp ensureCreatedAt() => $_ensure(6);
}

class ReserveOrganizationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReserveOrganizationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationSpace')
    ..aOM<$54.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ReserveOrganizationRequest._() : super();
  factory ReserveOrganizationRequest({
    $core.String? organizationSpace,
    $54.Timestamp? createdAt,
  }) {
    final _result = create();
    if (organizationSpace != null) {
      _result.organizationSpace = organizationSpace;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    return _result;
  }
  factory ReserveOrganizationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReserveOrganizationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReserveOrganizationRequest clone() => ReserveOrganizationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReserveOrganizationRequest copyWith(void Function(ReserveOrganizationRequest) updates) => super.copyWith((message) => updates(message as ReserveOrganizationRequest)) as ReserveOrganizationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReserveOrganizationRequest create() => ReserveOrganizationRequest._();
  ReserveOrganizationRequest createEmptyInstance() => create();
  static $pb.PbList<ReserveOrganizationRequest> createRepeated() => $pb.PbList<ReserveOrganizationRequest>();
  @$core.pragma('dart2js:noInline')
  static ReserveOrganizationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReserveOrganizationRequest>(create);
  static ReserveOrganizationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organizationSpace => $_getSZ(0);
  @$pb.TagNumber(1)
  set organizationSpace($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationSpace() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationSpace() => clearField(1);

  @$pb.TagNumber(2)
  $54.Timestamp get createdAt => $_getN(1);
  @$pb.TagNumber(2)
  set createdAt($54.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreatedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreatedAt() => clearField(2);
  @$pb.TagNumber(2)
  $54.Timestamp ensureCreatedAt() => $_ensure(1);
}

class ReserveOrganizationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReserveOrganizationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationSpace')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationSpaceReserved')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountEmailId')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountEmailIdVerified')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  ReserveOrganizationResponse._() : super();
  factory ReserveOrganizationResponse({
    $core.String? organizationSpace,
    $core.bool? organizationSpaceReserved,
    $core.String? accountEmailId,
    $core.bool? accountEmailIdVerified,
    $core.String? message,
  }) {
    final _result = create();
    if (organizationSpace != null) {
      _result.organizationSpace = organizationSpace;
    }
    if (organizationSpaceReserved != null) {
      _result.organizationSpaceReserved = organizationSpaceReserved;
    }
    if (accountEmailId != null) {
      _result.accountEmailId = accountEmailId;
    }
    if (accountEmailIdVerified != null) {
      _result.accountEmailIdVerified = accountEmailIdVerified;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory ReserveOrganizationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReserveOrganizationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReserveOrganizationResponse clone() => ReserveOrganizationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReserveOrganizationResponse copyWith(void Function(ReserveOrganizationResponse) updates) => super.copyWith((message) => updates(message as ReserveOrganizationResponse)) as ReserveOrganizationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReserveOrganizationResponse create() => ReserveOrganizationResponse._();
  ReserveOrganizationResponse createEmptyInstance() => create();
  static $pb.PbList<ReserveOrganizationResponse> createRepeated() => $pb.PbList<ReserveOrganizationResponse>();
  @$core.pragma('dart2js:noInline')
  static ReserveOrganizationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReserveOrganizationResponse>(create);
  static ReserveOrganizationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organizationSpace => $_getSZ(0);
  @$pb.TagNumber(1)
  set organizationSpace($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationSpace() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationSpace() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get organizationSpaceReserved => $_getBF(1);
  @$pb.TagNumber(2)
  set organizationSpaceReserved($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOrganizationSpaceReserved() => $_has(1);
  @$pb.TagNumber(2)
  void clearOrganizationSpaceReserved() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountEmailId => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountEmailId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountEmailId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountEmailId() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get accountEmailIdVerified => $_getBF(3);
  @$pb.TagNumber(4)
  set accountEmailIdVerified($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccountEmailIdVerified() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountEmailIdVerified() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
}

