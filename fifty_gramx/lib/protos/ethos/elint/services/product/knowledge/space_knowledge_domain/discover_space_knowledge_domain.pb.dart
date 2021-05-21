///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain/discover_space_knowledge_domain.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/space_knowledge_domain_file.pb.dart' as $37;
import 'access_space_knowledge_domain.pb.dart' as $27;
import '../../../../entities/space_knowledge_domain.pb.dart' as $31;
import '../../../../entities/generic.pb.dart' as $2;

class GetAllDomainFilesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAllDomainFilesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.domain'), createEmptyInstance: create)
    ..pc<$37.SpaceKnowledgeDomainFile>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'files', $pb.PbFieldType.PM, subBuilder: $37.SpaceKnowledgeDomainFile.create)
    ..hasRequiredFields = false
  ;

  GetAllDomainFilesResponse._() : super();
  factory GetAllDomainFilesResponse({
    $core.Iterable<$37.SpaceKnowledgeDomainFile>? files,
  }) {
    final _result = create();
    if (files != null) {
      _result.files.addAll(files);
    }
    return _result;
  }
  factory GetAllDomainFilesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAllDomainFilesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAllDomainFilesResponse clone() => GetAllDomainFilesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAllDomainFilesResponse copyWith(void Function(GetAllDomainFilesResponse) updates) => super.copyWith((message) => updates(message as GetAllDomainFilesResponse)) as GetAllDomainFilesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAllDomainFilesResponse create() => GetAllDomainFilesResponse._();
  GetAllDomainFilesResponse createEmptyInstance() => create();
  static $pb.PbList<GetAllDomainFilesResponse> createRepeated() => $pb.PbList<GetAllDomainFilesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAllDomainFilesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAllDomainFilesResponse>(create);
  static GetAllDomainFilesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$37.SpaceKnowledgeDomainFile> get files => $_getList(0);
}

class GetBestAnswersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBestAnswersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.domain'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bestAnswersCount', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'question')
    ..hasRequiredFields = false
  ;

  GetBestAnswersRequest._() : super();
  factory GetBestAnswersRequest({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? accessAuthDetails,
    $core.int? bestAnswersCount,
    $core.String? question,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (bestAnswersCount != null) {
      _result.bestAnswersCount = bestAnswersCount;
    }
    if (question != null) {
      _result.question = question;
    }
    return _result;
  }
  factory GetBestAnswersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBestAnswersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBestAnswersRequest clone() => GetBestAnswersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBestAnswersRequest copyWith(void Function(GetBestAnswersRequest) updates) => super.copyWith((message) => updates(message as GetBestAnswersRequest)) as GetBestAnswersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBestAnswersRequest create() => GetBestAnswersRequest._();
  GetBestAnswersRequest createEmptyInstance() => create();
  static $pb.PbList<GetBestAnswersRequest> createRepeated() => $pb.PbList<GetBestAnswersRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBestAnswersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBestAnswersRequest>(create);
  static GetBestAnswersRequest? _defaultInstance;

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
  $core.int get bestAnswersCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set bestAnswersCount($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBestAnswersCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearBestAnswersCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get question => $_getSZ(2);
  @$pb.TagNumber(3)
  set question($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuestion() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuestion() => clearField(3);
}

class GetBestAnswersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBestAnswersResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.domain'), createEmptyInstance: create)
    ..pc<$31.RankedAnswer>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rankedAnswers', $pb.PbFieldType.PM, subBuilder: $31.RankedAnswer.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetBestAnswersResponse._() : super();
  factory GetBestAnswersResponse({
    $core.Iterable<$31.RankedAnswer>? rankedAnswers,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (rankedAnswers != null) {
      _result.rankedAnswers.addAll(rankedAnswers);
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetBestAnswersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBestAnswersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBestAnswersResponse clone() => GetBestAnswersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBestAnswersResponse copyWith(void Function(GetBestAnswersResponse) updates) => super.copyWith((message) => updates(message as GetBestAnswersResponse)) as GetBestAnswersResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBestAnswersResponse create() => GetBestAnswersResponse._();
  GetBestAnswersResponse createEmptyInstance() => create();
  static $pb.PbList<GetBestAnswersResponse> createRepeated() => $pb.PbList<GetBestAnswersResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBestAnswersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBestAnswersResponse>(create);
  static GetBestAnswersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$31.RankedAnswer> get rankedAnswers => $_getList(0);

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

class RetrieveMessageContextPagesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RetrieveMessageContextPagesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.domain'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  RetrieveMessageContextPagesRequest._() : super();
  factory RetrieveMessageContextPagesRequest({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? accessAuthDetails,
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
  factory RetrieveMessageContextPagesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RetrieveMessageContextPagesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RetrieveMessageContextPagesRequest clone() => RetrieveMessageContextPagesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RetrieveMessageContextPagesRequest copyWith(void Function(RetrieveMessageContextPagesRequest) updates) => super.copyWith((message) => updates(message as RetrieveMessageContextPagesRequest)) as RetrieveMessageContextPagesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RetrieveMessageContextPagesRequest create() => RetrieveMessageContextPagesRequest._();
  RetrieveMessageContextPagesRequest createEmptyInstance() => create();
  static $pb.PbList<RetrieveMessageContextPagesRequest> createRepeated() => $pb.PbList<RetrieveMessageContextPagesRequest>();
  @$core.pragma('dart2js:noInline')
  static RetrieveMessageContextPagesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RetrieveMessageContextPagesRequest>(create);
  static RetrieveMessageContextPagesRequest? _defaultInstance;

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
}

class RetrieveMessageContextPagesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RetrieveMessageContextPagesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.domain'), createEmptyInstance: create)
    ..pc<ContextPage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'contextPage', $pb.PbFieldType.PM, subBuilder: ContextPage.create)
    ..aOM<$2.ResponseMeta>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  RetrieveMessageContextPagesResponse._() : super();
  factory RetrieveMessageContextPagesResponse({
    $core.Iterable<ContextPage>? contextPage,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (contextPage != null) {
      _result.contextPage.addAll(contextPage);
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory RetrieveMessageContextPagesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RetrieveMessageContextPagesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RetrieveMessageContextPagesResponse clone() => RetrieveMessageContextPagesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RetrieveMessageContextPagesResponse copyWith(void Function(RetrieveMessageContextPagesResponse) updates) => super.copyWith((message) => updates(message as RetrieveMessageContextPagesResponse)) as RetrieveMessageContextPagesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RetrieveMessageContextPagesResponse create() => RetrieveMessageContextPagesResponse._();
  RetrieveMessageContextPagesResponse createEmptyInstance() => create();
  static $pb.PbList<RetrieveMessageContextPagesResponse> createRepeated() => $pb.PbList<RetrieveMessageContextPagesResponse>();
  @$core.pragma('dart2js:noInline')
  static RetrieveMessageContextPagesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RetrieveMessageContextPagesResponse>(create);
  static RetrieveMessageContextPagesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ContextPage> get contextPage => $_getList(0);

  @$pb.TagNumber(3)
  $2.ResponseMeta get responseMeta => $_getN(1);
  @$pb.TagNumber(3)
  set responseMeta($2.ResponseMeta v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResponseMeta() => $_has(1);
  @$pb.TagNumber(3)
  void clearResponseMeta() => clearField(3);
  @$pb.TagNumber(3)
  $2.ResponseMeta ensureResponseMeta() => $_ensure(1);
}

class IsMessageContextInDomainRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsMessageContextInDomainRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.domain'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  IsMessageContextInDomainRequest._() : super();
  factory IsMessageContextInDomainRequest({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? accessAuthDetails,
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
  factory IsMessageContextInDomainRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsMessageContextInDomainRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsMessageContextInDomainRequest clone() => IsMessageContextInDomainRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsMessageContextInDomainRequest copyWith(void Function(IsMessageContextInDomainRequest) updates) => super.copyWith((message) => updates(message as IsMessageContextInDomainRequest)) as IsMessageContextInDomainRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsMessageContextInDomainRequest create() => IsMessageContextInDomainRequest._();
  IsMessageContextInDomainRequest createEmptyInstance() => create();
  static $pb.PbList<IsMessageContextInDomainRequest> createRepeated() => $pb.PbList<IsMessageContextInDomainRequest>();
  @$core.pragma('dart2js:noInline')
  static IsMessageContextInDomainRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsMessageContextInDomainRequest>(create);
  static IsMessageContextInDomainRequest? _defaultInstance;

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
}

class IsMessageContextInDomainResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsMessageContextInDomainResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.domain'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageContextInDomain')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageContextScore', $pb.PbFieldType.O3)
    ..aOM<$2.ResponseMeta>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  IsMessageContextInDomainResponse._() : super();
  factory IsMessageContextInDomainResponse({
    $core.bool? messageContextInDomain,
    $core.int? messageContextScore,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (messageContextInDomain != null) {
      _result.messageContextInDomain = messageContextInDomain;
    }
    if (messageContextScore != null) {
      _result.messageContextScore = messageContextScore;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory IsMessageContextInDomainResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsMessageContextInDomainResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsMessageContextInDomainResponse clone() => IsMessageContextInDomainResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsMessageContextInDomainResponse copyWith(void Function(IsMessageContextInDomainResponse) updates) => super.copyWith((message) => updates(message as IsMessageContextInDomainResponse)) as IsMessageContextInDomainResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsMessageContextInDomainResponse create() => IsMessageContextInDomainResponse._();
  IsMessageContextInDomainResponse createEmptyInstance() => create();
  static $pb.PbList<IsMessageContextInDomainResponse> createRepeated() => $pb.PbList<IsMessageContextInDomainResponse>();
  @$core.pragma('dart2js:noInline')
  static IsMessageContextInDomainResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsMessageContextInDomainResponse>(create);
  static IsMessageContextInDomainResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get messageContextInDomain => $_getBF(0);
  @$pb.TagNumber(1)
  set messageContextInDomain($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageContextInDomain() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageContextInDomain() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get messageContextScore => $_getIZ(1);
  @$pb.TagNumber(2)
  set messageContextScore($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessageContextScore() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessageContextScore() => clearField(2);

  @$pb.TagNumber(3)
  $2.ResponseMeta get responseMeta => $_getN(2);
  @$pb.TagNumber(3)
  set responseMeta($2.ResponseMeta v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResponseMeta() => $_has(2);
  @$pb.TagNumber(3)
  void clearResponseMeta() => clearField(3);
  @$pb.TagNumber(3)
  $2.ResponseMeta ensureResponseMeta() => $_ensure(2);
}

class GetInferredDomainsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInferredDomainsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.domain'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetInferredDomainsResponse._() : super();
  factory GetInferredDomainsResponse() => create();
  factory GetInferredDomainsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInferredDomainsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInferredDomainsResponse clone() => GetInferredDomainsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInferredDomainsResponse copyWith(void Function(GetInferredDomainsResponse) updates) => super.copyWith((message) => updates(message as GetInferredDomainsResponse)) as GetInferredDomainsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInferredDomainsResponse create() => GetInferredDomainsResponse._();
  GetInferredDomainsResponse createEmptyInstance() => create();
  static $pb.PbList<GetInferredDomainsResponse> createRepeated() => $pb.PbList<GetInferredDomainsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetInferredDomainsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInferredDomainsResponse>(create);
  static GetInferredDomainsResponse? _defaultInstance;
}

class ContextPage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ContextPage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.domain'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageRank', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageId')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageScore', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ContextPage._() : super();
  factory ContextPage({
    $core.int? pageRank,
    $core.String? pageId,
    $core.int? pageScore,
  }) {
    final _result = create();
    if (pageRank != null) {
      _result.pageRank = pageRank;
    }
    if (pageId != null) {
      _result.pageId = pageId;
    }
    if (pageScore != null) {
      _result.pageScore = pageScore;
    }
    return _result;
  }
  factory ContextPage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContextPage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContextPage clone() => ContextPage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContextPage copyWith(void Function(ContextPage) updates) => super.copyWith((message) => updates(message as ContextPage)) as ContextPage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ContextPage create() => ContextPage._();
  ContextPage createEmptyInstance() => create();
  static $pb.PbList<ContextPage> createRepeated() => $pb.PbList<ContextPage>();
  @$core.pragma('dart2js:noInline')
  static ContextPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContextPage>(create);
  static ContextPage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageRank => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageRank($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageRank() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageRank() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pageId => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get pageScore => $_getIZ(2);
  @$pb.TagNumber(3)
  set pageScore($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageScore() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageScore() => clearField(3);
}

