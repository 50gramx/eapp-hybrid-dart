///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/space_knowledge_domain.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'space_knowledge.pb.dart' as $58;
import '../../../google/protobuf/timestamp.pb.dart' as $54;

import 'space_knowledge_domain.pbenum.dart';

export '../../../google/protobuf/timestamp.pb.dart';
export 'space_knowledge_domain.pbenum.dart';

class SpaceKnowledgeDomain extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeDomain', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainDescription')
    ..e<SpaceKnowledgeDomainCollarEnum>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainCollarEnum', $pb.PbFieldType.OE, defaultOrMaker: SpaceKnowledgeDomainCollarEnum.WHITE_COLLAR, valueOf: SpaceKnowledgeDomainCollarEnum.valueOf, enumValues: SpaceKnowledgeDomainCollarEnum.values)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainIsolated')
    ..aOM<$58.SpaceKnowledge>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledge', subBuilder: $58.SpaceKnowledge.create)
    ..aOM<$54.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastUpdatedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeDomain._() : super();
  factory SpaceKnowledgeDomain({
    $core.String? spaceKnowledgeDomainId,
    $core.String? spaceKnowledgeDomainName,
    $core.String? spaceKnowledgeDomainDescription,
    SpaceKnowledgeDomainCollarEnum? spaceKnowledgeDomainCollarEnum,
    $core.bool? spaceKnowledgeDomainIsolated,
    $58.SpaceKnowledge? spaceKnowledge,
    $54.Timestamp? createdAt,
    $54.Timestamp? lastUpdatedAt,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainId != null) {
      _result.spaceKnowledgeDomainId = spaceKnowledgeDomainId;
    }
    if (spaceKnowledgeDomainName != null) {
      _result.spaceKnowledgeDomainName = spaceKnowledgeDomainName;
    }
    if (spaceKnowledgeDomainDescription != null) {
      _result.spaceKnowledgeDomainDescription = spaceKnowledgeDomainDescription;
    }
    if (spaceKnowledgeDomainCollarEnum != null) {
      _result.spaceKnowledgeDomainCollarEnum = spaceKnowledgeDomainCollarEnum;
    }
    if (spaceKnowledgeDomainIsolated != null) {
      _result.spaceKnowledgeDomainIsolated = spaceKnowledgeDomainIsolated;
    }
    if (spaceKnowledge != null) {
      _result.spaceKnowledge = spaceKnowledge;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (lastUpdatedAt != null) {
      _result.lastUpdatedAt = lastUpdatedAt;
    }
    return _result;
  }
  factory SpaceKnowledgeDomain.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeDomain.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomain clone() => SpaceKnowledgeDomain()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomain copyWith(void Function(SpaceKnowledgeDomain) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeDomain)) as SpaceKnowledgeDomain; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomain create() => SpaceKnowledgeDomain._();
  SpaceKnowledgeDomain createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeDomain> createRepeated() => $pb.PbList<SpaceKnowledgeDomain>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomain getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeDomain>(create);
  static SpaceKnowledgeDomain? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get spaceKnowledgeDomainId => $_getSZ(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get spaceKnowledgeDomainName => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get spaceKnowledgeDomainDescription => $_getSZ(2);
  @$pb.TagNumber(3)
  set spaceKnowledgeDomainDescription($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceKnowledgeDomainDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceKnowledgeDomainDescription() => clearField(3);

  @$pb.TagNumber(4)
  SpaceKnowledgeDomainCollarEnum get spaceKnowledgeDomainCollarEnum => $_getN(3);
  @$pb.TagNumber(4)
  set spaceKnowledgeDomainCollarEnum(SpaceKnowledgeDomainCollarEnum v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpaceKnowledgeDomainCollarEnum() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpaceKnowledgeDomainCollarEnum() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get spaceKnowledgeDomainIsolated => $_getBF(4);
  @$pb.TagNumber(5)
  set spaceKnowledgeDomainIsolated($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSpaceKnowledgeDomainIsolated() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpaceKnowledgeDomainIsolated() => clearField(5);

  @$pb.TagNumber(6)
  $58.SpaceKnowledge get spaceKnowledge => $_getN(5);
  @$pb.TagNumber(6)
  set spaceKnowledge($58.SpaceKnowledge v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSpaceKnowledge() => $_has(5);
  @$pb.TagNumber(6)
  void clearSpaceKnowledge() => clearField(6);
  @$pb.TagNumber(6)
  $58.SpaceKnowledge ensureSpaceKnowledge() => $_ensure(5);

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

  @$pb.TagNumber(8)
  $54.Timestamp get lastUpdatedAt => $_getN(7);
  @$pb.TagNumber(8)
  set lastUpdatedAt($54.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasLastUpdatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearLastUpdatedAt() => clearField(8);
  @$pb.TagNumber(8)
  $54.Timestamp ensureLastUpdatedAt() => $_ensure(7);
}

class SpaceKnowledgeDomainInferringAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeDomainInferringAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inferringAccountId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOM<$54.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inferredAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeDomainInferringAccount._() : super();
  factory SpaceKnowledgeDomainInferringAccount({
    $core.String? inferringAccountId,
    $core.String? spaceKnowledgeId,
    $core.String? accountId,
    $54.Timestamp? inferredAt,
  }) {
    final _result = create();
    if (inferringAccountId != null) {
      _result.inferringAccountId = inferringAccountId;
    }
    if (spaceKnowledgeId != null) {
      _result.spaceKnowledgeId = spaceKnowledgeId;
    }
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (inferredAt != null) {
      _result.inferredAt = inferredAt;
    }
    return _result;
  }
  factory SpaceKnowledgeDomainInferringAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeDomainInferringAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainInferringAccount clone() => SpaceKnowledgeDomainInferringAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainInferringAccount copyWith(void Function(SpaceKnowledgeDomainInferringAccount) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeDomainInferringAccount)) as SpaceKnowledgeDomainInferringAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainInferringAccount create() => SpaceKnowledgeDomainInferringAccount._();
  SpaceKnowledgeDomainInferringAccount createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeDomainInferringAccount> createRepeated() => $pb.PbList<SpaceKnowledgeDomainInferringAccount>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainInferringAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeDomainInferringAccount>(create);
  static SpaceKnowledgeDomainInferringAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get inferringAccountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set inferringAccountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInferringAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInferringAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get spaceKnowledgeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountId => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountId() => clearField(3);

  @$pb.TagNumber(4)
  $54.Timestamp get inferredAt => $_getN(3);
  @$pb.TagNumber(4)
  set inferredAt($54.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasInferredAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearInferredAt() => clearField(4);
  @$pb.TagNumber(4)
  $54.Timestamp ensureInferredAt() => $_ensure(3);
}

class RankedAnswer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RankedAnswer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contextId')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paraRank', $pb.PbFieldType.OF)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'answer')
    ..hasRequiredFields = false
  ;

  RankedAnswer._() : super();
  factory RankedAnswer({
    $core.String? contextId,
    $core.double? paraRank,
    $core.String? answer,
  }) {
    final _result = create();
    if (contextId != null) {
      _result.contextId = contextId;
    }
    if (paraRank != null) {
      _result.paraRank = paraRank;
    }
    if (answer != null) {
      _result.answer = answer;
    }
    return _result;
  }
  factory RankedAnswer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RankedAnswer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RankedAnswer clone() => RankedAnswer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RankedAnswer copyWith(void Function(RankedAnswer) updates) => super.copyWith((message) => updates(message as RankedAnswer)) as RankedAnswer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RankedAnswer create() => RankedAnswer._();
  RankedAnswer createEmptyInstance() => create();
  static $pb.PbList<RankedAnswer> createRepeated() => $pb.PbList<RankedAnswer>();
  @$core.pragma('dart2js:noInline')
  static RankedAnswer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RankedAnswer>(create);
  static RankedAnswer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get contextId => $_getSZ(0);
  @$pb.TagNumber(1)
  set contextId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasContextId() => $_has(0);
  @$pb.TagNumber(1)
  void clearContextId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get paraRank => $_getN(1);
  @$pb.TagNumber(2)
  set paraRank($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParaRank() => $_has(1);
  @$pb.TagNumber(2)
  void clearParaRank() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get answer => $_getSZ(2);
  @$pb.TagNumber(3)
  set answer($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAnswer() => $_has(2);
  @$pb.TagNumber(3)
  void clearAnswer() => clearField(3);
}

