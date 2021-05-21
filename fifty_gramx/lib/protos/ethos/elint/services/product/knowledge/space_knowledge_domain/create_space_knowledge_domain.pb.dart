///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain/create_space_knowledge_domain.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'access_space_knowledge_domain.pb.dart' as $27;
import '../space_knowledge/access_space_knowledge.pb.dart' as $23;
import '../../../../entities/generic.pb.dart' as $2;

import '../../../../entities/space_knowledge_domain.pbenum.dart' as $31;

export '../../../../../../google/protobuf/timestamp.pb.dart';
class CreateAccountWhiteSpaceKnowledgeDomainResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateAccountWhiteSpaceKnowledgeDomainResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.domain'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainServicesAccessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createAccountWhiteSpaceKnowledgeDomainDone')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createAccountWhiteSpaceKnowledgeDomainMessage')
    ..hasRequiredFields = false
  ;

  CreateAccountWhiteSpaceKnowledgeDomainResponse._() : super();
  factory CreateAccountWhiteSpaceKnowledgeDomainResponse({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? spaceKnowledgeDomainServicesAccessAuthDetails,
    $core.bool? createAccountWhiteSpaceKnowledgeDomainDone,
    $core.String? createAccountWhiteSpaceKnowledgeDomainMessage,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainServicesAccessAuthDetails != null) {
      _result.spaceKnowledgeDomainServicesAccessAuthDetails = spaceKnowledgeDomainServicesAccessAuthDetails;
    }
    if (createAccountWhiteSpaceKnowledgeDomainDone != null) {
      _result.createAccountWhiteSpaceKnowledgeDomainDone = createAccountWhiteSpaceKnowledgeDomainDone;
    }
    if (createAccountWhiteSpaceKnowledgeDomainMessage != null) {
      _result.createAccountWhiteSpaceKnowledgeDomainMessage = createAccountWhiteSpaceKnowledgeDomainMessage;
    }
    return _result;
  }
  factory CreateAccountWhiteSpaceKnowledgeDomainResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateAccountWhiteSpaceKnowledgeDomainResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateAccountWhiteSpaceKnowledgeDomainResponse clone() => CreateAccountWhiteSpaceKnowledgeDomainResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateAccountWhiteSpaceKnowledgeDomainResponse copyWith(void Function(CreateAccountWhiteSpaceKnowledgeDomainResponse) updates) => super.copyWith((message) => updates(message as CreateAccountWhiteSpaceKnowledgeDomainResponse)) as CreateAccountWhiteSpaceKnowledgeDomainResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAccountWhiteSpaceKnowledgeDomainResponse create() => CreateAccountWhiteSpaceKnowledgeDomainResponse._();
  CreateAccountWhiteSpaceKnowledgeDomainResponse createEmptyInstance() => create();
  static $pb.PbList<CreateAccountWhiteSpaceKnowledgeDomainResponse> createRepeated() => $pb.PbList<CreateAccountWhiteSpaceKnowledgeDomainResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateAccountWhiteSpaceKnowledgeDomainResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAccountWhiteSpaceKnowledgeDomainResponse>(create);
  static CreateAccountWhiteSpaceKnowledgeDomainResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $27.SpaceKnowledgeDomainServicesAccessAuthDetails get spaceKnowledgeDomainServicesAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainServicesAccessAuthDetails($27.SpaceKnowledgeDomainServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainServicesAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainServicesAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $27.SpaceKnowledgeDomainServicesAccessAuthDetails ensureSpaceKnowledgeDomainServicesAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get createAccountWhiteSpaceKnowledgeDomainDone => $_getBF(1);
  @$pb.TagNumber(2)
  set createAccountWhiteSpaceKnowledgeDomainDone($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateAccountWhiteSpaceKnowledgeDomainDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateAccountWhiteSpaceKnowledgeDomainDone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get createAccountWhiteSpaceKnowledgeDomainMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set createAccountWhiteSpaceKnowledgeDomainMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreateAccountWhiteSpaceKnowledgeDomainMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreateAccountWhiteSpaceKnowledgeDomainMessage() => clearField(3);
}

class CreateSpaceKnowledgeDomainRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateSpaceKnowledgeDomainRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.domain'), createEmptyInstance: create)
    ..aOM<$23.SpaceKnowledgeServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeServicesAccessAuthDetails', subBuilder: $23.SpaceKnowledgeServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainDescription')
    ..e<$31.SpaceKnowledgeDomainCollarEnum>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainCollarEnum', $pb.PbFieldType.OE, defaultOrMaker: $31.SpaceKnowledgeDomainCollarEnum.WHITE_COLLAR, valueOf: $31.SpaceKnowledgeDomainCollarEnum.valueOf, enumValues: $31.SpaceKnowledgeDomainCollarEnum.values)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainIsolated')
    ..hasRequiredFields = false
  ;

  CreateSpaceKnowledgeDomainRequest._() : super();
  factory CreateSpaceKnowledgeDomainRequest({
    $23.SpaceKnowledgeServicesAccessAuthDetails? spaceKnowledgeServicesAccessAuthDetails,
    $core.String? spaceKnowledgeDomainName,
    $core.String? spaceKnowledgeDomainDescription,
    $31.SpaceKnowledgeDomainCollarEnum? spaceKnowledgeDomainCollarEnum,
    $core.bool? spaceKnowledgeDomainIsolated,
  }) {
    final _result = create();
    if (spaceKnowledgeServicesAccessAuthDetails != null) {
      _result.spaceKnowledgeServicesAccessAuthDetails = spaceKnowledgeServicesAccessAuthDetails;
    }
    if (spaceKnowledgeDomainName != null) {
      _result.spaceKnowledgeDomainName = spaceKnowledgeDomainName;
    }
    if (spaceKnowledgeDomainDescription != null) {
      _result.spaceKnowledgeDomainDescription = spaceKnowledgeDomainDescription;
    }
    if (spaceKnowledgeDomainCollarEnum != null) {
      _result.spaceKnowledgeDomainCollarEnum = spaceKnowledgeDomainCollarEnum;
    }
    if (spaceKnowledgeDomainIsolated != null) {
      _result.spaceKnowledgeDomainIsolated = spaceKnowledgeDomainIsolated;
    }
    return _result;
  }
  factory CreateSpaceKnowledgeDomainRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSpaceKnowledgeDomainRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSpaceKnowledgeDomainRequest clone() => CreateSpaceKnowledgeDomainRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSpaceKnowledgeDomainRequest copyWith(void Function(CreateSpaceKnowledgeDomainRequest) updates) => super.copyWith((message) => updates(message as CreateSpaceKnowledgeDomainRequest)) as CreateSpaceKnowledgeDomainRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateSpaceKnowledgeDomainRequest create() => CreateSpaceKnowledgeDomainRequest._();
  CreateSpaceKnowledgeDomainRequest createEmptyInstance() => create();
  static $pb.PbList<CreateSpaceKnowledgeDomainRequest> createRepeated() => $pb.PbList<CreateSpaceKnowledgeDomainRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateSpaceKnowledgeDomainRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSpaceKnowledgeDomainRequest>(create);
  static CreateSpaceKnowledgeDomainRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $23.SpaceKnowledgeServicesAccessAuthDetails get spaceKnowledgeServicesAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeServicesAccessAuthDetails($23.SpaceKnowledgeServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeServicesAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeServicesAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $23.SpaceKnowledgeServicesAccessAuthDetails ensureSpaceKnowledgeServicesAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get spaceKnowledgeDomainName => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get spaceKnowledgeDomainDescription => $_getSZ(2);
  @$pb.TagNumber(3)
  set spaceKnowledgeDomainDescription($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceKnowledgeDomainDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceKnowledgeDomainDescription() => clearField(3);

  @$pb.TagNumber(4)
  $31.SpaceKnowledgeDomainCollarEnum get spaceKnowledgeDomainCollarEnum => $_getN(3);
  @$pb.TagNumber(4)
  set spaceKnowledgeDomainCollarEnum($31.SpaceKnowledgeDomainCollarEnum v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpaceKnowledgeDomainCollarEnum() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpaceKnowledgeDomainCollarEnum() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get spaceKnowledgeDomainIsolated => $_getBF(4);
  @$pb.TagNumber(5)
  set spaceKnowledgeDomainIsolated($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSpaceKnowledgeDomainIsolated() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpaceKnowledgeDomainIsolated() => clearField(5);
}

class CreateSpaceKnowledgeDomainResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateSpaceKnowledgeDomainResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.domain'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainServicesAccessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  CreateSpaceKnowledgeDomainResponse._() : super();
  factory CreateSpaceKnowledgeDomainResponse({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? spaceKnowledgeDomainServicesAccessAuthDetails,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainServicesAccessAuthDetails != null) {
      _result.spaceKnowledgeDomainServicesAccessAuthDetails = spaceKnowledgeDomainServicesAccessAuthDetails;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory CreateSpaceKnowledgeDomainResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateSpaceKnowledgeDomainResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateSpaceKnowledgeDomainResponse clone() => CreateSpaceKnowledgeDomainResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateSpaceKnowledgeDomainResponse copyWith(void Function(CreateSpaceKnowledgeDomainResponse) updates) => super.copyWith((message) => updates(message as CreateSpaceKnowledgeDomainResponse)) as CreateSpaceKnowledgeDomainResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateSpaceKnowledgeDomainResponse create() => CreateSpaceKnowledgeDomainResponse._();
  CreateSpaceKnowledgeDomainResponse createEmptyInstance() => create();
  static $pb.PbList<CreateSpaceKnowledgeDomainResponse> createRepeated() => $pb.PbList<CreateSpaceKnowledgeDomainResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateSpaceKnowledgeDomainResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSpaceKnowledgeDomainResponse>(create);
  static CreateSpaceKnowledgeDomainResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $27.SpaceKnowledgeDomainServicesAccessAuthDetails get spaceKnowledgeDomainServicesAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainServicesAccessAuthDetails($27.SpaceKnowledgeDomainServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainServicesAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainServicesAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $27.SpaceKnowledgeDomainServicesAccessAuthDetails ensureSpaceKnowledgeDomainServicesAccessAuthDetails() => $_ensure(0);

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

