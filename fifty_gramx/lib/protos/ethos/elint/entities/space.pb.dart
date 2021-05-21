///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/space.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'galaxy.pb.dart' as $56;
import '../../../google/protobuf/timestamp.pb.dart' as $54;

import 'space.pbenum.dart';

export 'space.pbenum.dart';

class Space extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Space', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOM<$56.Galaxy>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'galaxy', subBuilder: $56.Galaxy.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceId')
    ..e<SpaceAccessibilityType>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceAccessibilityType', $pb.PbFieldType.OE, defaultOrMaker: SpaceAccessibilityType.CLOSED, valueOf: SpaceAccessibilityType.valueOf, enumValues: SpaceAccessibilityType.values)
    ..e<SpaceIsolationType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceIsolationType', $pb.PbFieldType.OE, defaultOrMaker: SpaceIsolationType.NOT_ISOLATED, valueOf: SpaceIsolationType.valueOf, enumValues: SpaceIsolationType.values)
    ..e<SpaceEntityType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceEntityType', $pb.PbFieldType.OE, defaultOrMaker: SpaceEntityType.ACCOUNT, valueOf: SpaceEntityType.valueOf, enumValues: SpaceEntityType.values)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceAdminId')
    ..aOM<$54.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceCreatedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Space._() : super();
  factory Space({
    $56.Galaxy? galaxy,
    $core.String? spaceId,
    SpaceAccessibilityType? spaceAccessibilityType,
    SpaceIsolationType? spaceIsolationType,
    SpaceEntityType? spaceEntityType,
    $core.String? spaceAdminId,
    $54.Timestamp? spaceCreatedAt,
  }) {
    final _result = create();
    if (galaxy != null) {
      _result.galaxy = galaxy;
    }
    if (spaceId != null) {
      _result.spaceId = spaceId;
    }
    if (spaceAccessibilityType != null) {
      _result.spaceAccessibilityType = spaceAccessibilityType;
    }
    if (spaceIsolationType != null) {
      _result.spaceIsolationType = spaceIsolationType;
    }
    if (spaceEntityType != null) {
      _result.spaceEntityType = spaceEntityType;
    }
    if (spaceAdminId != null) {
      _result.spaceAdminId = spaceAdminId;
    }
    if (spaceCreatedAt != null) {
      _result.spaceCreatedAt = spaceCreatedAt;
    }
    return _result;
  }
  factory Space.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Space.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Space clone() => Space()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Space copyWith(void Function(Space) updates) => super.copyWith((message) => updates(message as Space)) as Space; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Space create() => Space._();
  Space createEmptyInstance() => create();
  static $pb.PbList<Space> createRepeated() => $pb.PbList<Space>();
  @$core.pragma('dart2js:noInline')
  static Space getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Space>(create);
  static Space? _defaultInstance;

  @$pb.TagNumber(1)
  $56.Galaxy get galaxy => $_getN(0);
  @$pb.TagNumber(1)
  set galaxy($56.Galaxy v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGalaxy() => $_has(0);
  @$pb.TagNumber(1)
  void clearGalaxy() => clearField(1);
  @$pb.TagNumber(1)
  $56.Galaxy ensureGalaxy() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get spaceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceId() => clearField(2);

  @$pb.TagNumber(3)
  SpaceAccessibilityType get spaceAccessibilityType => $_getN(2);
  @$pb.TagNumber(3)
  set spaceAccessibilityType(SpaceAccessibilityType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceAccessibilityType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceAccessibilityType() => clearField(3);

  @$pb.TagNumber(4)
  SpaceIsolationType get spaceIsolationType => $_getN(3);
  @$pb.TagNumber(4)
  set spaceIsolationType(SpaceIsolationType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpaceIsolationType() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpaceIsolationType() => clearField(4);

  @$pb.TagNumber(5)
  SpaceEntityType get spaceEntityType => $_getN(4);
  @$pb.TagNumber(5)
  set spaceEntityType(SpaceEntityType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSpaceEntityType() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpaceEntityType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get spaceAdminId => $_getSZ(5);
  @$pb.TagNumber(6)
  set spaceAdminId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSpaceAdminId() => $_has(5);
  @$pb.TagNumber(6)
  void clearSpaceAdminId() => clearField(6);

  @$pb.TagNumber(7)
  $54.Timestamp get spaceCreatedAt => $_getN(6);
  @$pb.TagNumber(7)
  set spaceCreatedAt($54.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSpaceCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearSpaceCreatedAt() => clearField(7);
  @$pb.TagNumber(7)
  $54.Timestamp ensureSpaceCreatedAt() => $_ensure(6);
}

