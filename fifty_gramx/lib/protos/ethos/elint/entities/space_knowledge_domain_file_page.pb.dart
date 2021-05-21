///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/space_knowledge_domain_file_page.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'space_knowledge_domain_file.pb.dart' as $37;
import '../../../google/protobuf/timestamp.pb.dart' as $54;

export '../../../google/protobuf/timestamp.pb.dart';
class SpaceKnowledgeDomainFilePage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeDomainFilePage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageId')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageCount', $pb.PbFieldType.O3)
    ..aOM<$37.SpaceKnowledgeDomainFile>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFile', subBuilder: $37.SpaceKnowledgeDomainFile.create)
    ..pc<PageTag>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageTags', $pb.PbFieldType.PM, subBuilder: PageTag.create)
    ..aOM<$54.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastUpdatedAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastAccessedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeDomainFilePage._() : super();
  factory SpaceKnowledgeDomainFilePage({
    $core.String? spaceKnowledgeDomainFilePageId,
    $core.int? spaceKnowledgeDomainFilePageCount,
    $37.SpaceKnowledgeDomainFile? spaceKnowledgeDomainFile,
    $core.Iterable<PageTag>? pageTags,
    $54.Timestamp? createdAt,
    $54.Timestamp? lastUpdatedAt,
    $54.Timestamp? lastAccessedAt,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFilePageId != null) {
      _result.spaceKnowledgeDomainFilePageId = spaceKnowledgeDomainFilePageId;
    }
    if (spaceKnowledgeDomainFilePageCount != null) {
      _result.spaceKnowledgeDomainFilePageCount = spaceKnowledgeDomainFilePageCount;
    }
    if (spaceKnowledgeDomainFile != null) {
      _result.spaceKnowledgeDomainFile = spaceKnowledgeDomainFile;
    }
    if (pageTags != null) {
      _result.pageTags.addAll(pageTags);
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
  factory SpaceKnowledgeDomainFilePage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeDomainFilePage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePage clone() => SpaceKnowledgeDomainFilePage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePage copyWith(void Function(SpaceKnowledgeDomainFilePage) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeDomainFilePage)) as SpaceKnowledgeDomainFilePage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePage create() => SpaceKnowledgeDomainFilePage._();
  SpaceKnowledgeDomainFilePage createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeDomainFilePage> createRepeated() => $pb.PbList<SpaceKnowledgeDomainFilePage>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeDomainFilePage>(create);
  static SpaceKnowledgeDomainFilePage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get spaceKnowledgeDomainFilePageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainFilePageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainFilePageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainFilePageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get spaceKnowledgeDomainFilePageCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFilePageCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFilePageCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFilePageCount() => clearField(2);

  @$pb.TagNumber(3)
  $37.SpaceKnowledgeDomainFile get spaceKnowledgeDomainFile => $_getN(2);
  @$pb.TagNumber(3)
  set spaceKnowledgeDomainFile($37.SpaceKnowledgeDomainFile v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceKnowledgeDomainFile() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceKnowledgeDomainFile() => clearField(3);
  @$pb.TagNumber(3)
  $37.SpaceKnowledgeDomainFile ensureSpaceKnowledgeDomainFile() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<PageTag> get pageTags => $_getList(3);

  @$pb.TagNumber(5)
  $54.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($54.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $54.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $54.Timestamp get lastUpdatedAt => $_getN(5);
  @$pb.TagNumber(6)
  set lastUpdatedAt($54.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastUpdatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $54.Timestamp ensureLastUpdatedAt() => $_ensure(5);

  @$pb.TagNumber(7)
  $54.Timestamp get lastAccessedAt => $_getN(6);
  @$pb.TagNumber(7)
  set lastAccessedAt($54.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastAccessedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastAccessedAt() => clearField(7);
  @$pb.TagNumber(7)
  $54.Timestamp ensureLastAccessedAt() => $_ensure(6);
}

class PageTag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PageTag', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageTagId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageTagName')
    ..hasRequiredFields = false
  ;

  PageTag._() : super();
  factory PageTag({
    $core.String? pageTagId,
    $core.String? pageTagName,
  }) {
    final _result = create();
    if (pageTagId != null) {
      _result.pageTagId = pageTagId;
    }
    if (pageTagName != null) {
      _result.pageTagName = pageTagName;
    }
    return _result;
  }
  factory PageTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PageTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PageTag clone() => PageTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PageTag copyWith(void Function(PageTag) updates) => super.copyWith((message) => updates(message as PageTag)) as PageTag; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PageTag create() => PageTag._();
  PageTag createEmptyInstance() => create();
  static $pb.PbList<PageTag> createRepeated() => $pb.PbList<PageTag>();
  @$core.pragma('dart2js:noInline')
  static PageTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PageTag>(create);
  static PageTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pageTagId => $_getSZ(0);
  @$pb.TagNumber(1)
  set pageTagId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageTagId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageTagId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pageTagName => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageTagName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageTagName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageTagName() => clearField(2);
}

