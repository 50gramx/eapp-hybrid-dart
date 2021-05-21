///
//  Generated code. Do not modify.
//  source: ethos/elint/services/cognitive/assist/knowledge/reader_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../product/knowledge/space_knowledge_domain/access_space_knowledge_domain.pb.dart' as $27;
import '../../../../entities/space_knowledge_domain_file_page.pb.dart' as $40;
import '../../../../entities/generic.pb.dart' as $2;
import '../../../../entities/space_knowledge_domain_file_page_para.pb.dart' as $59;

class ReadPageQuestionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReadPageQuestionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.knowledge.reader'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOM<$40.SpaceKnowledgeDomainFilePage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'page', subBuilder: $40.SpaceKnowledgeDomainFilePage.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'question')
    ..hasRequiredFields = false
  ;

  ReadPageQuestionRequest._() : super();
  factory ReadPageQuestionRequest({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? accessAuthDetails,
    $40.SpaceKnowledgeDomainFilePage? page,
    $core.String? question,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (page != null) {
      _result.page = page;
    }
    if (question != null) {
      _result.question = question;
    }
    return _result;
  }
  factory ReadPageQuestionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadPageQuestionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadPageQuestionRequest clone() => ReadPageQuestionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadPageQuestionRequest copyWith(void Function(ReadPageQuestionRequest) updates) => super.copyWith((message) => updates(message as ReadPageQuestionRequest)) as ReadPageQuestionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadPageQuestionRequest create() => ReadPageQuestionRequest._();
  ReadPageQuestionRequest createEmptyInstance() => create();
  static $pb.PbList<ReadPageQuestionRequest> createRepeated() => $pb.PbList<ReadPageQuestionRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadPageQuestionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadPageQuestionRequest>(create);
  static ReadPageQuestionRequest? _defaultInstance;

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
  $40.SpaceKnowledgeDomainFilePage get page => $_getN(1);
  @$pb.TagNumber(2)
  set page($40.SpaceKnowledgeDomainFilePage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPage() => clearField(2);
  @$pb.TagNumber(2)
  $40.SpaceKnowledgeDomainFilePage ensurePage() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get question => $_getSZ(2);
  @$pb.TagNumber(3)
  set question($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuestion() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuestion() => clearField(3);
}

class ReadPageQuestionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReadPageQuestionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.knowledge.reader'), createEmptyInstance: create)
    ..aOM<PageAnswer>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageAnswer', subBuilder: PageAnswer.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ReadPageQuestionResponse._() : super();
  factory ReadPageQuestionResponse({
    PageAnswer? pageAnswer,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (pageAnswer != null) {
      _result.pageAnswer = pageAnswer;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory ReadPageQuestionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadPageQuestionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadPageQuestionResponse clone() => ReadPageQuestionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadPageQuestionResponse copyWith(void Function(ReadPageQuestionResponse) updates) => super.copyWith((message) => updates(message as ReadPageQuestionResponse)) as ReadPageQuestionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadPageQuestionResponse create() => ReadPageQuestionResponse._();
  ReadPageQuestionResponse createEmptyInstance() => create();
  static $pb.PbList<ReadPageQuestionResponse> createRepeated() => $pb.PbList<ReadPageQuestionResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadPageQuestionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadPageQuestionResponse>(create);
  static ReadPageQuestionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  PageAnswer get pageAnswer => $_getN(0);
  @$pb.TagNumber(1)
  set pageAnswer(PageAnswer v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageAnswer() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageAnswer() => clearField(1);
  @$pb.TagNumber(1)
  PageAnswer ensurePageAnswer() => $_ensure(0);

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

class ReadParaQuestionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReadParaQuestionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.knowledge.reader'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOM<$59.SpaceKnowledgeDomainFilePagePara>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'para', subBuilder: $59.SpaceKnowledgeDomainFilePagePara.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'question')
    ..hasRequiredFields = false
  ;

  ReadParaQuestionRequest._() : super();
  factory ReadParaQuestionRequest({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? accessAuthDetails,
    $59.SpaceKnowledgeDomainFilePagePara? para,
    $core.String? question,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (para != null) {
      _result.para = para;
    }
    if (question != null) {
      _result.question = question;
    }
    return _result;
  }
  factory ReadParaQuestionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadParaQuestionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadParaQuestionRequest clone() => ReadParaQuestionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadParaQuestionRequest copyWith(void Function(ReadParaQuestionRequest) updates) => super.copyWith((message) => updates(message as ReadParaQuestionRequest)) as ReadParaQuestionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadParaQuestionRequest create() => ReadParaQuestionRequest._();
  ReadParaQuestionRequest createEmptyInstance() => create();
  static $pb.PbList<ReadParaQuestionRequest> createRepeated() => $pb.PbList<ReadParaQuestionRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadParaQuestionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadParaQuestionRequest>(create);
  static ReadParaQuestionRequest? _defaultInstance;

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
  $59.SpaceKnowledgeDomainFilePagePara get para => $_getN(1);
  @$pb.TagNumber(2)
  set para($59.SpaceKnowledgeDomainFilePagePara v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPara() => $_has(1);
  @$pb.TagNumber(2)
  void clearPara() => clearField(2);
  @$pb.TagNumber(2)
  $59.SpaceKnowledgeDomainFilePagePara ensurePara() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get question => $_getSZ(2);
  @$pb.TagNumber(3)
  set question($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuestion() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuestion() => clearField(3);
}

class ReadParaQuestionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReadParaQuestionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.knowledge.reader'), createEmptyInstance: create)
    ..aOM<ParaAnswer>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paraAnswer', subBuilder: ParaAnswer.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ReadParaQuestionResponse._() : super();
  factory ReadParaQuestionResponse({
    ParaAnswer? paraAnswer,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (paraAnswer != null) {
      _result.paraAnswer = paraAnswer;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory ReadParaQuestionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadParaQuestionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadParaQuestionResponse clone() => ReadParaQuestionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadParaQuestionResponse copyWith(void Function(ReadParaQuestionResponse) updates) => super.copyWith((message) => updates(message as ReadParaQuestionResponse)) as ReadParaQuestionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadParaQuestionResponse create() => ReadParaQuestionResponse._();
  ReadParaQuestionResponse createEmptyInstance() => create();
  static $pb.PbList<ReadParaQuestionResponse> createRepeated() => $pb.PbList<ReadParaQuestionResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadParaQuestionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadParaQuestionResponse>(create);
  static ReadParaQuestionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ParaAnswer get paraAnswer => $_getN(0);
  @$pb.TagNumber(1)
  set paraAnswer(ParaAnswer v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParaAnswer() => $_has(0);
  @$pb.TagNumber(1)
  void clearParaAnswer() => clearField(1);
  @$pb.TagNumber(1)
  ParaAnswer ensureParaAnswer() => $_ensure(0);

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

class PageAnswer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PageAnswer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.knowledge.reader'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'answer')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageText')
    ..hasRequiredFields = false
  ;

  PageAnswer._() : super();
  factory PageAnswer({
    $core.String? answer,
    $core.String? pageText,
  }) {
    final _result = create();
    if (answer != null) {
      _result.answer = answer;
    }
    if (pageText != null) {
      _result.pageText = pageText;
    }
    return _result;
  }
  factory PageAnswer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PageAnswer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PageAnswer clone() => PageAnswer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PageAnswer copyWith(void Function(PageAnswer) updates) => super.copyWith((message) => updates(message as PageAnswer)) as PageAnswer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PageAnswer create() => PageAnswer._();
  PageAnswer createEmptyInstance() => create();
  static $pb.PbList<PageAnswer> createRepeated() => $pb.PbList<PageAnswer>();
  @$core.pragma('dart2js:noInline')
  static PageAnswer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PageAnswer>(create);
  static PageAnswer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get answer => $_getSZ(0);
  @$pb.TagNumber(1)
  set answer($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnswer() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnswer() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pageText => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageText() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageText() => clearField(2);
}

class ParaAnswer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ParaAnswer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.knowledge.reader'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'answer')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paraText')
    ..hasRequiredFields = false
  ;

  ParaAnswer._() : super();
  factory ParaAnswer({
    $core.String? answer,
    $core.String? paraText,
  }) {
    final _result = create();
    if (answer != null) {
      _result.answer = answer;
    }
    if (paraText != null) {
      _result.paraText = paraText;
    }
    return _result;
  }
  factory ParaAnswer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParaAnswer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParaAnswer clone() => ParaAnswer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParaAnswer copyWith(void Function(ParaAnswer) updates) => super.copyWith((message) => updates(message as ParaAnswer)) as ParaAnswer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ParaAnswer create() => ParaAnswer._();
  ParaAnswer createEmptyInstance() => create();
  static $pb.PbList<ParaAnswer> createRepeated() => $pb.PbList<ParaAnswer>();
  @$core.pragma('dart2js:noInline')
  static ParaAnswer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParaAnswer>(create);
  static ParaAnswer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get answer => $_getSZ(0);
  @$pb.TagNumber(1)
  set answer($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAnswer() => $_has(0);
  @$pb.TagNumber(1)
  void clearAnswer() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get paraText => $_getSZ(1);
  @$pb.TagNumber(2)
  set paraText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasParaText() => $_has(1);
  @$pb.TagNumber(2)
  void clearParaText() => clearField(2);
}

