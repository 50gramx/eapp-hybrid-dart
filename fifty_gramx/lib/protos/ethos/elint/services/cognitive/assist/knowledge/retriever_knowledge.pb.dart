///
//  Generated code. Do not modify.
//  source: ethos/elint/services/cognitive/assist/knowledge/retriever_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../product/knowledge/space_knowledge_domain/access_space_knowledge_domain.pb.dart' as $27;
import '../../../../entities/generic.pb.dart' as $2;
import '../../../../entities/space_knowledge_domain_file_page.pb.dart' as $40;
import '../../../../entities/space_knowledge_domain_file_page_para.pb.dart' as $59;

class RetrieveClosestPagesReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RetrieveClosestPagesReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.knowledge.retriever'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'retrievePageCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RetrieveClosestPagesReq._() : super();
  factory RetrieveClosestPagesReq({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? accessAuthDetails,
    $core.String? message,
    $core.int? retrievePageCount,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (message != null) {
      _result.message = message;
    }
    if (retrievePageCount != null) {
      _result.retrievePageCount = retrievePageCount;
    }
    return _result;
  }
  factory RetrieveClosestPagesReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RetrieveClosestPagesReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RetrieveClosestPagesReq clone() => RetrieveClosestPagesReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RetrieveClosestPagesReq copyWith(void Function(RetrieveClosestPagesReq) updates) => super.copyWith((message) => updates(message as RetrieveClosestPagesReq)) as RetrieveClosestPagesReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RetrieveClosestPagesReq create() => RetrieveClosestPagesReq._();
  RetrieveClosestPagesReq createEmptyInstance() => create();
  static $pb.PbList<RetrieveClosestPagesReq> createRepeated() => $pb.PbList<RetrieveClosestPagesReq>();
  @$core.pragma('dart2js:noInline')
  static RetrieveClosestPagesReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RetrieveClosestPagesReq>(create);
  static RetrieveClosestPagesReq? _defaultInstance;

  @$pb.TagNumber(1)
  $27.SpaceKnowledgeDomainServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails($27.SpaceKnowledgeDomainServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $27.SpaceKnowledgeDomainServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get retrievePageCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set retrievePageCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRetrievePageCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearRetrievePageCount() => clearField(3);
}

class RetrieveClosestParasRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RetrieveClosestParasRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.knowledge.retriever'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'retrieveParaCount', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RetrieveClosestParasRequest._() : super();
  factory RetrieveClosestParasRequest({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? accessAuthDetails,
    $core.String? message,
    $core.int? retrieveParaCount,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (message != null) {
      _result.message = message;
    }
    if (retrieveParaCount != null) {
      _result.retrieveParaCount = retrieveParaCount;
    }
    return _result;
  }
  factory RetrieveClosestParasRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RetrieveClosestParasRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RetrieveClosestParasRequest clone() => RetrieveClosestParasRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RetrieveClosestParasRequest copyWith(void Function(RetrieveClosestParasRequest) updates) => super.copyWith((message) => updates(message as RetrieveClosestParasRequest)) as RetrieveClosestParasRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RetrieveClosestParasRequest create() => RetrieveClosestParasRequest._();
  RetrieveClosestParasRequest createEmptyInstance() => create();
  static $pb.PbList<RetrieveClosestParasRequest> createRepeated() => $pb.PbList<RetrieveClosestParasRequest>();
  @$core.pragma('dart2js:noInline')
  static RetrieveClosestParasRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RetrieveClosestParasRequest>(create);
  static RetrieveClosestParasRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $27.SpaceKnowledgeDomainServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails($27.SpaceKnowledgeDomainServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $27.SpaceKnowledgeDomainServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get retrieveParaCount => $_getIZ(2);
  @$pb.TagNumber(3)
  set retrieveParaCount($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRetrieveParaCount() => $_has(2);
  @$pb.TagNumber(3)
  void clearRetrieveParaCount() => clearField(3);
}

class ClosestPages extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClosestPages', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.knowledge.retriever'), createEmptyInstance: create)
    ..pc<RankedPage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rankedPages', $pb.PbFieldType.PM, subBuilder: RankedPage.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ClosestPages._() : super();
  factory ClosestPages({
    $core.Iterable<RankedPage>? rankedPages,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (rankedPages != null) {
      _result.rankedPages.addAll(rankedPages);
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory ClosestPages.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClosestPages.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClosestPages clone() => ClosestPages()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClosestPages copyWith(void Function(ClosestPages) updates) => super.copyWith((message) => updates(message as ClosestPages)) as ClosestPages; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClosestPages create() => ClosestPages._();
  ClosestPages createEmptyInstance() => create();
  static $pb.PbList<ClosestPages> createRepeated() => $pb.PbList<ClosestPages>();
  @$core.pragma('dart2js:noInline')
  static ClosestPages getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClosestPages>(create);
  static ClosestPages? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RankedPage> get rankedPages => $_getList(0);

  @$pb.TagNumber(2)
  $2.ResponseMeta get responseMeta => $_getN(1);
  @$pb.TagNumber(2)
  set responseMeta($2.ResponseMeta v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseMeta() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseMeta() => clearField(2);
  @$pb.TagNumber(2)
  $2.ResponseMeta ensureResponseMeta() => $_ensure(1);
}

class ClosestParas extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClosestParas', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.knowledge.retriever'), createEmptyInstance: create)
    ..pc<RankedPara>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rankedParas', $pb.PbFieldType.PM, subBuilder: RankedPara.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ClosestParas._() : super();
  factory ClosestParas({
    $core.Iterable<RankedPara>? rankedParas,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (rankedParas != null) {
      _result.rankedParas.addAll(rankedParas);
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory ClosestParas.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClosestParas.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClosestParas clone() => ClosestParas()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClosestParas copyWith(void Function(ClosestParas) updates) => super.copyWith((message) => updates(message as ClosestParas)) as ClosestParas; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClosestParas create() => ClosestParas._();
  ClosestParas createEmptyInstance() => create();
  static $pb.PbList<ClosestParas> createRepeated() => $pb.PbList<ClosestParas>();
  @$core.pragma('dart2js:noInline')
  static ClosestParas getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClosestParas>(create);
  static ClosestParas? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RankedPara> get rankedParas => $_getList(0);

  @$pb.TagNumber(2)
  $2.ResponseMeta get responseMeta => $_getN(1);
  @$pb.TagNumber(2)
  set responseMeta($2.ResponseMeta v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseMeta() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseMeta() => clearField(2);
  @$pb.TagNumber(2)
  $2.ResponseMeta ensureResponseMeta() => $_ensure(1);
}

class RankedPage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RankedPage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.knowledge.retriever'), createEmptyInstance: create)
    ..aOM<$40.SpaceKnowledgeDomainFilePage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'page', subBuilder: $40.SpaceKnowledgeDomainFilePage.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageRank', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  RankedPage._() : super();
  factory RankedPage({
    $40.SpaceKnowledgeDomainFilePage? page,
    $core.double? pageRank,
  }) {
    final _result = create();
    if (page != null) {
      _result.page = page;
    }
    if (pageRank != null) {
      _result.pageRank = pageRank;
    }
    return _result;
  }
  factory RankedPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RankedPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RankedPage clone() => RankedPage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RankedPage copyWith(void Function(RankedPage) updates) => super.copyWith((message) => updates(message as RankedPage)) as RankedPage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RankedPage create() => RankedPage._();
  RankedPage createEmptyInstance() => create();
  static $pb.PbList<RankedPage> createRepeated() => $pb.PbList<RankedPage>();
  @$core.pragma('dart2js:noInline')
  static RankedPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RankedPage>(create);
  static RankedPage? _defaultInstance;

  @$pb.TagNumber(1)
  $40.SpaceKnowledgeDomainFilePage get page => $_getN(0);
  @$pb.TagNumber(1)
  set page($40.SpaceKnowledgeDomainFilePage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPage() => clearField(1);
  @$pb.TagNumber(1)
  $40.SpaceKnowledgeDomainFilePage ensurePage() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get pageRank => $_getN(1);
  @$pb.TagNumber(2)
  set pageRank($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageRank() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageRank() => clearField(2);
}

class RankedPara extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RankedPara', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.knowledge.retriever'), createEmptyInstance: create)
    ..aOM<$59.SpaceKnowledgeDomainFilePagePara>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'para', subBuilder: $59.SpaceKnowledgeDomainFilePagePara.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paraRank', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  RankedPara._() : super();
  factory RankedPara({
    $59.SpaceKnowledgeDomainFilePagePara? para,
    $core.double? paraRank,
  }) {
    final _result = create();
    if (para != null) {
      _result.para = para;
    }
    if (paraRank != null) {
      _result.paraRank = paraRank;
    }
    return _result;
  }
  factory RankedPara.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RankedPara.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RankedPara clone() => RankedPara()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RankedPara copyWith(void Function(RankedPara) updates) => super.copyWith((message) => updates(message as RankedPara)) as RankedPara; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RankedPara create() => RankedPara._();
  RankedPara createEmptyInstance() => create();
  static $pb.PbList<RankedPara> createRepeated() => $pb.PbList<RankedPara>();
  @$core.pragma('dart2js:noInline')
  static RankedPara getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RankedPara>(create);
  static RankedPara? _defaultInstance;

  @$pb.TagNumber(1)
  $59.SpaceKnowledgeDomainFilePagePara get para => $_getN(0);
  @$pb.TagNumber(1)
  set para($59.SpaceKnowledgeDomainFilePagePara v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPara() => $_has(0);
  @$pb.TagNumber(1)
  void clearPara() => clearField(1);
  @$pb.TagNumber(1)
  $59.SpaceKnowledgeDomainFilePagePara ensurePara() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get paraRank => $_getN(1);
  @$pb.TagNumber(2)
  set paraRank($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParaRank() => $_has(1);
  @$pb.TagNumber(2)
  void clearParaRank() => clearField(2);
}

