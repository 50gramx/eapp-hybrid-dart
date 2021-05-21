///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/space_knowledge_domain_file_page_para.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'space_knowledge_domain_file_page.pb.dart' as $40;
import '../../../google/protobuf/timestamp.pb.dart' as $54;

class SpaceKnowledgeDomainFilePagePara extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeDomainFilePagePara', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageParaId')
    ..aOM<$40.SpaceKnowledgeDomainFilePage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePage', subBuilder: $40.SpaceKnowledgeDomainFilePage.create)
    ..aOM<PageContourDimensions>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageContourDimensions', subBuilder: PageContourDimensions.create)
    ..pc<ParaTag>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paraTags', $pb.PbFieldType.PM, subBuilder: ParaTag.create)
    ..aOM<$54.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createdAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastUpdatedAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastAccessedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeDomainFilePagePara._() : super();
  factory SpaceKnowledgeDomainFilePagePara({
    $core.String? spaceKnowledgeDomainFilePageParaId,
    $40.SpaceKnowledgeDomainFilePage? spaceKnowledgeDomainFilePage,
    PageContourDimensions? pageContourDimensions,
    $core.Iterable<ParaTag>? paraTags,
    $54.Timestamp? createdAt,
    $54.Timestamp? lastUpdatedAt,
    $54.Timestamp? lastAccessedAt,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFilePageParaId != null) {
      _result.spaceKnowledgeDomainFilePageParaId = spaceKnowledgeDomainFilePageParaId;
    }
    if (spaceKnowledgeDomainFilePage != null) {
      _result.spaceKnowledgeDomainFilePage = spaceKnowledgeDomainFilePage;
    }
    if (pageContourDimensions != null) {
      _result.pageContourDimensions = pageContourDimensions;
    }
    if (paraTags != null) {
      _result.paraTags.addAll(paraTags);
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
  factory SpaceKnowledgeDomainFilePagePara.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeDomainFilePagePara.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePagePara clone() => SpaceKnowledgeDomainFilePagePara()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePagePara copyWith(void Function(SpaceKnowledgeDomainFilePagePara) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeDomainFilePagePara)) as SpaceKnowledgeDomainFilePagePara; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePagePara create() => SpaceKnowledgeDomainFilePagePara._();
  SpaceKnowledgeDomainFilePagePara createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeDomainFilePagePara> createRepeated() => $pb.PbList<SpaceKnowledgeDomainFilePagePara>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePagePara getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeDomainFilePagePara>(create);
  static SpaceKnowledgeDomainFilePagePara? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get spaceKnowledgeDomainFilePageParaId => $_getSZ(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainFilePageParaId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainFilePageParaId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainFilePageParaId() => clearField(1);

  @$pb.TagNumber(2)
  $40.SpaceKnowledgeDomainFilePage get spaceKnowledgeDomainFilePage => $_getN(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFilePage($40.SpaceKnowledgeDomainFilePage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFilePage() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFilePage() => clearField(2);
  @$pb.TagNumber(2)
  $40.SpaceKnowledgeDomainFilePage ensureSpaceKnowledgeDomainFilePage() => $_ensure(1);

  @$pb.TagNumber(3)
  PageContourDimensions get pageContourDimensions => $_getN(2);
  @$pb.TagNumber(3)
  set pageContourDimensions(PageContourDimensions v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageContourDimensions() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageContourDimensions() => clearField(3);
  @$pb.TagNumber(3)
  PageContourDimensions ensurePageContourDimensions() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<ParaTag> get paraTags => $_getList(3);

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

class ParaText extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ParaText', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paraId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paraText')
    ..hasRequiredFields = false
  ;

  ParaText._() : super();
  factory ParaText({
    $core.String? paraId,
    $core.String? paraText,
  }) {
    final _result = create();
    if (paraId != null) {
      _result.paraId = paraId;
    }
    if (paraText != null) {
      _result.paraText = paraText;
    }
    return _result;
  }
  factory ParaText.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParaText.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParaText clone() => ParaText()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParaText copyWith(void Function(ParaText) updates) => super.copyWith((message) => updates(message as ParaText)) as ParaText; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ParaText create() => ParaText._();
  ParaText createEmptyInstance() => create();
  static $pb.PbList<ParaText> createRepeated() => $pb.PbList<ParaText>();
  @$core.pragma('dart2js:noInline')
  static ParaText getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParaText>(create);
  static ParaText? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get paraId => $_getSZ(0);
  @$pb.TagNumber(1)
  set paraId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParaId() => $_has(0);
  @$pb.TagNumber(1)
  void clearParaId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get paraText => $_getSZ(1);
  @$pb.TagNumber(2)
  set paraText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParaText() => $_has(1);
  @$pb.TagNumber(2)
  void clearParaText() => clearField(2);
}

class PageContourDimensions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PageContourDimensions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'x', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'y', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'w', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'h', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  PageContourDimensions._() : super();
  factory PageContourDimensions({
    $core.int? x,
    $core.int? y,
    $core.int? w,
    $core.int? h,
  }) {
    final _result = create();
    if (x != null) {
      _result.x = x;
    }
    if (y != null) {
      _result.y = y;
    }
    if (w != null) {
      _result.w = w;
    }
    if (h != null) {
      _result.h = h;
    }
    return _result;
  }
  factory PageContourDimensions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PageContourDimensions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PageContourDimensions clone() => PageContourDimensions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PageContourDimensions copyWith(void Function(PageContourDimensions) updates) => super.copyWith((message) => updates(message as PageContourDimensions)) as PageContourDimensions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PageContourDimensions create() => PageContourDimensions._();
  PageContourDimensions createEmptyInstance() => create();
  static $pb.PbList<PageContourDimensions> createRepeated() => $pb.PbList<PageContourDimensions>();
  @$core.pragma('dart2js:noInline')
  static PageContourDimensions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PageContourDimensions>(create);
  static PageContourDimensions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get x => $_getIZ(0);
  @$pb.TagNumber(1)
  set x($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get y => $_getIZ(1);
  @$pb.TagNumber(2)
  set y($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get w => $_getIZ(2);
  @$pb.TagNumber(3)
  set w($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasW() => $_has(2);
  @$pb.TagNumber(3)
  void clearW() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get h => $_getIZ(3);
  @$pb.TagNumber(4)
  set h($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasH() => $_has(3);
  @$pb.TagNumber(4)
  void clearH() => clearField(4);
}

class ParaTag extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ParaTag', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paraTagId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paraTagName')
    ..hasRequiredFields = false
  ;

  ParaTag._() : super();
  factory ParaTag({
    $core.String? paraTagId,
    $core.String? paraTagName,
  }) {
    final _result = create();
    if (paraTagId != null) {
      _result.paraTagId = paraTagId;
    }
    if (paraTagName != null) {
      _result.paraTagName = paraTagName;
    }
    return _result;
  }
  factory ParaTag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParaTag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParaTag clone() => ParaTag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParaTag copyWith(void Function(ParaTag) updates) => super.copyWith((message) => updates(message as ParaTag)) as ParaTag; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ParaTag create() => ParaTag._();
  ParaTag createEmptyInstance() => create();
  static $pb.PbList<ParaTag> createRepeated() => $pb.PbList<ParaTag>();
  @$core.pragma('dart2js:noInline')
  static ParaTag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParaTag>(create);
  static ParaTag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get paraTagId => $_getSZ(0);
  @$pb.TagNumber(1)
  set paraTagId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParaTagId() => $_has(0);
  @$pb.TagNumber(1)
  void clearParaTagId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get paraTagName => $_getSZ(1);
  @$pb.TagNumber(2)
  set paraTagName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParaTagName() => $_has(1);
  @$pb.TagNumber(2)
  void clearParaTagName() => clearField(2);
}

