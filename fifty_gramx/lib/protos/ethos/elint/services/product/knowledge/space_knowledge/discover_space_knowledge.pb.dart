///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge/discover_space_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/space_knowledge.pb.dart' as $58;
import '../../../../entities/generic.pb.dart' as $2;
import '../../../../entities/space_knowledge_domain.pb.dart' as $31;
import 'access_space_knowledge.pb.dart' as $23;

class GetInferredSpaceKnowledgeDomainsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInferredSpaceKnowledgeDomainsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.space'), createEmptyInstance: create)
    ..pc<$58.SpaceKnowledgeInferredDomain>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeInferredDomain', $pb.PbFieldType.PM, subBuilder: $58.SpaceKnowledgeInferredDomain.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetInferredSpaceKnowledgeDomainsResponse._() : super();
  factory GetInferredSpaceKnowledgeDomainsResponse({
    $core.Iterable<$58.SpaceKnowledgeInferredDomain>? spaceKnowledgeInferredDomain,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (spaceKnowledgeInferredDomain != null) {
      _result.spaceKnowledgeInferredDomain.addAll(spaceKnowledgeInferredDomain);
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetInferredSpaceKnowledgeDomainsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInferredSpaceKnowledgeDomainsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInferredSpaceKnowledgeDomainsResponse clone() => GetInferredSpaceKnowledgeDomainsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInferredSpaceKnowledgeDomainsResponse copyWith(void Function(GetInferredSpaceKnowledgeDomainsResponse) updates) => super.copyWith((message) => updates(message as GetInferredSpaceKnowledgeDomainsResponse)) as GetInferredSpaceKnowledgeDomainsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInferredSpaceKnowledgeDomainsResponse create() => GetInferredSpaceKnowledgeDomainsResponse._();
  GetInferredSpaceKnowledgeDomainsResponse createEmptyInstance() => create();
  static $pb.PbList<GetInferredSpaceKnowledgeDomainsResponse> createRepeated() => $pb.PbList<GetInferredSpaceKnowledgeDomainsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetInferredSpaceKnowledgeDomainsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInferredSpaceKnowledgeDomainsResponse>(create);
  static GetInferredSpaceKnowledgeDomainsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$58.SpaceKnowledgeInferredDomain> get spaceKnowledgeInferredDomain => $_getList(0);

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

class GetSpaceKnowledgeDomainsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSpaceKnowledgeDomainsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.space'), createEmptyInstance: create)
    ..pc<$31.SpaceKnowledgeDomain>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomains', $pb.PbFieldType.PM, subBuilder: $31.SpaceKnowledgeDomain.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetSpaceKnowledgeDomainsResponse._() : super();
  factory GetSpaceKnowledgeDomainsResponse({
    $core.Iterable<$31.SpaceKnowledgeDomain>? spaceKnowledgeDomains,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (spaceKnowledgeDomains != null) {
      _result.spaceKnowledgeDomains.addAll(spaceKnowledgeDomains);
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetSpaceKnowledgeDomainsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSpaceKnowledgeDomainsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSpaceKnowledgeDomainsResponse clone() => GetSpaceKnowledgeDomainsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSpaceKnowledgeDomainsResponse copyWith(void Function(GetSpaceKnowledgeDomainsResponse) updates) => super.copyWith((message) => updates(message as GetSpaceKnowledgeDomainsResponse)) as GetSpaceKnowledgeDomainsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSpaceKnowledgeDomainsResponse create() => GetSpaceKnowledgeDomainsResponse._();
  GetSpaceKnowledgeDomainsResponse createEmptyInstance() => create();
  static $pb.PbList<GetSpaceKnowledgeDomainsResponse> createRepeated() => $pb.PbList<GetSpaceKnowledgeDomainsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSpaceKnowledgeDomainsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSpaceKnowledgeDomainsResponse>(create);
  static GetSpaceKnowledgeDomainsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$31.SpaceKnowledgeDomain> get spaceKnowledgeDomains => $_getList(0);

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

class GetSpaceKnowledgeDomainByIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSpaceKnowledgeDomainByIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.space'), createEmptyInstance: create)
    ..aOM<$23.SpaceKnowledgeServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuth', subBuilder: $23.SpaceKnowledgeServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainId')
    ..hasRequiredFields = false
  ;

  GetSpaceKnowledgeDomainByIdRequest._() : super();
  factory GetSpaceKnowledgeDomainByIdRequest({
    $23.SpaceKnowledgeServicesAccessAuthDetails? accessAuth,
    $core.String? spaceKnowledgeDomainId,
  }) {
    final _result = create();
    if (accessAuth != null) {
      _result.accessAuth = accessAuth;
    }
    if (spaceKnowledgeDomainId != null) {
      _result.spaceKnowledgeDomainId = spaceKnowledgeDomainId;
    }
    return _result;
  }
  factory GetSpaceKnowledgeDomainByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSpaceKnowledgeDomainByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSpaceKnowledgeDomainByIdRequest clone() => GetSpaceKnowledgeDomainByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSpaceKnowledgeDomainByIdRequest copyWith(void Function(GetSpaceKnowledgeDomainByIdRequest) updates) => super.copyWith((message) => updates(message as GetSpaceKnowledgeDomainByIdRequest)) as GetSpaceKnowledgeDomainByIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSpaceKnowledgeDomainByIdRequest create() => GetSpaceKnowledgeDomainByIdRequest._();
  GetSpaceKnowledgeDomainByIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetSpaceKnowledgeDomainByIdRequest> createRepeated() => $pb.PbList<GetSpaceKnowledgeDomainByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSpaceKnowledgeDomainByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSpaceKnowledgeDomainByIdRequest>(create);
  static GetSpaceKnowledgeDomainByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $23.SpaceKnowledgeServicesAccessAuthDetails get accessAuth => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuth($23.SpaceKnowledgeServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuth() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuth() => clearField(1);
  @$pb.TagNumber(1)
  $23.SpaceKnowledgeServicesAccessAuthDetails ensureAccessAuth() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get spaceKnowledgeDomainId => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainId() => clearField(2);
}

class GetSpaceKnowledgeDomainByIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSpaceKnowledgeDomainByIdResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.space'), createEmptyInstance: create)
    ..aOM<$31.SpaceKnowledgeDomain>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomain', subBuilder: $31.SpaceKnowledgeDomain.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetSpaceKnowledgeDomainByIdResponse._() : super();
  factory GetSpaceKnowledgeDomainByIdResponse({
    $31.SpaceKnowledgeDomain? spaceKnowledgeDomain,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (spaceKnowledgeDomain != null) {
      _result.spaceKnowledgeDomain = spaceKnowledgeDomain;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetSpaceKnowledgeDomainByIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSpaceKnowledgeDomainByIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSpaceKnowledgeDomainByIdResponse clone() => GetSpaceKnowledgeDomainByIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSpaceKnowledgeDomainByIdResponse copyWith(void Function(GetSpaceKnowledgeDomainByIdResponse) updates) => super.copyWith((message) => updates(message as GetSpaceKnowledgeDomainByIdResponse)) as GetSpaceKnowledgeDomainByIdResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSpaceKnowledgeDomainByIdResponse create() => GetSpaceKnowledgeDomainByIdResponse._();
  GetSpaceKnowledgeDomainByIdResponse createEmptyInstance() => create();
  static $pb.PbList<GetSpaceKnowledgeDomainByIdResponse> createRepeated() => $pb.PbList<GetSpaceKnowledgeDomainByIdResponse>();
  @$core.pragma('dart2js:noInline')
  static GetSpaceKnowledgeDomainByIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSpaceKnowledgeDomainByIdResponse>(create);
  static GetSpaceKnowledgeDomainByIdResponse? _defaultInstance;

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

