///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/organization_space.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $54;

export '../../../google/protobuf/timestamp.pb.dart';
class OrganizationSpace extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OrganizationSpace', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'whiteKnowledgeDomainId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'whiteKnowledgeDomainName')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationId')
    ..aOM<$54.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  OrganizationSpace._() : super();
  factory OrganizationSpace({
    $core.String? spaceId,
    $core.String? spaceName,
    $core.String? whiteKnowledgeDomainId,
    $core.String? whiteKnowledgeDomainName,
    $core.String? organizationId,
    $54.Timestamp? createdAt,
  }) {
    final _result = create();
    if (spaceId != null) {
      _result.spaceId = spaceId;
    }
    if (spaceName != null) {
      _result.spaceName = spaceName;
    }
    if (whiteKnowledgeDomainId != null) {
      _result.whiteKnowledgeDomainId = whiteKnowledgeDomainId;
    }
    if (whiteKnowledgeDomainName != null) {
      _result.whiteKnowledgeDomainName = whiteKnowledgeDomainName;
    }
    if (organizationId != null) {
      _result.organizationId = organizationId;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    return _result;
  }
  factory OrganizationSpace.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrganizationSpace.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrganizationSpace clone() => OrganizationSpace()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrganizationSpace copyWith(void Function(OrganizationSpace) updates) => super.copyWith((message) => updates(message as OrganizationSpace)) as OrganizationSpace; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OrganizationSpace create() => OrganizationSpace._();
  OrganizationSpace createEmptyInstance() => create();
  static $pb.PbList<OrganizationSpace> createRepeated() => $pb.PbList<OrganizationSpace>();
  @$core.pragma('dart2js:noInline')
  static OrganizationSpace getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrganizationSpace>(create);
  static OrganizationSpace? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get spaceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set spaceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get spaceName => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get whiteKnowledgeDomainId => $_getSZ(2);
  @$pb.TagNumber(3)
  set whiteKnowledgeDomainId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWhiteKnowledgeDomainId() => $_has(2);
  @$pb.TagNumber(3)
  void clearWhiteKnowledgeDomainId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get whiteKnowledgeDomainName => $_getSZ(3);
  @$pb.TagNumber(4)
  set whiteKnowledgeDomainName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWhiteKnowledgeDomainName() => $_has(3);
  @$pb.TagNumber(4)
  void clearWhiteKnowledgeDomainName() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get organizationId => $_getSZ(4);
  @$pb.TagNumber(5)
  set organizationId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOrganizationId() => $_has(4);
  @$pb.TagNumber(5)
  void clearOrganizationId() => clearField(5);

  @$pb.TagNumber(6)
  $54.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(6)
  set createdAt($54.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $54.Timestamp ensureCreatedAt() => $_ensure(5);
}

class ClaimOrganizationSpaceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClaimOrganizationSpaceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationSpaceName')
    ..aOM<$54.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ClaimOrganizationSpaceRequest._() : super();
  factory ClaimOrganizationSpaceRequest({
    $core.String? organizationSpaceName,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (organizationSpaceName != null) {
      _result.organizationSpaceName = organizationSpaceName;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory ClaimOrganizationSpaceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClaimOrganizationSpaceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClaimOrganizationSpaceRequest clone() => ClaimOrganizationSpaceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClaimOrganizationSpaceRequest copyWith(void Function(ClaimOrganizationSpaceRequest) updates) => super.copyWith((message) => updates(message as ClaimOrganizationSpaceRequest)) as ClaimOrganizationSpaceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClaimOrganizationSpaceRequest create() => ClaimOrganizationSpaceRequest._();
  ClaimOrganizationSpaceRequest createEmptyInstance() => create();
  static $pb.PbList<ClaimOrganizationSpaceRequest> createRepeated() => $pb.PbList<ClaimOrganizationSpaceRequest>();
  @$core.pragma('dart2js:noInline')
  static ClaimOrganizationSpaceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClaimOrganizationSpaceRequest>(create);
  static ClaimOrganizationSpaceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get organizationSpaceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set organizationSpaceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationSpaceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationSpaceName() => clearField(1);

  @$pb.TagNumber(2)
  $54.Timestamp get requestedAt => $_getN(1);
  @$pb.TagNumber(2)
  set requestedAt($54.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestedAt() => clearField(2);
  @$pb.TagNumber(2)
  $54.Timestamp ensureRequestedAt() => $_ensure(1);
}

class ClaimOrganizationSpaceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClaimOrganizationSpaceResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'organizationSpaceAvailable')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  ClaimOrganizationSpaceResponse._() : super();
  factory ClaimOrganizationSpaceResponse({
    $core.bool? organizationSpaceAvailable,
    $core.String? message,
  }) {
    final _result = create();
    if (organizationSpaceAvailable != null) {
      _result.organizationSpaceAvailable = organizationSpaceAvailable;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory ClaimOrganizationSpaceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClaimOrganizationSpaceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClaimOrganizationSpaceResponse clone() => ClaimOrganizationSpaceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClaimOrganizationSpaceResponse copyWith(void Function(ClaimOrganizationSpaceResponse) updates) => super.copyWith((message) => updates(message as ClaimOrganizationSpaceResponse)) as ClaimOrganizationSpaceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClaimOrganizationSpaceResponse create() => ClaimOrganizationSpaceResponse._();
  ClaimOrganizationSpaceResponse createEmptyInstance() => create();
  static $pb.PbList<ClaimOrganizationSpaceResponse> createRepeated() => $pb.PbList<ClaimOrganizationSpaceResponse>();
  @$core.pragma('dart2js:noInline')
  static ClaimOrganizationSpaceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClaimOrganizationSpaceResponse>(create);
  static ClaimOrganizationSpaceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get organizationSpaceAvailable => $_getBF(0);
  @$pb.TagNumber(1)
  set organizationSpaceAvailable($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrganizationSpaceAvailable() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganizationSpaceAvailable() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

