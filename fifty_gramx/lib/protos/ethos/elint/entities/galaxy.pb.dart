///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/galaxy.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'universe.pb.dart' as $55;
import '../../../google/protobuf/timestamp.pb.dart' as $54;

class Galaxy extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Galaxy', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'galaxyId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'galaxyName')
    ..aOM<$55.Universe>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'universe', subBuilder: $55.Universe.create)
    ..aOM<$54.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'galaxyCreatedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Galaxy._() : super();
  factory Galaxy({
    $core.String? galaxyId,
    $core.String? galaxyName,
    $55.Universe? universe,
    $54.Timestamp? galaxyCreatedAt,
  }) {
    final _result = create();
    if (galaxyId != null) {
      _result.galaxyId = galaxyId;
    }
    if (galaxyName != null) {
      _result.galaxyName = galaxyName;
    }
    if (universe != null) {
      _result.universe = universe;
    }
    if (galaxyCreatedAt != null) {
      _result.galaxyCreatedAt = galaxyCreatedAt;
    }
    return _result;
  }
  factory Galaxy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Galaxy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Galaxy clone() => Galaxy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Galaxy copyWith(void Function(Galaxy) updates) => super.copyWith((message) => updates(message as Galaxy)) as Galaxy; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Galaxy create() => Galaxy._();
  Galaxy createEmptyInstance() => create();
  static $pb.PbList<Galaxy> createRepeated() => $pb.PbList<Galaxy>();
  @$core.pragma('dart2js:noInline')
  static Galaxy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Galaxy>(create);
  static Galaxy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get galaxyId => $_getSZ(0);
  @$pb.TagNumber(1)
  set galaxyId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGalaxyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGalaxyId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get galaxyName => $_getSZ(1);
  @$pb.TagNumber(2)
  set galaxyName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGalaxyName() => $_has(1);
  @$pb.TagNumber(2)
  void clearGalaxyName() => clearField(2);

  @$pb.TagNumber(3)
  $55.Universe get universe => $_getN(2);
  @$pb.TagNumber(3)
  set universe($55.Universe v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUniverse() => $_has(2);
  @$pb.TagNumber(3)
  void clearUniverse() => clearField(3);
  @$pb.TagNumber(3)
  $55.Universe ensureUniverse() => $_ensure(2);

  @$pb.TagNumber(4)
  $54.Timestamp get galaxyCreatedAt => $_getN(3);
  @$pb.TagNumber(4)
  set galaxyCreatedAt($54.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGalaxyCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGalaxyCreatedAt() => clearField(4);
  @$pb.TagNumber(4)
  $54.Timestamp ensureGalaxyCreatedAt() => $_ensure(3);
}

