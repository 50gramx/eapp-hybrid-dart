///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/team.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'associate.pb.dart' as $59;
import 'organisation.pb.dart' as $56;
import '../../../google/protobuf/timestamp.pb.dart' as $52;

export '../../../google/protobuf/timestamp.pb.dart';
class Team extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Team', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOM<$59.Associate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'adminAssociate', subBuilder: $59.Associate.create)
    ..aOM<$56.Organisation>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ofOrganisation', subBuilder: $56.Organisation.create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'teamId', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'teamDescription')
    ..pc<$59.Associate>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'teamMembers', $pb.PbFieldType.PM, subBuilder: $59.Associate.create)
    ..pc<TeamTag>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'teamTags', $pb.PbFieldType.PM, subBuilder: TeamTag.create)
    ..aOM<$52.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $52.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Team._() : super();
  factory Team({
    $59.Associate? adminAssociate,
    $56.Organisation? ofOrganisation,
    $core.int? teamId,
    $core.String? teamDescription,
    $core.Iterable<$59.Associate>? teamMembers,
    $core.Iterable<TeamTag>? teamTags,
    $52.Timestamp? createdAt,
  }) {
    final _result = create();
    if (adminAssociate != null) {
      _result.adminAssociate = adminAssociate;
    }
    if (ofOrganisation != null) {
      _result.ofOrganisation = ofOrganisation;
    }
    if (teamId != null) {
      _result.teamId = teamId;
    }
    if (teamDescription != null) {
      _result.teamDescription = teamDescription;
    }
    if (teamMembers != null) {
      _result.teamMembers.addAll(teamMembers);
    }
    if (teamTags != null) {
      _result.teamTags.addAll(teamTags);
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    return _result;
  }
  factory Team.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Team.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Team clone() => Team()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Team copyWith(void Function(Team) updates) => super.copyWith((message) => updates(message as Team)) as Team; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Team create() => Team._();
  Team createEmptyInstance() => create();
  static $pb.PbList<Team> createRepeated() => $pb.PbList<Team>();
  @$core.pragma('dart2js:noInline')
  static Team getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Team>(create);
  static Team? _defaultInstance;

  @$pb.TagNumber(1)
  $59.Associate get adminAssociate => $_getN(0);
  @$pb.TagNumber(1)
  set adminAssociate($59.Associate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAdminAssociate() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdminAssociate() => clearField(1);
  @$pb.TagNumber(1)
  $59.Associate ensureAdminAssociate() => $_ensure(0);

  @$pb.TagNumber(2)
  $56.Organisation get ofOrganisation => $_getN(1);
  @$pb.TagNumber(2)
  set ofOrganisation($56.Organisation v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOfOrganisation() => $_has(1);
  @$pb.TagNumber(2)
  void clearOfOrganisation() => clearField(2);
  @$pb.TagNumber(2)
  $56.Organisation ensureOfOrganisation() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get teamId => $_getIZ(2);
  @$pb.TagNumber(3)
  set teamId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTeamId() => $_has(2);
  @$pb.TagNumber(3)
  void clearTeamId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get teamDescription => $_getSZ(3);
  @$pb.TagNumber(4)
  set teamDescription($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTeamDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearTeamDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$59.Associate> get teamMembers => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<TeamTag> get teamTags => $_getList(5);

  @$pb.TagNumber(10)
  $52.Timestamp get createdAt => $_getN(6);
  @$pb.TagNumber(10)
  set createdAt($52.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(10)
  void clearCreatedAt() => clearField(10);
  @$pb.TagNumber(10)
  $52.Timestamp ensureCreatedAt() => $_ensure(6);
}

class TeamTag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TeamTag', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'teamTagId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'teamTagName')
    ..hasRequiredFields = false
  ;

  TeamTag._() : super();
  factory TeamTag({
    $core.String? teamTagId,
    $core.String? teamTagName,
  }) {
    final _result = create();
    if (teamTagId != null) {
      _result.teamTagId = teamTagId;
    }
    if (teamTagName != null) {
      _result.teamTagName = teamTagName;
    }
    return _result;
  }
  factory TeamTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TeamTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TeamTag clone() => TeamTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TeamTag copyWith(void Function(TeamTag) updates) => super.copyWith((message) => updates(message as TeamTag)) as TeamTag; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TeamTag create() => TeamTag._();
  TeamTag createEmptyInstance() => create();
  static $pb.PbList<TeamTag> createRepeated() => $pb.PbList<TeamTag>();
  @$core.pragma('dart2js:noInline')
  static TeamTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TeamTag>(create);
  static TeamTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get teamTagId => $_getSZ(0);
  @$pb.TagNumber(1)
  set teamTagId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTeamTagId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTeamTagId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get teamTagName => $_getSZ(1);
  @$pb.TagNumber(2)
  set teamTagName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTeamTagName() => $_has(1);
  @$pb.TagNumber(2)
  void clearTeamTagName() => clearField(2);
}

