///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge/access_space_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/space_knowledge.pb.dart' as $58;
import '../../../../entities/generic.pb.dart' as $2;
import '../../../../../../google/protobuf/timestamp.pb.dart' as $54;

class SpaceKnowledgeAccessTokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeAccessTokenResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.space'), createEmptyInstance: create)
    ..aOM<SpaceKnowledgeServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeServicesAccessAuthDetails', subBuilder: SpaceKnowledgeServicesAccessAuthDetails.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeServicesAccessDone')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeServicesAccessMessage')
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeAccessTokenResponse._() : super();
  factory SpaceKnowledgeAccessTokenResponse({
    SpaceKnowledgeServicesAccessAuthDetails? spaceKnowledgeServicesAccessAuthDetails,
    $core.bool? spaceKnowledgeServicesAccessDone,
    $core.String? spaceKnowledgeServicesAccessMessage,
  }) {
    final _result = create();
    if (spaceKnowledgeServicesAccessAuthDetails != null) {
      _result.spaceKnowledgeServicesAccessAuthDetails = spaceKnowledgeServicesAccessAuthDetails;
    }
    if (spaceKnowledgeServicesAccessDone != null) {
      _result.spaceKnowledgeServicesAccessDone = spaceKnowledgeServicesAccessDone;
    }
    if (spaceKnowledgeServicesAccessMessage != null) {
      _result.spaceKnowledgeServicesAccessMessage = spaceKnowledgeServicesAccessMessage;
    }
    return _result;
  }
  factory SpaceKnowledgeAccessTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeAccessTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeAccessTokenResponse clone() => SpaceKnowledgeAccessTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeAccessTokenResponse copyWith(void Function(SpaceKnowledgeAccessTokenResponse) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeAccessTokenResponse)) as SpaceKnowledgeAccessTokenResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeAccessTokenResponse create() => SpaceKnowledgeAccessTokenResponse._();
  SpaceKnowledgeAccessTokenResponse createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeAccessTokenResponse> createRepeated() => $pb.PbList<SpaceKnowledgeAccessTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeAccessTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeAccessTokenResponse>(create);
  static SpaceKnowledgeAccessTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SpaceKnowledgeServicesAccessAuthDetails get spaceKnowledgeServicesAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeServicesAccessAuthDetails(SpaceKnowledgeServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeServicesAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeServicesAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  SpaceKnowledgeServicesAccessAuthDetails ensureSpaceKnowledgeServicesAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get spaceKnowledgeServicesAccessDone => $_getBF(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeServicesAccessDone($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeServicesAccessDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeServicesAccessDone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get spaceKnowledgeServicesAccessMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set spaceKnowledgeServicesAccessMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceKnowledgeServicesAccessMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceKnowledgeServicesAccessMessage() => clearField(3);
}

class ValidateSpaceKnowledgeServicesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValidateSpaceKnowledgeServicesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.space'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeServicesAccessValidationDone')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeServicesAccessValidationMessage')
    ..hasRequiredFields = false
  ;

  ValidateSpaceKnowledgeServicesResponse._() : super();
  factory ValidateSpaceKnowledgeServicesResponse({
    $core.bool? spaceKnowledgeServicesAccessValidationDone,
    $core.String? spaceKnowledgeServicesAccessValidationMessage,
  }) {
    final _result = create();
    if (spaceKnowledgeServicesAccessValidationDone != null) {
      _result.spaceKnowledgeServicesAccessValidationDone = spaceKnowledgeServicesAccessValidationDone;
    }
    if (spaceKnowledgeServicesAccessValidationMessage != null) {
      _result.spaceKnowledgeServicesAccessValidationMessage = spaceKnowledgeServicesAccessValidationMessage;
    }
    return _result;
  }
  factory ValidateSpaceKnowledgeServicesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateSpaceKnowledgeServicesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateSpaceKnowledgeServicesResponse clone() => ValidateSpaceKnowledgeServicesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateSpaceKnowledgeServicesResponse copyWith(void Function(ValidateSpaceKnowledgeServicesResponse) updates) => super.copyWith((message) => updates(message as ValidateSpaceKnowledgeServicesResponse)) as ValidateSpaceKnowledgeServicesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidateSpaceKnowledgeServicesResponse create() => ValidateSpaceKnowledgeServicesResponse._();
  ValidateSpaceKnowledgeServicesResponse createEmptyInstance() => create();
  static $pb.PbList<ValidateSpaceKnowledgeServicesResponse> createRepeated() => $pb.PbList<ValidateSpaceKnowledgeServicesResponse>();
  @$core.pragma('dart2js:noInline')
  static ValidateSpaceKnowledgeServicesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateSpaceKnowledgeServicesResponse>(create);
  static ValidateSpaceKnowledgeServicesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get spaceKnowledgeServicesAccessValidationDone => $_getBF(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeServicesAccessValidationDone($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeServicesAccessValidationDone() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeServicesAccessValidationDone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get spaceKnowledgeServicesAccessValidationMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeServicesAccessValidationMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeServicesAccessValidationMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeServicesAccessValidationMessage() => clearField(2);
}

class SpaceKnowledgeServicesAccessAuthDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceKnowledgeServicesAccessAuthDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.space'), createEmptyInstance: create)
    ..aOM<$58.SpaceKnowledge>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledge', subBuilder: $58.SpaceKnowledge.create)
    ..aOM<$2.PersistentSessionTokenDetails>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeServicesAccessSessionTokenDetails', subBuilder: $2.PersistentSessionTokenDetails.create)
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  SpaceKnowledgeServicesAccessAuthDetails._() : super();
  factory SpaceKnowledgeServicesAccessAuthDetails({
    $58.SpaceKnowledge? spaceKnowledge,
    $2.PersistentSessionTokenDetails? spaceKnowledgeServicesAccessSessionTokenDetails,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (spaceKnowledge != null) {
      _result.spaceKnowledge = spaceKnowledge;
    }
    if (spaceKnowledgeServicesAccessSessionTokenDetails != null) {
      _result.spaceKnowledgeServicesAccessSessionTokenDetails = spaceKnowledgeServicesAccessSessionTokenDetails;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory SpaceKnowledgeServicesAccessAuthDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceKnowledgeServicesAccessAuthDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeServicesAccessAuthDetails clone() => SpaceKnowledgeServicesAccessAuthDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceKnowledgeServicesAccessAuthDetails copyWith(void Function(SpaceKnowledgeServicesAccessAuthDetails) updates) => super.copyWith((message) => updates(message as SpaceKnowledgeServicesAccessAuthDetails)) as SpaceKnowledgeServicesAccessAuthDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeServicesAccessAuthDetails create() => SpaceKnowledgeServicesAccessAuthDetails._();
  SpaceKnowledgeServicesAccessAuthDetails createEmptyInstance() => create();
  static $pb.PbList<SpaceKnowledgeServicesAccessAuthDetails> createRepeated() => $pb.PbList<SpaceKnowledgeServicesAccessAuthDetails>();
  @$core.pragma('dart2js:noInline')
  static SpaceKnowledgeServicesAccessAuthDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceKnowledgeServicesAccessAuthDetails>(create);
  static SpaceKnowledgeServicesAccessAuthDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $58.SpaceKnowledge get spaceKnowledge => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledge($58.SpaceKnowledge v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledge() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledge() => clearField(1);
  @$pb.TagNumber(1)
  $58.SpaceKnowledge ensureSpaceKnowledge() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.PersistentSessionTokenDetails get spaceKnowledgeServicesAccessSessionTokenDetails => $_getN(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeServicesAccessSessionTokenDetails($2.PersistentSessionTokenDetails v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeServicesAccessSessionTokenDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeServicesAccessSessionTokenDetails() => clearField(2);
  @$pb.TagNumber(2)
  $2.PersistentSessionTokenDetails ensureSpaceKnowledgeServicesAccessSessionTokenDetails() => $_ensure(1);

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

