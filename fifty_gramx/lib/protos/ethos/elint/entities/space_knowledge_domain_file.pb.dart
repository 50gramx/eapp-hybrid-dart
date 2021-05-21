///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/space_knowledge_domain_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'space_knowledge_domain.pb.dart' as $31;
import '../../../google/protobuf/timestamp.pb.dart' as $54;

import 'space_knowledge_domain_file.pbenum.dart';

export 'space_knowledge_domain_file.pbenum.dart';

class FileTag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileTag', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileTagId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileTagName')
    ..hasRequiredFields = false
  ;

  FileTag._() : super();
  factory FileTag({
    $core.String? fileTagId,
    $core.String? fileTagName,
  }) {
    final _result = create();
    if (fileTagId != null) {
      _result.fileTagId = fileTagId;
    }
    if (fileTagName != null) {
      _result.fileTagName = fileTagName;
    }
    return _result;
  }
  factory FileTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileTag clone() => FileTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileTag copyWith(void Function(FileTag) updates) => super.copyWith((message) => updates(message as FileTag)) as FileTag; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileTag create() => FileTag._();
  FileTag createEmptyInstance() => create();
  static $pb.PbList<FileTag> createRepeated() => $pb.PbList<FileTag>();
  @$core.pragma('dart2js:noInline')
  static FileTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileTag>(create);
  static FileTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fileTagId => $_getSZ(0);
  @$pb.TagNumber(1)
  set fileTagId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileTagId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileTagId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileTagName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileTagName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileTagName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileTagName() => clearField(2);
}

class SpaceKnowledgeDomainFile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeDomainFile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileName')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileSize', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileId')
    ..e<ExtentionType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileExtensionType', $pb.PbFieldType.OE, defaultOrMaker: ExtentionType.PNG, valueOf: ExtentionType.valueOf, enumValues: ExtentionType.values)
    ..aOM<$31.SpaceKnowledgeDomain>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomain', subBuilder: $31.SpaceKnowledgeDomain.create)
    ..pc<FileTag>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileTags', $pb.PbFieldType.PM, subBuilder: FileTag.create)
    ..aOM<$54.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastUpdatedAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastAccessedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeDomainFile._() : super();
  factory SpaceKnowledgeDomainFile({
    $core.String? spaceKnowledgeDomainFileName,
    $core.int? spaceKnowledgeDomainFileSize,
    $core.String? spaceKnowledgeDomainFileId,
    ExtentionType? spaceKnowledgeDomainFileExtensionType,
    $31.SpaceKnowledgeDomain? spaceKnowledgeDomain,
    $core.Iterable<FileTag>? spaceKnowledgeDomainFileTags,
    $54.Timestamp? createdAt,
    $54.Timestamp? lastUpdatedAt,
    $54.Timestamp? lastAccessedAt,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFileName != null) {
      _result.spaceKnowledgeDomainFileName = spaceKnowledgeDomainFileName;
    }
    if (spaceKnowledgeDomainFileSize != null) {
      _result.spaceKnowledgeDomainFileSize = spaceKnowledgeDomainFileSize;
    }
    if (spaceKnowledgeDomainFileId != null) {
      _result.spaceKnowledgeDomainFileId = spaceKnowledgeDomainFileId;
    }
    if (spaceKnowledgeDomainFileExtensionType != null) {
      _result.spaceKnowledgeDomainFileExtensionType = spaceKnowledgeDomainFileExtensionType;
    }
    if (spaceKnowledgeDomain != null) {
      _result.spaceKnowledgeDomain = spaceKnowledgeDomain;
    }
    if (spaceKnowledgeDomainFileTags != null) {
      _result.spaceKnowledgeDomainFileTags.addAll(spaceKnowledgeDomainFileTags);
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (lastUpdatedAt != null) {
      _result.lastUpdatedAt = lastUpdatedAt;
    }
    if (lastAccessedAt != null) {
      _result.lastAccessedAt = lastAccessedAt;
    }
    return _result;
  }
  factory SpaceKnowledgeDomainFile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeDomainFile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFile clone() => SpaceKnowledgeDomainFile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFile copyWith(void Function(SpaceKnowledgeDomainFile) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeDomainFile)) as SpaceKnowledgeDomainFile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFile create() => SpaceKnowledgeDomainFile._();
  SpaceKnowledgeDomainFile createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeDomainFile> createRepeated() => $pb.PbList<SpaceKnowledgeDomainFile>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeDomainFile>(create);
  static SpaceKnowledgeDomainFile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get spaceKnowledgeDomainFileName => $_getSZ(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainFileName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainFileName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainFileName() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get spaceKnowledgeDomainFileSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFileSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFileSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFileSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get spaceKnowledgeDomainFileId => $_getSZ(2);
  @$pb.TagNumber(3)
  set spaceKnowledgeDomainFileId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceKnowledgeDomainFileId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceKnowledgeDomainFileId() => clearField(3);

  @$pb.TagNumber(4)
  ExtentionType get spaceKnowledgeDomainFileExtensionType => $_getN(3);
  @$pb.TagNumber(4)
  set spaceKnowledgeDomainFileExtensionType(ExtentionType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpaceKnowledgeDomainFileExtensionType() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpaceKnowledgeDomainFileExtensionType() => clearField(4);

  @$pb.TagNumber(5)
  $31.SpaceKnowledgeDomain get spaceKnowledgeDomain => $_getN(4);
  @$pb.TagNumber(5)
  set spaceKnowledgeDomain($31.SpaceKnowledgeDomain v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSpaceKnowledgeDomain() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpaceKnowledgeDomain() => clearField(5);
  @$pb.TagNumber(5)
  $31.SpaceKnowledgeDomain ensureSpaceKnowledgeDomain() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<FileTag> get spaceKnowledgeDomainFileTags => $_getList(5);

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

  @$pb.TagNumber(9)
  $54.Timestamp get lastAccessedAt => $_getN(8);
  @$pb.TagNumber(9)
  set lastAccessedAt($54.Timestamp v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastAccessedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastAccessedAt() => clearField(9);
  @$pb.TagNumber(9)
  $54.Timestamp ensureLastAccessedAt() => $_ensure(8);
}

