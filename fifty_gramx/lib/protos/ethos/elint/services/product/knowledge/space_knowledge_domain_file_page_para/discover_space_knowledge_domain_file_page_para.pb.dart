///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page_para/discover_space_knowledge_domain_file_page_para.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/generic.pb.dart' as $2;
import '../space_knowledge_domain/access_space_knowledge_domain.pb.dart' as $27;
import '../../../../entities/space_knowledge_domain_file_page_para.pb.dart' as $59;

class ListOfParaIds extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListOfParaIds', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page.para'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageParaIds')
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ListOfParaIds._() : super();
  factory ListOfParaIds({
    $core.Iterable<$core.String>? spaceKnowledgeDomainFilePageParaIds,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFilePageParaIds != null) {
      _result.spaceKnowledgeDomainFilePageParaIds.addAll(spaceKnowledgeDomainFilePageParaIds);
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory ListOfParaIds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListOfParaIds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListOfParaIds clone() => ListOfParaIds()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListOfParaIds copyWith(void Function(ListOfParaIds) updates) => super.copyWith((message) => updates(message as ListOfParaIds)) as ListOfParaIds; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListOfParaIds create() => ListOfParaIds._();
  ListOfParaIds createEmptyInstance() => create();
  static $pb.PbList<ListOfParaIds> createRepeated() => $pb.PbList<ListOfParaIds>();
  @$core.pragma('dart2js:noInline')
  static ListOfParaIds getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOfParaIds>(create);
  static ListOfParaIds? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get spaceKnowledgeDomainFilePageParaIds => $_getList(0);

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

class GetParaTextByIdReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetParaTextByIdReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page.para'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageParaId')
    ..hasRequiredFields = false
  ;

  GetParaTextByIdReq._() : super();
  factory GetParaTextByIdReq({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? accessAuthDetails,
    $core.String? spaceKnowledgeDomainFilePageParaId,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (spaceKnowledgeDomainFilePageParaId != null) {
      _result.spaceKnowledgeDomainFilePageParaId = spaceKnowledgeDomainFilePageParaId;
    }
    return _result;
  }
  factory GetParaTextByIdReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetParaTextByIdReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetParaTextByIdReq clone() => GetParaTextByIdReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetParaTextByIdReq copyWith(void Function(GetParaTextByIdReq) updates) => super.copyWith((message) => updates(message as GetParaTextByIdReq)) as GetParaTextByIdReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetParaTextByIdReq create() => GetParaTextByIdReq._();
  GetParaTextByIdReq createEmptyInstance() => create();
  static $pb.PbList<GetParaTextByIdReq> createRepeated() => $pb.PbList<GetParaTextByIdReq>();
  @$core.pragma('dart2js:noInline')
  static GetParaTextByIdReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetParaTextByIdReq>(create);
  static GetParaTextByIdReq? _defaultInstance;

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
  $core.String get spaceKnowledgeDomainFilePageParaId => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFilePageParaId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFilePageParaId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFilePageParaId() => clearField(2);
}

class GetParaTextByIdRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetParaTextByIdRes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page.para'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paraText')
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetParaTextByIdRes._() : super();
  factory GetParaTextByIdRes({
    $core.String? paraText,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (paraText != null) {
      _result.paraText = paraText;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetParaTextByIdRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetParaTextByIdRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetParaTextByIdRes clone() => GetParaTextByIdRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetParaTextByIdRes copyWith(void Function(GetParaTextByIdRes) updates) => super.copyWith((message) => updates(message as GetParaTextByIdRes)) as GetParaTextByIdRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetParaTextByIdRes create() => GetParaTextByIdRes._();
  GetParaTextByIdRes createEmptyInstance() => create();
  static $pb.PbList<GetParaTextByIdRes> createRepeated() => $pb.PbList<GetParaTextByIdRes>();
  @$core.pragma('dart2js:noInline')
  static GetParaTextByIdRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetParaTextByIdRes>(create);
  static GetParaTextByIdRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get paraText => $_getSZ(0);
  @$pb.TagNumber(1)
  set paraText($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParaText() => $_has(0);
  @$pb.TagNumber(1)
  void clearParaText() => clearField(1);

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

class GetParaByIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetParaByIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page.para'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageParaId')
    ..hasRequiredFields = false
  ;

  GetParaByIdRequest._() : super();
  factory GetParaByIdRequest({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? accessAuthDetails,
    $core.String? spaceKnowledgeDomainFilePageParaId,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (spaceKnowledgeDomainFilePageParaId != null) {
      _result.spaceKnowledgeDomainFilePageParaId = spaceKnowledgeDomainFilePageParaId;
    }
    return _result;
  }
  factory GetParaByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetParaByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetParaByIdRequest clone() => GetParaByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetParaByIdRequest copyWith(void Function(GetParaByIdRequest) updates) => super.copyWith((message) => updates(message as GetParaByIdRequest)) as GetParaByIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetParaByIdRequest create() => GetParaByIdRequest._();
  GetParaByIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetParaByIdRequest> createRepeated() => $pb.PbList<GetParaByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetParaByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetParaByIdRequest>(create);
  static GetParaByIdRequest? _defaultInstance;

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
  $core.String get spaceKnowledgeDomainFilePageParaId => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFilePageParaId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFilePageParaId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFilePageParaId() => clearField(2);
}

class GetParaByIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetParaByIdResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page.para'), createEmptyInstance: create)
    ..aOM<$59.SpaceKnowledgeDomainFilePagePara>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePagePara', subBuilder: $59.SpaceKnowledgeDomainFilePagePara.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetParaByIdResponse._() : super();
  factory GetParaByIdResponse({
    $59.SpaceKnowledgeDomainFilePagePara? spaceKnowledgeDomainFilePagePara,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFilePagePara != null) {
      _result.spaceKnowledgeDomainFilePagePara = spaceKnowledgeDomainFilePagePara;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetParaByIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetParaByIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetParaByIdResponse clone() => GetParaByIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetParaByIdResponse copyWith(void Function(GetParaByIdResponse) updates) => super.copyWith((message) => updates(message as GetParaByIdResponse)) as GetParaByIdResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetParaByIdResponse create() => GetParaByIdResponse._();
  GetParaByIdResponse createEmptyInstance() => create();
  static $pb.PbList<GetParaByIdResponse> createRepeated() => $pb.PbList<GetParaByIdResponse>();
  @$core.pragma('dart2js:noInline')
  static GetParaByIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetParaByIdResponse>(create);
  static GetParaByIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $59.SpaceKnowledgeDomainFilePagePara get spaceKnowledgeDomainFilePagePara => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainFilePagePara($59.SpaceKnowledgeDomainFilePagePara v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainFilePagePara() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainFilePagePara() => clearField(1);
  @$pb.TagNumber(1)
  $59.SpaceKnowledgeDomainFilePagePara ensureSpaceKnowledgeDomainFilePagePara() => $_ensure(0);

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

class GetParaImageByIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetParaImageByIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page.para'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageParaId')
    ..hasRequiredFields = false
  ;

  GetParaImageByIdRequest._() : super();
  factory GetParaImageByIdRequest({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? accessAuthDetails,
    $core.String? spaceKnowledgeDomainFilePageParaId,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (spaceKnowledgeDomainFilePageParaId != null) {
      _result.spaceKnowledgeDomainFilePageParaId = spaceKnowledgeDomainFilePageParaId;
    }
    return _result;
  }
  factory GetParaImageByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetParaImageByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetParaImageByIdRequest clone() => GetParaImageByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetParaImageByIdRequest copyWith(void Function(GetParaImageByIdRequest) updates) => super.copyWith((message) => updates(message as GetParaImageByIdRequest)) as GetParaImageByIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetParaImageByIdRequest create() => GetParaImageByIdRequest._();
  GetParaImageByIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetParaImageByIdRequest> createRepeated() => $pb.PbList<GetParaImageByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetParaImageByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetParaImageByIdRequest>(create);
  static GetParaImageByIdRequest? _defaultInstance;

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
  $core.String get spaceKnowledgeDomainFilePageParaId => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFilePageParaId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFilePageParaId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFilePageParaId() => clearField(2);
}

class GetParaImageByIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetParaImageByIdResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page.para'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageChunk', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetParaImageByIdResponse._() : super();
  factory GetParaImageByIdResponse({
    $core.List<$core.int>? imageChunk,
  }) {
    final _result = create();
    if (imageChunk != null) {
      _result.imageChunk = imageChunk;
    }
    return _result;
  }
  factory GetParaImageByIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetParaImageByIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetParaImageByIdResponse clone() => GetParaImageByIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetParaImageByIdResponse copyWith(void Function(GetParaImageByIdResponse) updates) => super.copyWith((message) => updates(message as GetParaImageByIdResponse)) as GetParaImageByIdResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetParaImageByIdResponse create() => GetParaImageByIdResponse._();
  GetParaImageByIdResponse createEmptyInstance() => create();
  static $pb.PbList<GetParaImageByIdResponse> createRepeated() => $pb.PbList<GetParaImageByIdResponse>();
  @$core.pragma('dart2js:noInline')
  static GetParaImageByIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetParaImageByIdResponse>(create);
  static GetParaImageByIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get imageChunk => $_getN(0);
  @$pb.TagNumber(1)
  set imageChunk($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImageChunk() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageChunk() => clearField(1);
}

