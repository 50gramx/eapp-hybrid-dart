///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file/access_space_knowledge_domain_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../space_knowledge_domain/access_space_knowledge_domain.pb.dart' as $27;
import '../../../../entities/space_knowledge_domain_file.pb.dart' as $37;
import '../../../../entities/generic.pb.dart' as $2;
import '../../../../../../google/protobuf/timestamp.pb.dart' as $54;

class SpaceKnowledgeDomainFileAccessTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeDomainFileAccessTokenRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.file'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainServicesAccessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOM<$37.SpaceKnowledgeDomainFile>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFile', subBuilder: $37.SpaceKnowledgeDomainFile.create)
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeDomainFileAccessTokenRequest._() : super();
  factory SpaceKnowledgeDomainFileAccessTokenRequest({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? spaceKnowledgeDomainServicesAccessAuthDetails,
    $37.SpaceKnowledgeDomainFile? spaceKnowledgeDomainFile,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainServicesAccessAuthDetails != null) {
      _result.spaceKnowledgeDomainServicesAccessAuthDetails = spaceKnowledgeDomainServicesAccessAuthDetails;
    }
    if (spaceKnowledgeDomainFile != null) {
      _result.spaceKnowledgeDomainFile = spaceKnowledgeDomainFile;
    }
    return _result;
  }
  factory SpaceKnowledgeDomainFileAccessTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeDomainFileAccessTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFileAccessTokenRequest clone() => SpaceKnowledgeDomainFileAccessTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFileAccessTokenRequest copyWith(void Function(SpaceKnowledgeDomainFileAccessTokenRequest) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeDomainFileAccessTokenRequest)) as SpaceKnowledgeDomainFileAccessTokenRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFileAccessTokenRequest create() => SpaceKnowledgeDomainFileAccessTokenRequest._();
  SpaceKnowledgeDomainFileAccessTokenRequest createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeDomainFileAccessTokenRequest> createRepeated() => $pb.PbList<SpaceKnowledgeDomainFileAccessTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFileAccessTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeDomainFileAccessTokenRequest>(create);
  static SpaceKnowledgeDomainFileAccessTokenRequest? _defaultInstance;

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
  $37.SpaceKnowledgeDomainFile get spaceKnowledgeDomainFile => $_getN(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFile($37.SpaceKnowledgeDomainFile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFile() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFile() => clearField(2);
  @$pb.TagNumber(2)
  $37.SpaceKnowledgeDomainFile ensureSpaceKnowledgeDomainFile() => $_ensure(1);
}

class SpaceKnowledgeDomainFileAccessTokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeDomainFileAccessTokenResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.file'), createEmptyInstance: create)
    ..aOM<SpaceKnowledgeDomainFileServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileServicesAccessAuthDetails', subBuilder: SpaceKnowledgeDomainFileServicesAccessAuthDetails.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileServicesAccessDone')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileServicesAccessMessage')
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeDomainFileAccessTokenResponse._() : super();
  factory SpaceKnowledgeDomainFileAccessTokenResponse({
    SpaceKnowledgeDomainFileServicesAccessAuthDetails? spaceKnowledgeDomainFileServicesAccessAuthDetails,
    $core.bool? spaceKnowledgeDomainFileServicesAccessDone,
    $core.String? spaceKnowledgeDomainFileServicesAccessMessage,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFileServicesAccessAuthDetails != null) {
      _result.spaceKnowledgeDomainFileServicesAccessAuthDetails = spaceKnowledgeDomainFileServicesAccessAuthDetails;
    }
    if (spaceKnowledgeDomainFileServicesAccessDone != null) {
      _result.spaceKnowledgeDomainFileServicesAccessDone = spaceKnowledgeDomainFileServicesAccessDone;
    }
    if (spaceKnowledgeDomainFileServicesAccessMessage != null) {
      _result.spaceKnowledgeDomainFileServicesAccessMessage = spaceKnowledgeDomainFileServicesAccessMessage;
    }
    return _result;
  }
  factory SpaceKnowledgeDomainFileAccessTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeDomainFileAccessTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFileAccessTokenResponse clone() => SpaceKnowledgeDomainFileAccessTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFileAccessTokenResponse copyWith(void Function(SpaceKnowledgeDomainFileAccessTokenResponse) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeDomainFileAccessTokenResponse)) as SpaceKnowledgeDomainFileAccessTokenResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFileAccessTokenResponse create() => SpaceKnowledgeDomainFileAccessTokenResponse._();
  SpaceKnowledgeDomainFileAccessTokenResponse createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeDomainFileAccessTokenResponse> createRepeated() => $pb.PbList<SpaceKnowledgeDomainFileAccessTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFileAccessTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeDomainFileAccessTokenResponse>(create);
  static SpaceKnowledgeDomainFileAccessTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SpaceKnowledgeDomainFileServicesAccessAuthDetails get spaceKnowledgeDomainFileServicesAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainFileServicesAccessAuthDetails(SpaceKnowledgeDomainFileServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainFileServicesAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainFileServicesAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  SpaceKnowledgeDomainFileServicesAccessAuthDetails ensureSpaceKnowledgeDomainFileServicesAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get spaceKnowledgeDomainFileServicesAccessDone => $_getBF(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFileServicesAccessDone($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFileServicesAccessDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFileServicesAccessDone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get spaceKnowledgeDomainFileServicesAccessMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set spaceKnowledgeDomainFileServicesAccessMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceKnowledgeDomainFileServicesAccessMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceKnowledgeDomainFileServicesAccessMessage() => clearField(3);
}

class ValidateSpaceKnowledgeDomainFileServicesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValidateSpaceKnowledgeDomainFileServicesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.file'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileServicesAccessValidationDone')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileServicesAccessValidationMessage')
    ..hasRequiredFields = false
  ;

  ValidateSpaceKnowledgeDomainFileServicesResponse._() : super();
  factory ValidateSpaceKnowledgeDomainFileServicesResponse({
    $core.bool? spaceKnowledgeDomainFileServicesAccessValidationDone,
    $core.String? spaceKnowledgeDomainFileServicesAccessValidationMessage,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFileServicesAccessValidationDone != null) {
      _result.spaceKnowledgeDomainFileServicesAccessValidationDone = spaceKnowledgeDomainFileServicesAccessValidationDone;
    }
    if (spaceKnowledgeDomainFileServicesAccessValidationMessage != null) {
      _result.spaceKnowledgeDomainFileServicesAccessValidationMessage = spaceKnowledgeDomainFileServicesAccessValidationMessage;
    }
    return _result;
  }
  factory ValidateSpaceKnowledgeDomainFileServicesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateSpaceKnowledgeDomainFileServicesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateSpaceKnowledgeDomainFileServicesResponse clone() => ValidateSpaceKnowledgeDomainFileServicesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateSpaceKnowledgeDomainFileServicesResponse copyWith(void Function(ValidateSpaceKnowledgeDomainFileServicesResponse) updates) => super.copyWith((message) => updates(message as ValidateSpaceKnowledgeDomainFileServicesResponse)) as ValidateSpaceKnowledgeDomainFileServicesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidateSpaceKnowledgeDomainFileServicesResponse create() => ValidateSpaceKnowledgeDomainFileServicesResponse._();
  ValidateSpaceKnowledgeDomainFileServicesResponse createEmptyInstance() => create();
  static $pb.PbList<ValidateSpaceKnowledgeDomainFileServicesResponse> createRepeated() => $pb.PbList<ValidateSpaceKnowledgeDomainFileServicesResponse>();
  @$core.pragma('dart2js:noInline')
  static ValidateSpaceKnowledgeDomainFileServicesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateSpaceKnowledgeDomainFileServicesResponse>(create);
  static ValidateSpaceKnowledgeDomainFileServicesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get spaceKnowledgeDomainFileServicesAccessValidationDone => $_getBF(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainFileServicesAccessValidationDone($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainFileServicesAccessValidationDone() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainFileServicesAccessValidationDone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get spaceKnowledgeDomainFileServicesAccessValidationMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFileServicesAccessValidationMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFileServicesAccessValidationMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFileServicesAccessValidationMessage() => clearField(2);
}

class SpaceKnowledgeDomainFileServicesAccessAuthDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeDomainFileServicesAccessAuthDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.file'), createEmptyInstance: create)
    ..aOM<$37.SpaceKnowledgeDomainFile>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFile', subBuilder: $37.SpaceKnowledgeDomainFile.create)
    ..aOM<$2.PersistentSessionTokenDetails>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileServicesAccessSessionTokenDetails', subBuilder: $2.PersistentSessionTokenDetails.create)
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeDomainFileServicesAccessAuthDetails._() : super();
  factory SpaceKnowledgeDomainFileServicesAccessAuthDetails({
    $37.SpaceKnowledgeDomainFile? spaceKnowledgeDomainFile,
    $2.PersistentSessionTokenDetails? spaceKnowledgeDomainFileServicesAccessSessionTokenDetails,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFile != null) {
      _result.spaceKnowledgeDomainFile = spaceKnowledgeDomainFile;
    }
    if (spaceKnowledgeDomainFileServicesAccessSessionTokenDetails != null) {
      _result.spaceKnowledgeDomainFileServicesAccessSessionTokenDetails = spaceKnowledgeDomainFileServicesAccessSessionTokenDetails;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory SpaceKnowledgeDomainFileServicesAccessAuthDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeDomainFileServicesAccessAuthDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFileServicesAccessAuthDetails clone() => SpaceKnowledgeDomainFileServicesAccessAuthDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeDomainFileServicesAccessAuthDetails copyWith(void Function(SpaceKnowledgeDomainFileServicesAccessAuthDetails) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeDomainFileServicesAccessAuthDetails)) as SpaceKnowledgeDomainFileServicesAccessAuthDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFileServicesAccessAuthDetails create() => SpaceKnowledgeDomainFileServicesAccessAuthDetails._();
  SpaceKnowledgeDomainFileServicesAccessAuthDetails createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeDomainFileServicesAccessAuthDetails> createRepeated() => $pb.PbList<SpaceKnowledgeDomainFileServicesAccessAuthDetails>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeDomainFileServicesAccessAuthDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeDomainFileServicesAccessAuthDetails>(create);
  static SpaceKnowledgeDomainFileServicesAccessAuthDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $37.SpaceKnowledgeDomainFile get spaceKnowledgeDomainFile => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainFile($37.SpaceKnowledgeDomainFile v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainFile() => clearField(1);
  @$pb.TagNumber(1)
  $37.SpaceKnowledgeDomainFile ensureSpaceKnowledgeDomainFile() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.PersistentSessionTokenDetails get spaceKnowledgeDomainFileServicesAccessSessionTokenDetails => $_getN(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFileServicesAccessSessionTokenDetails($2.PersistentSessionTokenDetails v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFileServicesAccessSessionTokenDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFileServicesAccessSessionTokenDetails() => clearField(2);
  @$pb.TagNumber(2)
  $2.PersistentSessionTokenDetails ensureSpaceKnowledgeDomainFileServicesAccessSessionTokenDetails() => $_ensure(1);

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

