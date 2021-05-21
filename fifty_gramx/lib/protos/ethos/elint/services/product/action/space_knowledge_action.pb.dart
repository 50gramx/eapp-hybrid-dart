///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/action/space_knowledge_action.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../identity/account_assistant/access_account_assistant.pb.dart' as $13;
import '../../../entities/generic.pb.dart' as $2;
import '../../../entities/space_knowledge_domain.pb.dart' as $31;

class AskQuestionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AskQuestionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.action.space.knowledge'), createEmptyInstance: create)
    ..aOM<$13.AccountAssistantServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $13.AccountAssistantServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  AskQuestionRequest._() : super();
  factory AskQuestionRequest({
    $13.AccountAssistantServicesAccessAuthDetails? accessAuthDetails,
    $core.String? message,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory AskQuestionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AskQuestionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AskQuestionRequest clone() => AskQuestionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AskQuestionRequest copyWith(void Function(AskQuestionRequest) updates) => super.copyWith((message) => updates(message as AskQuestionRequest)) as AskQuestionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AskQuestionRequest create() => AskQuestionRequest._();
  AskQuestionRequest createEmptyInstance() => create();
  static $pb.PbList<AskQuestionRequest> createRepeated() => $pb.PbList<AskQuestionRequest>();
  @$core.pragma('dart2js:noInline')
  static AskQuestionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AskQuestionRequest>(create);
  static AskQuestionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $13.AccountAssistantServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails($13.AccountAssistantServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $13.AccountAssistantServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class AskQuestionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AskQuestionResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.action.space.knowledge'), createEmptyInstance: create)
    ..pc<DomainRankedAnswers>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'domainsRankedAnswers', $pb.PbFieldType.PM, subBuilder: DomainRankedAnswers.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  AskQuestionResponse._() : super();
  factory AskQuestionResponse({
    $core.Iterable<DomainRankedAnswers>? domainsRankedAnswers,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (domainsRankedAnswers != null) {
      _result.domainsRankedAnswers.addAll(domainsRankedAnswers);
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory AskQuestionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AskQuestionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AskQuestionResponse clone() => AskQuestionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AskQuestionResponse copyWith(void Function(AskQuestionResponse) updates) => super.copyWith((message) => updates(message as AskQuestionResponse)) as AskQuestionResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AskQuestionResponse create() => AskQuestionResponse._();
  AskQuestionResponse createEmptyInstance() => create();
  static $pb.PbList<AskQuestionResponse> createRepeated() => $pb.PbList<AskQuestionResponse>();
  @$core.pragma('dart2js:noInline')
  static AskQuestionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AskQuestionResponse>(create);
  static AskQuestionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DomainRankedAnswers> get domainsRankedAnswers => $_getList(0);

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

class DomainRankedAnswers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DomainRankedAnswers', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.action.space.knowledge'), createEmptyInstance: create)
    ..aOM<$31.SpaceKnowledgeDomain>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomain', subBuilder: $31.SpaceKnowledgeDomain.create)
    ..pc<$31.RankedAnswer>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rankedAnswers', $pb.PbFieldType.PM, subBuilder: $31.RankedAnswer.create)
    ..hasRequiredFields = false
  ;

  DomainRankedAnswers._() : super();
  factory DomainRankedAnswers({
    $31.SpaceKnowledgeDomain? spaceKnowledgeDomain,
    $core.Iterable<$31.RankedAnswer>? rankedAnswers,
  }) {
    final _result = create();
    if (spaceKnowledgeDomain != null) {
      _result.spaceKnowledgeDomain = spaceKnowledgeDomain;
    }
    if (rankedAnswers != null) {
      _result.rankedAnswers.addAll(rankedAnswers);
    }
    return _result;
  }
  factory DomainRankedAnswers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DomainRankedAnswers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DomainRankedAnswers clone() => DomainRankedAnswers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DomainRankedAnswers copyWith(void Function(DomainRankedAnswers) updates) => super.copyWith((message) => updates(message as DomainRankedAnswers)) as DomainRankedAnswers; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DomainRankedAnswers create() => DomainRankedAnswers._();
  DomainRankedAnswers createEmptyInstance() => create();
  static $pb.PbList<DomainRankedAnswers> createRepeated() => $pb.PbList<DomainRankedAnswers>();
  @$core.pragma('dart2js:noInline')
  static DomainRankedAnswers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DomainRankedAnswers>(create);
  static DomainRankedAnswers? _defaultInstance;

  @$pb.TagNumber(1)
  $31.SpaceKnowledgeDomain get spaceKnowledgeDomain => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomain($31.SpaceKnowledgeDomain v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomain() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomain() => clearField(1);
  @$pb.TagNumber(1)
  $31.SpaceKnowledgeDomain ensureSpaceKnowledgeDomain() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$31.RankedAnswer> get rankedAnswers => $_getList(1);
}

