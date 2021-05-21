///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page/create_space_knowledge_domain_file_page.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ExtractPagesFromFileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExtractPagesFromFileResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalPagesCount', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extractedPagesCount', $pb.PbFieldType.O3)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metaDone')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metaMessage')
    ..hasRequiredFields = false
  ;

  ExtractPagesFromFileResponse._() : super();
  factory ExtractPagesFromFileResponse({
    $core.int? totalPagesCount,
    $core.int? extractedPagesCount,
    $core.bool? metaDone,
    $core.String? metaMessage,
  }) {
    final _result = create();
    if (totalPagesCount != null) {
      _result.totalPagesCount = totalPagesCount;
    }
    if (extractedPagesCount != null) {
      _result.extractedPagesCount = extractedPagesCount;
    }
    if (metaDone != null) {
      _result.metaDone = metaDone;
    }
    if (metaMessage != null) {
      _result.metaMessage = metaMessage;
    }
    return _result;
  }
  factory ExtractPagesFromFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExtractPagesFromFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExtractPagesFromFileResponse clone() => ExtractPagesFromFileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExtractPagesFromFileResponse copyWith(void Function(ExtractPagesFromFileResponse) updates) => super.copyWith((message) => updates(message as ExtractPagesFromFileResponse)) as ExtractPagesFromFileResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExtractPagesFromFileResponse create() => ExtractPagesFromFileResponse._();
  ExtractPagesFromFileResponse createEmptyInstance() => create();
  static $pb.PbList<ExtractPagesFromFileResponse> createRepeated() => $pb.PbList<ExtractPagesFromFileResponse>();
  @$core.pragma('dart2js:noInline')
  static ExtractPagesFromFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExtractPagesFromFileResponse>(create);
  static ExtractPagesFromFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalPagesCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalPagesCount($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalPagesCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalPagesCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get extractedPagesCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set extractedPagesCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExtractedPagesCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearExtractedPagesCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get metaDone => $_getBF(2);
  @$pb.TagNumber(3)
  set metaDone($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMetaDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearMetaDone() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get metaMessage => $_getSZ(3);
  @$pb.TagNumber(4)
  set metaMessage($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMetaMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMetaMessage() => clearField(4);
}

class ExtractTextFromPageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExtractTextFromPageResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metaDone')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metaMessage')
    ..hasRequiredFields = false
  ;

  ExtractTextFromPageResponse._() : super();
  factory ExtractTextFromPageResponse({
    $core.bool? metaDone,
    $core.String? metaMessage,
  }) {
    final _result = create();
    if (metaDone != null) {
      _result.metaDone = metaDone;
    }
    if (metaMessage != null) {
      _result.metaMessage = metaMessage;
    }
    return _result;
  }
  factory ExtractTextFromPageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExtractTextFromPageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExtractTextFromPageResponse clone() => ExtractTextFromPageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExtractTextFromPageResponse copyWith(void Function(ExtractTextFromPageResponse) updates) => super.copyWith((message) => updates(message as ExtractTextFromPageResponse)) as ExtractTextFromPageResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExtractTextFromPageResponse create() => ExtractTextFromPageResponse._();
  ExtractTextFromPageResponse createEmptyInstance() => create();
  static $pb.PbList<ExtractTextFromPageResponse> createRepeated() => $pb.PbList<ExtractTextFromPageResponse>();
  @$core.pragma('dart2js:noInline')
  static ExtractTextFromPageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExtractTextFromPageResponse>(create);
  static ExtractTextFromPageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get metaDone => $_getBF(0);
  @$pb.TagNumber(1)
  set metaDone($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetaDone() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaDone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get metaMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set metaMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetaMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetaMessage() => clearField(2);
}

