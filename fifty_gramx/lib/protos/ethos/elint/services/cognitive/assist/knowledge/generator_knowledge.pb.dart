///
//  Generated code. Do not modify.
//  source: ethos/elint/services/cognitive/assist/knowledge/generator_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/space_knowledge_domain_file_page.pb.dart' as $40;

class GeneratePageQuestionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GeneratePageQuestionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.knowledge.generator'), createEmptyInstance: create)
    ..aOM<$40.SpaceKnowledgeDomainFilePage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'page', subBuilder: $40.SpaceKnowledgeDomainFilePage.create)
    ..hasRequiredFields = false
  ;

  GeneratePageQuestionRequest._() : super();
  factory GeneratePageQuestionRequest({
    $40.SpaceKnowledgeDomainFilePage? page,
  }) {
    final _result = create();
    if (page != null) {
      _result.page = page;
    }
    return _result;
  }
  factory GeneratePageQuestionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GeneratePageQuestionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GeneratePageQuestionRequest clone() => GeneratePageQuestionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GeneratePageQuestionRequest copyWith(void Function(GeneratePageQuestionRequest) updates) => super.copyWith((message) => updates(message as GeneratePageQuestionRequest)) as GeneratePageQuestionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GeneratePageQuestionRequest create() => GeneratePageQuestionRequest._();
  GeneratePageQuestionRequest createEmptyInstance() => create();
  static $pb.PbList<GeneratePageQuestionRequest> createRepeated() => $pb.PbList<GeneratePageQuestionRequest>();
  @$core.pragma('dart2js:noInline')
  static GeneratePageQuestionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GeneratePageQuestionRequest>(create);
  static GeneratePageQuestionRequest? _defaultInstance;

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
}

class GeneratePageQuestionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GeneratePageQuestionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.knowledge.generator'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'questions')
    ..hasRequiredFields = false
  ;

  GeneratePageQuestionResponse._() : super();
  factory GeneratePageQuestionResponse({
    $core.Iterable<$core.String>? questions,
  }) {
    final _result = create();
    if (questions != null) {
      _result.questions.addAll(questions);
    }
    return _result;
  }
  factory GeneratePageQuestionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GeneratePageQuestionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GeneratePageQuestionResponse clone() => GeneratePageQuestionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GeneratePageQuestionResponse copyWith(void Function(GeneratePageQuestionResponse) updates) => super.copyWith((message) => updates(message as GeneratePageQuestionResponse)) as GeneratePageQuestionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GeneratePageQuestionResponse create() => GeneratePageQuestionResponse._();
  GeneratePageQuestionResponse createEmptyInstance() => create();
  static $pb.PbList<GeneratePageQuestionResponse> createRepeated() => $pb.PbList<GeneratePageQuestionResponse>();
  @$core.pragma('dart2js:noInline')
  static GeneratePageQuestionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GeneratePageQuestionResponse>(create);
  static GeneratePageQuestionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get questions => $_getList(0);
}

