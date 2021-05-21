///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page_para/access_space_knowledge_domain_file_page_para.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../space_knowledge_domain_file_page/access_space_knowledge_domain_file_page.pb.dart' as $38;
import '../../../../entities/space_knowledge_domain_file_page_para.pb.dart' as $59;
import '../../../../entities/generic.pb.dart' as $2;
import '../../../../../../google/protobuf/timestamp.pb.dart' as $54;

class SpaceKnowledgeDomainFilePageParaAccessTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeDomainFilePageParaAccessTokenRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.para'), createEmptyInstance: create)
    ..aOM<$38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageServicesAccessAuthDetails', subBuilder: $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails.create)
    ..aOM<$59.SpaceKnowledgeDomainFilePagePara>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePagePara', subBuilder: $59.SpaceKnowledgeDomainFilePagePara.create)
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeDomainFilePageParaAccessTokenRequest._() : super();
  factory SpaceKnowledgeDomainFilePageParaAccessTokenRequest({
    $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails? spaceKnowledgeDomainFilePageServicesAccessAuthDetails,
    $59.SpaceKnowledgeDomainFilePagePara? spaceKnowledgeDomainFilePagePara,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFilePageServicesAccessAuthDetails != null) {
      _result.spaceKnowledgeDomainFilePageServicesAccessAuthDetails = spaceKnowledgeDomainFilePageServicesAccessAuthDetails;
    }
    if (spaceKnowledgeDomainFilePagePara != null) {
      _result.spaceKnowledgeDomainFilePagePara = spaceKnowledgeDomainFilePagePara;
    }
    return _result;
  }
  factory SpaceKnowledgeDomainFilePageParaAccessTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeDomainFilePageParaAccessTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePageParaAccessTokenRequest clone() => SpaceKnowledgeDomainFilePageParaAccessTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePageParaAccessTokenRequest copyWith(void Function(SpaceKnowledgeDomainFilePageParaAccessTokenRequest) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeDomainFilePageParaAccessTokenRequest)) as SpaceKnowledgeDomainFilePageParaAccessTokenRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePageParaAccessTokenRequest create() => SpaceKnowledgeDomainFilePageParaAccessTokenRequest._();
  SpaceKnowledgeDomainFilePageParaAccessTokenRequest createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeDomainFilePageParaAccessTokenRequest> createRepeated() => $pb.PbList<SpaceKnowledgeDomainFilePageParaAccessTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePageParaAccessTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeDomainFilePageParaAccessTokenRequest>(create);
  static SpaceKnowledgeDomainFilePageParaAccessTokenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails get spaceKnowledgeDomainFilePageServicesAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainFilePageServicesAccessAuthDetails($38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainFilePageServicesAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainFilePageServicesAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $38.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails ensureSpaceKnowledgeDomainFilePageServicesAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $59.SpaceKnowledgeDomainFilePagePara get spaceKnowledgeDomainFilePagePara => $_getN(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFilePagePara($59.SpaceKnowledgeDomainFilePagePara v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFilePagePara() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFilePagePara() => clearField(2);
  @$pb.TagNumber(2)
  $59.SpaceKnowledgeDomainFilePagePara ensureSpaceKnowledgeDomainFilePagePara() => $_ensure(1);
}

class SpaceKnowledgeDomainFilePageParaAccessTokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeDomainFilePageParaAccessTokenResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.para'), createEmptyInstance: create)
    ..aOM<SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageParaServicesAccessAuthDetails', subBuilder: SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageParaServicesAccessDone')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageParaServicesAccessMessage')
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeDomainFilePageParaAccessTokenResponse._() : super();
  factory SpaceKnowledgeDomainFilePageParaAccessTokenResponse({
    SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails? spaceKnowledgeDomainFilePageParaServicesAccessAuthDetails,
    $core.bool? spaceKnowledgeDomainFilePageParaServicesAccessDone,
    $core.String? spaceKnowledgeDomainFilePageParaServicesAccessMessage,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFilePageParaServicesAccessAuthDetails != null) {
      _result.spaceKnowledgeDomainFilePageParaServicesAccessAuthDetails = spaceKnowledgeDomainFilePageParaServicesAccessAuthDetails;
    }
    if (spaceKnowledgeDomainFilePageParaServicesAccessDone != null) {
      _result.spaceKnowledgeDomainFilePageParaServicesAccessDone = spaceKnowledgeDomainFilePageParaServicesAccessDone;
    }
    if (spaceKnowledgeDomainFilePageParaServicesAccessMessage != null) {
      _result.spaceKnowledgeDomainFilePageParaServicesAccessMessage = spaceKnowledgeDomainFilePageParaServicesAccessMessage;
    }
    return _result;
  }
  factory SpaceKnowledgeDomainFilePageParaAccessTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeDomainFilePageParaAccessTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePageParaAccessTokenResponse clone() => SpaceKnowledgeDomainFilePageParaAccessTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePageParaAccessTokenResponse copyWith(void Function(SpaceKnowledgeDomainFilePageParaAccessTokenResponse) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeDomainFilePageParaAccessTokenResponse)) as SpaceKnowledgeDomainFilePageParaAccessTokenResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePageParaAccessTokenResponse create() => SpaceKnowledgeDomainFilePageParaAccessTokenResponse._();
  SpaceKnowledgeDomainFilePageParaAccessTokenResponse createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeDomainFilePageParaAccessTokenResponse> createRepeated() => $pb.PbList<SpaceKnowledgeDomainFilePageParaAccessTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePageParaAccessTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeDomainFilePageParaAccessTokenResponse>(create);
  static SpaceKnowledgeDomainFilePageParaAccessTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails get spaceKnowledgeDomainFilePageParaServicesAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainFilePageParaServicesAccessAuthDetails(SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails ensureSpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get spaceKnowledgeDomainFilePageParaServicesAccessDone => $_getBF(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFilePageParaServicesAccessDone($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFilePageParaServicesAccessDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFilePageParaServicesAccessDone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get spaceKnowledgeDomainFilePageParaServicesAccessMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set spaceKnowledgeDomainFilePageParaServicesAccessMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceKnowledgeDomainFilePageParaServicesAccessMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceKnowledgeDomainFilePageParaServicesAccessMessage() => clearField(3);
}

class ValidateSpaceKnowledgeDomainFilePageParaServicesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValidateSpaceKnowledgeDomainFilePageParaServicesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.para'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageParaServicesAccessValidationDone')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageParaServicesAccessValidationMessage')
    ..hasRequiredFields = false
  ;

  ValidateSpaceKnowledgeDomainFilePageParaServicesResponse._() : super();
  factory ValidateSpaceKnowledgeDomainFilePageParaServicesResponse({
    $core.bool? spaceKnowledgeDomainFilePageParaServicesAccessValidationDone,
    $core.String? spaceKnowledgeDomainFilePageParaServicesAccessValidationMessage,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFilePageParaServicesAccessValidationDone != null) {
      _result.spaceKnowledgeDomainFilePageParaServicesAccessValidationDone = spaceKnowledgeDomainFilePageParaServicesAccessValidationDone;
    }
    if (spaceKnowledgeDomainFilePageParaServicesAccessValidationMessage != null) {
      _result.spaceKnowledgeDomainFilePageParaServicesAccessValidationMessage = spaceKnowledgeDomainFilePageParaServicesAccessValidationMessage;
    }
    return _result;
  }
  factory ValidateSpaceKnowledgeDomainFilePageParaServicesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateSpaceKnowledgeDomainFilePageParaServicesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateSpaceKnowledgeDomainFilePageParaServicesResponse clone() => ValidateSpaceKnowledgeDomainFilePageParaServicesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateSpaceKnowledgeDomainFilePageParaServicesResponse copyWith(void Function(ValidateSpaceKnowledgeDomainFilePageParaServicesResponse) updates) => super.copyWith((message) => updates(message as ValidateSpaceKnowledgeDomainFilePageParaServicesResponse)) as ValidateSpaceKnowledgeDomainFilePageParaServicesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidateSpaceKnowledgeDomainFilePageParaServicesResponse create() => ValidateSpaceKnowledgeDomainFilePageParaServicesResponse._();
  ValidateSpaceKnowledgeDomainFilePageParaServicesResponse createEmptyInstance() => create();
  static $pb.PbList<ValidateSpaceKnowledgeDomainFilePageParaServicesResponse> createRepeated() => $pb.PbList<ValidateSpaceKnowledgeDomainFilePageParaServicesResponse>();
  @$core.pragma('dart2js:noInline')
  static ValidateSpaceKnowledgeDomainFilePageParaServicesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateSpaceKnowledgeDomainFilePageParaServicesResponse>(create);
  static ValidateSpaceKnowledgeDomainFilePageParaServicesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get spaceKnowledgeDomainFilePageParaServicesAccessValidationDone => $_getBF(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainFilePageParaServicesAccessValidationDone($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainFilePageParaServicesAccessValidationDone() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainFilePageParaServicesAccessValidationDone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get spaceKnowledgeDomainFilePageParaServicesAccessValidationMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFilePageParaServicesAccessValidationMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFilePageParaServicesAccessValidationMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFilePageParaServicesAccessValidationMessage() => clearField(2);
}

class SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.para'), createEmptyInstance: create)
    ..aOM<$59.SpaceKnowledgeDomainFilePagePara>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePagePara', subBuilder: $59.SpaceKnowledgeDomainFilePagePara.create)
    ..aOM<$2.PersistentSessionTokenDetails>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageParaServicesAccessSessionTokenDetails', subBuilder: $2.PersistentSessionTokenDetails.create)
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails._() : super();
  factory SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails({
    $59.SpaceKnowledgeDomainFilePagePara? spaceKnowledgeDomainFilePagePara,
    $2.PersistentSessionTokenDetails? spaceKnowledgeDomainFilePageParaServicesAccessSessionTokenDetails,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFilePagePara != null) {
      _result.spaceKnowledgeDomainFilePagePara = spaceKnowledgeDomainFilePagePara;
    }
    if (spaceKnowledgeDomainFilePageParaServicesAccessSessionTokenDetails != null) {
      _result.spaceKnowledgeDomainFilePageParaServicesAccessSessionTokenDetails = spaceKnowledgeDomainFilePageParaServicesAccessSessionTokenDetails;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails clone() => SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails copyWith(void Function(SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails)) as SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails create() => SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails._();
  SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails> createRepeated() => $pb.PbList<SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails>(create);
  static SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails? _defaultInstance;

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
  $2.PersistentSessionTokenDetails get spaceKnowledgeDomainFilePageParaServicesAccessSessionTokenDetails => $_getN(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFilePageParaServicesAccessSessionTokenDetails($2.PersistentSessionTokenDetails v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFilePageParaServicesAccessSessionTokenDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFilePageParaServicesAccessSessionTokenDetails() => clearField(2);
  @$pb.TagNumber(2)
  $2.PersistentSessionTokenDetails ensureSpaceKnowledgeDomainFilePageParaServicesAccessSessionTokenDetails() => $_ensure(1);

  @$pb.TagNumber(3)
  $54.Timestamp get requestedAt => $_getN(2);
  @$pb.TagNumber(3)
  set requestedAt($54.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestedAt() => clearField(3);
  @$pb.TagNumber(3)
  $54.Timestamp ensureRequestedAt() => $_ensure(2);
}

