///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/universe.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $54;

export '../../../google/protobuf/timestamp.pb.dart';
class Universe extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Universe', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'universeId')
    ..aOM<$54.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bigBangAt', subBuilder: $54.Timestamp.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'universeName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'universeDescription')
    ..hasRequiredFields = false
  ;

  Universe._() : super();
  factory Universe({
    $core.String? universeId,
    $54.Timestamp? bigBangAt,
    $core.String? universeName,
    $core.String? universeDescription,
  }) {
    final _result = create();
    if (universeId != null) {
      _result.universeId = universeId;
    }
    if (bigBangAt != null) {
      _result.bigBangAt = bigBangAt;
    }
    if (universeName != null) {
      _result.universeName = universeName;
    }
    if (universeDescription != null) {
      _result.universeDescription = universeDescription;
    }
    return _result;
  }
  factory Universe.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Universe.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Universe clone() => Universe()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Universe copyWith(void Function(Universe) updates) => super.copyWith((message) => updates(message as Universe)) as Universe; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Universe create() => Universe._();
  Universe createEmptyInstance() => create();
  static $pb.PbList<Universe> createRepeated() => $pb.PbList<Universe>();
  @$core.pragma('dart2js:noInline')
  static Universe getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Universe>(create);
  static Universe? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get universeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set universeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUniverseId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUniverseId() => clearField(1);

  @$pb.TagNumber(2)
  $54.Timestamp get bigBangAt => $_getN(1);
  @$pb.TagNumber(2)
  set bigBangAt($54.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBigBangAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearBigBangAt() => clearField(2);
  @$pb.TagNumber(2)
  $54.Timestamp ensureBigBangAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get universeName => $_getSZ(2);
  @$pb.TagNumber(3)
  set universeName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUniverseName() => $_has(2);
  @$pb.TagNumber(3)
  void clearUniverseName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get universeDescription => $_getSZ(3);
  @$pb.TagNumber(4)
  set universeDescription($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUniverseDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearUniverseDescription() => clearField(4);
}

