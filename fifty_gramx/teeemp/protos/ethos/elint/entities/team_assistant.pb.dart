///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/team_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'team.pb.dart' as $60;
import '../../../google/protobuf/timestamp.pb.dart' as $52;

export '../../../google/protobuf/timestamp.pb.dart';
class TeamAssistant extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TeamAssistant', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<$60.Team>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'team', subBuilder: $60.Team.create)
    ..aOM<$52.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $52.Timestamp.create)
    ..aOM<$52.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastAssistedAt', subBuilder: $52.Timestamp.create)
    ..hasRequiredFields = false
  ;

  TeamAssistant._() : super();
  factory TeamAssistant({
    $core.String? id,
    $core.String? name,
    $60.Team? team,
    $52.Timestamp? createdAt,
    $52.Timestamp? lastAssistedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (team != null) {
      _result.team = team;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (lastAssistedAt != null) {
      _result.lastAssistedAt = lastAssistedAt;
    }
    return _result;
  }
  factory TeamAssistant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TeamAssistant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TeamAssistant clone() => TeamAssistant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TeamAssistant copyWith(void Function(TeamAssistant) updates) => super.copyWith((message) => updates(message as TeamAssistant)) as TeamAssistant; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TeamAssistant create() => TeamAssistant._();
  TeamAssistant createEmptyInstance() => create();
  static $pb.PbList<TeamAssistant> createRepeated() => $pb.PbList<TeamAssistant>();
  @$core.pragma('dart2js:noInline')
  static TeamAssistant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TeamAssistant>(create);
  static TeamAssistant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(4)
  $60.Team get team => $_getN(2);
  @$pb.TagNumber(4)
  set team($60.Team v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTeam() => $_has(2);
  @$pb.TagNumber(4)
  void clearTeam() => clearField(4);
  @$pb.TagNumber(4)
  $60.Team ensureTeam() => $_ensure(2);

  @$pb.TagNumber(5)
  $52.Timestamp get createdAt => $_getN(3);
  @$pb.TagNumber(5)
  set createdAt($52.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $52.Timestamp ensureCreatedAt() => $_ensure(3);

  @$pb.TagNumber(6)
  $52.Timestamp get lastAssistedAt => $_getN(4);
  @$pb.TagNumber(6)
  set lastAssistedAt($52.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastAssistedAt() => $_has(4);
  @$pb.TagNumber(6)
  void clearLastAssistedAt() => clearField(6);
  @$pb.TagNumber(6)
  $52.Timestamp ensureLastAssistedAt() => $_ensure(4);
}

class TeamAssistantConnectedAssociate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TeamAssistantConnectedAssociate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associateConnectionId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associateId')
    ..aOM<$52.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAt', subBuilder: $52.Timestamp.create)
    ..hasRequiredFields = false
  ;

  TeamAssistantConnectedAssociate._() : super();
  factory TeamAssistantConnectedAssociate({
    $core.String? associateConnectionId,
    $core.String? associateId,
    $52.Timestamp? connectedAt,
  }) {
    final _result = create();
    if (associateConnectionId != null) {
      _result.associateConnectionId = associateConnectionId;
    }
    if (associateId != null) {
      _result.associateId = associateId;
    }
    if (connectedAt != null) {
      _result.connectedAt = connectedAt;
    }
    return _result;
  }
  factory TeamAssistantConnectedAssociate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TeamAssistantConnectedAssociate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TeamAssistantConnectedAssociate clone() => TeamAssistantConnectedAssociate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TeamAssistantConnectedAssociate copyWith(void Function(TeamAssistantConnectedAssociate) updates) => super.copyWith((message) => updates(message as TeamAssistantConnectedAssociate)) as TeamAssistantConnectedAssociate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TeamAssistantConnectedAssociate create() => TeamAssistantConnectedAssociate._();
  TeamAssistantConnectedAssociate createEmptyInstance() => create();
  static $pb.PbList<TeamAssistantConnectedAssociate> createRepeated() => $pb.PbList<TeamAssistantConnectedAssociate>();
  @$core.pragma('dart2js:noInline')
  static TeamAssistantConnectedAssociate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TeamAssistantConnectedAssociate>(create);
  static TeamAssistantConnectedAssociate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get associateConnectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set associateConnectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssociateConnectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssociateConnectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get associateId => $_getSZ(1);
  @$pb.TagNumber(2)
  set associateId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssociateId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssociateId() => clearField(2);

  @$pb.TagNumber(3)
  $52.Timestamp get connectedAt => $_getN(2);
  @$pb.TagNumber(3)
  set connectedAt($52.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasConnectedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearConnectedAt() => clearField(3);
  @$pb.TagNumber(3)
  $52.Timestamp ensureConnectedAt() => $_ensure(2);
}

