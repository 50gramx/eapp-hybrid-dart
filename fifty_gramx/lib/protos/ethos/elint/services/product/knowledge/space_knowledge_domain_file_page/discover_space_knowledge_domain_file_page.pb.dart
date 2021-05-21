///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page/discover_space_knowledge_domain_file_page.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/generic.pb.dart' as $2;
import '../space_knowledge_domain/access_space_knowledge_domain.pb.dart' as $27;
import '../../../../entities/space_knowledge_domain_file_page.pb.dart' as $40;

class ListOfPageIds extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListOfPageIds', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageIds')
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ListOfPageIds._() : super();
  factory ListOfPageIds({
    $core.Iterable<$core.String>? spaceKnowledgeDomainFilePageIds,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFilePageIds != null) {
      _result.spaceKnowledgeDomainFilePageIds.addAll(spaceKnowledgeDomainFilePageIds);
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory ListOfPageIds.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListOfPageIds.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListOfPageIds clone() => ListOfPageIds()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListOfPageIds copyWith(void Function(ListOfPageIds) updates) => super.copyWith((message) => updates(message as ListOfPageIds)) as ListOfPageIds; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListOfPageIds create() => ListOfPageIds._();
  ListOfPageIds createEmptyInstance() => create();
  static $pb.PbList<ListOfPageIds> createRepeated() => $pb.PbList<ListOfPageIds>();
  @$core.pragma('dart2js:noInline')
  static ListOfPageIds getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOfPageIds>(create);
  static ListOfPageIds? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get spaceKnowledgeDomainFilePageIds => $_getList(0);

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

class GetPageTextByIdReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPageTextByIdReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageId')
    ..hasRequiredFields = false
  ;

  GetPageTextByIdReq._() : super();
  factory GetPageTextByIdReq({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? accessAuthDetails,
    $core.String? spaceKnowledgeDomainFilePageId,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (spaceKnowledgeDomainFilePageId != null) {
      _result.spaceKnowledgeDomainFilePageId = spaceKnowledgeDomainFilePageId;
    }
    return _result;
  }
  factory GetPageTextByIdReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPageTextByIdReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPageTextByIdReq clone() => GetPageTextByIdReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPageTextByIdReq copyWith(void Function(GetPageTextByIdReq) updates) => super.copyWith((message) => updates(message as GetPageTextByIdReq)) as GetPageTextByIdReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPageTextByIdReq create() => GetPageTextByIdReq._();
  GetPageTextByIdReq createEmptyInstance() => create();
  static $pb.PbList<GetPageTextByIdReq> createRepeated() => $pb.PbList<GetPageTextByIdReq>();
  @$core.pragma('dart2js:noInline')
  static GetPageTextByIdReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPageTextByIdReq>(create);
  static GetPageTextByIdReq? _defaultInstance;

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
  $core.String get spaceKnowledgeDomainFilePageId => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFilePageId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFilePageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFilePageId() => clearField(2);
}

class GetPageTextByIdRes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPageTextByIdRes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageText')
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'meta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetPageTextByIdRes._() : super();
  factory GetPageTextByIdRes({
    $core.String? pageText,
    $2.ResponseMeta? meta,
  }) {
    final _result = create();
    if (pageText != null) {
      _result.pageText = pageText;
    }
    if (meta != null) {
      _result.meta = meta;
    }
    return _result;
  }
  factory GetPageTextByIdRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPageTextByIdRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPageTextByIdRes clone() => GetPageTextByIdRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPageTextByIdRes copyWith(void Function(GetPageTextByIdRes) updates) => super.copyWith((message) => updates(message as GetPageTextByIdRes)) as GetPageTextByIdRes; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPageTextByIdRes create() => GetPageTextByIdRes._();
  GetPageTextByIdRes createEmptyInstance() => create();
  static $pb.PbList<GetPageTextByIdRes> createRepeated() => $pb.PbList<GetPageTextByIdRes>();
  @$core.pragma('dart2js:noInline')
  static GetPageTextByIdRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPageTextByIdRes>(create);
  static GetPageTextByIdRes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pageText => $_getSZ(0);
  @$pb.TagNumber(1)
  set pageText($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageText() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageText() => clearField(1);

  @$pb.TagNumber(2)
  $2.ResponseMeta get meta => $_getN(1);
  @$pb.TagNumber(2)
  set meta($2.ResponseMeta v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMeta() => $_has(1);
  @$pb.TagNumber(2)
  void clearMeta() => clearField(2);
  @$pb.TagNumber(2)
  $2.ResponseMeta ensureMeta() => $_ensure(1);
}

class GetPageByIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPageByIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageId')
    ..hasRequiredFields = false
  ;

  GetPageByIdRequest._() : super();
  factory GetPageByIdRequest({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? accessAuthDetails,
    $core.String? spaceKnowledgeDomainFilePageId,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (spaceKnowledgeDomainFilePageId != null) {
      _result.spaceKnowledgeDomainFilePageId = spaceKnowledgeDomainFilePageId;
    }
    return _result;
  }
  factory GetPageByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPageByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPageByIdRequest clone() => GetPageByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPageByIdRequest copyWith(void Function(GetPageByIdRequest) updates) => super.copyWith((message) => updates(message as GetPageByIdRequest)) as GetPageByIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPageByIdRequest create() => GetPageByIdRequest._();
  GetPageByIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetPageByIdRequest> createRepeated() => $pb.PbList<GetPageByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPageByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPageByIdRequest>(create);
  static GetPageByIdRequest? _defaultInstance;

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
  $core.String get spaceKnowledgeDomainFilePageId => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFilePageId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFilePageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFilePageId() => clearField(2);
}

class GetPageByIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetPageByIdResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page'), createEmptyInstance: create)
    ..aOM<$40.SpaceKnowledgeDomainFilePage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePage', subBuilder: $40.SpaceKnowledgeDomainFilePage.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetPageByIdResponse._() : super();
  factory GetPageByIdResponse({
    $40.SpaceKnowledgeDomainFilePage? spaceKnowledgeDomainFilePage,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFilePage != null) {
      _result.spaceKnowledgeDomainFilePage = spaceKnowledgeDomainFilePage;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetPageByIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetPageByIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetPageByIdResponse clone() => GetPageByIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetPageByIdResponse copyWith(void Function(GetPageByIdResponse) updates) => super.copyWith((message) => updates(message as GetPageByIdResponse)) as GetPageByIdResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetPageByIdResponse create() => GetPageByIdResponse._();
  GetPageByIdResponse createEmptyInstance() => create();
  static $pb.PbList<GetPageByIdResponse> createRepeated() => $pb.PbList<GetPageByIdResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPageByIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPageByIdResponse>(create);
  static GetPageByIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $40.SpaceKnowledgeDomainFilePage get spaceKnowledgeDomainFilePage => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainFilePage($40.SpaceKnowledgeDomainFilePage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainFilePage() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainFilePage() => clearField(1);
  @$pb.TagNumber(1)
  $40.SpaceKnowledgeDomainFilePage ensureSpaceKnowledgeDomainFilePage() => $_ensure(0);

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

