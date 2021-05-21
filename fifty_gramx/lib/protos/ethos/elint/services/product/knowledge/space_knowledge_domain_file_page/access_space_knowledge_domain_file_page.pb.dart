///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page/access_space_knowledge_domain_file_page.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../space_knowledge_domain_file/access_space_knowledge_domain_file.pb.dart' as $33;
import '../../../../entities/space_knowledge_domain_file_page.pb.dart' as $40;
import '../../../../entities/generic.pb.dart' as $2;
import '../../../../../../google/protobuf/timestamp.pb.dart' as $54;

class SpaceKnowledgeDomainFilePageAccessTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeDomainFilePageAccessTokenRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page'), createEmptyInstance: create)
    ..aOM<$33.SpaceKnowledgeDomainFileServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileServicesAccessAuthDetails', subBuilder: $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails.create)
    ..aOM<$40.SpaceKnowledgeDomainFilePage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePage', subBuilder: $40.SpaceKnowledgeDomainFilePage.create)
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeDomainFilePageAccessTokenRequest._() : super();
  factory SpaceKnowledgeDomainFilePageAccessTokenRequest({
    $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails? spaceKnowledgeDomainFileServicesAccessAuthDetails,
    $40.SpaceKnowledgeDomainFilePage? spaceKnowledgeDomainFilePage,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFileServicesAccessAuthDetails != null) {
      _result.spaceKnowledgeDomainFileServicesAccessAuthDetails = spaceKnowledgeDomainFileServicesAccessAuthDetails;
    }
    if (spaceKnowledgeDomainFilePage != null) {
      _result.spaceKnowledgeDomainFilePage = spaceKnowledgeDomainFilePage;
    }
    return _result;
  }
  factory SpaceKnowledgeDomainFilePageAccessTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeDomainFilePageAccessTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePageAccessTokenRequest clone() => SpaceKnowledgeDomainFilePageAccessTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePageAccessTokenRequest copyWith(void Function(SpaceKnowledgeDomainFilePageAccessTokenRequest) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeDomainFilePageAccessTokenRequest)) as SpaceKnowledgeDomainFilePageAccessTokenRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePageAccessTokenRequest create() => SpaceKnowledgeDomainFilePageAccessTokenRequest._();
  SpaceKnowledgeDomainFilePageAccessTokenRequest createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeDomainFilePageAccessTokenRequest> createRepeated() => $pb.PbList<SpaceKnowledgeDomainFilePageAccessTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePageAccessTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeDomainFilePageAccessTokenRequest>(create);
  static SpaceKnowledgeDomainFilePageAccessTokenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails get spaceKnowledgeDomainFileServicesAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainFileServicesAccessAuthDetails($33.SpaceKnowledgeDomainFileServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainFileServicesAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainFileServicesAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails ensureSpaceKnowledgeDomainFileServicesAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $40.SpaceKnowledgeDomainFilePage get spaceKnowledgeDomainFilePage => $_getN(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFilePage($40.SpaceKnowledgeDomainFilePage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFilePage() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFilePage() => clearField(2);
  @$pb.TagNumber(2)
  $40.SpaceKnowledgeDomainFilePage ensureSpaceKnowledgeDomainFilePage() => $_ensure(1);
}

class SpaceKnowledgeDomainFilePageAccessTokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeDomainFilePageAccessTokenResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page'), createEmptyInstance: create)
    ..aOM<SpaceKnowledgeDomainFilePageServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: SpaceKnowledgeDomainFilePageServicesAccessAuthDetails.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessDone')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessMessage')
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeDomainFilePageAccessTokenResponse._() : super();
  factory SpaceKnowledgeDomainFilePageAccessTokenResponse({
    SpaceKnowledgeDomainFilePageServicesAccessAuthDetails? accessAuthDetails,
    $core.bool? accessDone,
    $core.String? accessMessage,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (accessDone != null) {
      _result.accessDone = accessDone;
    }
    if (accessMessage != null) {
      _result.accessMessage = accessMessage;
    }
    return _result;
  }
  factory SpaceKnowledgeDomainFilePageAccessTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeDomainFilePageAccessTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePageAccessTokenResponse clone() => SpaceKnowledgeDomainFilePageAccessTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePageAccessTokenResponse copyWith(void Function(SpaceKnowledgeDomainFilePageAccessTokenResponse) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeDomainFilePageAccessTokenResponse)) as SpaceKnowledgeDomainFilePageAccessTokenResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePageAccessTokenResponse create() => SpaceKnowledgeDomainFilePageAccessTokenResponse._();
  SpaceKnowledgeDomainFilePageAccessTokenResponse createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeDomainFilePageAccessTokenResponse> createRepeated() => $pb.PbList<SpaceKnowledgeDomainFilePageAccessTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePageAccessTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeDomainFilePageAccessTokenResponse>(create);
  static SpaceKnowledgeDomainFilePageAccessTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SpaceKnowledgeDomainFilePageServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails(SpaceKnowledgeDomainFilePageServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  SpaceKnowledgeDomainFilePageServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get accessDone => $_getBF(1);
  @$pb.TagNumber(2)
  set accessDone($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccessDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessDone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accessMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set accessMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccessMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessMessage() => clearField(3);
}

class ValidateSpaceKnowledgeDomainFilePageServicesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValidateSpaceKnowledgeDomainFilePageServicesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageServicesAccessValidationDone')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageServicesAccessValidationMessage')
    ..hasRequiredFields = false
  ;

  ValidateSpaceKnowledgeDomainFilePageServicesResponse._() : super();
  factory ValidateSpaceKnowledgeDomainFilePageServicesResponse({
    $core.bool? spaceKnowledgeDomainFilePageServicesAccessValidationDone,
    $core.String? spaceKnowledgeDomainFilePageServicesAccessValidationMessage,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFilePageServicesAccessValidationDone != null) {
      _result.spaceKnowledgeDomainFilePageServicesAccessValidationDone = spaceKnowledgeDomainFilePageServicesAccessValidationDone;
    }
    if (spaceKnowledgeDomainFilePageServicesAccessValidationMessage != null) {
      _result.spaceKnowledgeDomainFilePageServicesAccessValidationMessage = spaceKnowledgeDomainFilePageServicesAccessValidationMessage;
    }
    return _result;
  }
  factory ValidateSpaceKnowledgeDomainFilePageServicesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateSpaceKnowledgeDomainFilePageServicesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateSpaceKnowledgeDomainFilePageServicesResponse clone() => ValidateSpaceKnowledgeDomainFilePageServicesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateSpaceKnowledgeDomainFilePageServicesResponse copyWith(void Function(ValidateSpaceKnowledgeDomainFilePageServicesResponse) updates) => super.copyWith((message) => updates(message as ValidateSpaceKnowledgeDomainFilePageServicesResponse)) as ValidateSpaceKnowledgeDomainFilePageServicesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidateSpaceKnowledgeDomainFilePageServicesResponse create() => ValidateSpaceKnowledgeDomainFilePageServicesResponse._();
  ValidateSpaceKnowledgeDomainFilePageServicesResponse createEmptyInstance() => create();
  static $pb.PbList<ValidateSpaceKnowledgeDomainFilePageServicesResponse> createRepeated() => $pb.PbList<ValidateSpaceKnowledgeDomainFilePageServicesResponse>();
  @$core.pragma('dart2js:noInline')
  static ValidateSpaceKnowledgeDomainFilePageServicesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateSpaceKnowledgeDomainFilePageServicesResponse>(create);
  static ValidateSpaceKnowledgeDomainFilePageServicesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get spaceKnowledgeDomainFilePageServicesAccessValidationDone => $_getBF(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainFilePageServicesAccessValidationDone($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainFilePageServicesAccessValidationDone() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainFilePageServicesAccessValidationDone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get spaceKnowledgeDomainFilePageServicesAccessValidationMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFilePageServicesAccessValidationMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFilePageServicesAccessValidationMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFilePageServicesAccessValidationMessage() => clearField(2);
}

class SpaceKnowledgeDomainFilePageServicesAccessAuthDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeDomainFilePageServicesAccessAuthDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.page'), createEmptyInstance: create)
    ..aOM<$40.SpaceKnowledgeDomainFilePage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePage', subBuilder: $40.SpaceKnowledgeDomainFilePage.create)
    ..aOM<$2.PersistentSessionTokenDetails>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFilePageServicesAccessSessionTokenDetails', subBuilder: $2.PersistentSessionTokenDetails.create)
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeDomainFilePageServicesAccessAuthDetails._() : super();
  factory SpaceKnowledgeDomainFilePageServicesAccessAuthDetails({
    $40.SpaceKnowledgeDomainFilePage? spaceKnowledgeDomainFilePage,
    $2.PersistentSessionTokenDetails? spaceKnowledgeDomainFilePageServicesAccessSessionTokenDetails,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFilePage != null) {
      _result.spaceKnowledgeDomainFilePage = spaceKnowledgeDomainFilePage;
    }
    if (spaceKnowledgeDomainFilePageServicesAccessSessionTokenDetails != null) {
      _result.spaceKnowledgeDomainFilePageServicesAccessSessionTokenDetails = spaceKnowledgeDomainFilePageServicesAccessSessionTokenDetails;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory SpaceKnowledgeDomainFilePageServicesAccessAuthDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeDomainFilePageServicesAccessAuthDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePageServicesAccessAuthDetails clone() => SpaceKnowledgeDomainFilePageServicesAccessAuthDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFilePageServicesAccessAuthDetails copyWith(void Function(SpaceKnowledgeDomainFilePageServicesAccessAuthDetails) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeDomainFilePageServicesAccessAuthDetails)) as SpaceKnowledgeDomainFilePageServicesAccessAuthDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePageServicesAccessAuthDetails create() => SpaceKnowledgeDomainFilePageServicesAccessAuthDetails._();
  SpaceKnowledgeDomainFilePageServicesAccessAuthDetails createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeDomainFilePageServicesAccessAuthDetails> createRepeated() => $pb.PbList<SpaceKnowledgeDomainFilePageServicesAccessAuthDetails>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFilePageServicesAccessAuthDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeDomainFilePageServicesAccessAuthDetails>(create);
  static SpaceKnowledgeDomainFilePageServicesAccessAuthDetails? _defaultInstance;

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
  $2.PersistentSessionTokenDetails get spaceKnowledgeDomainFilePageServicesAccessSessionTokenDetails => $_getN(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFilePageServicesAccessSessionTokenDetails($2.PersistentSessionTokenDetails v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFilePageServicesAccessSessionTokenDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFilePageServicesAccessSessionTokenDetails() => clearField(2);
  @$pb.TagNumber(2)
  $2.PersistentSessionTokenDetails ensureSpaceKnowledgeDomainFilePageServicesAccessSessionTokenDetails() => $_ensure(1);

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

