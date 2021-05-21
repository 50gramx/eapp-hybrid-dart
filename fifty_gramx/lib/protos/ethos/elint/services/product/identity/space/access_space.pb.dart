///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/space/access_space.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/space.pb.dart' as $57;
import '../../../../entities/generic.pb.dart' as $2;
import '../../../../../../google/protobuf/timestamp.pb.dart' as $54;

class SpaceAccessTokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceAccessTokenResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.space'), createEmptyInstance: create)
    ..aOM<SpaceServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceServicesAccessAuthDetails', subBuilder: SpaceServicesAccessAuthDetails.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceServicesAccessDone')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceServicesAccessMessage')
    ..hasRequiredFields = false
  ;

  SpaceAccessTokenResponse._() : super();
  factory SpaceAccessTokenResponse({
    SpaceServicesAccessAuthDetails? spaceServicesAccessAuthDetails,
    $core.bool? spaceServicesAccessDone,
    $core.String? spaceServicesAccessMessage,
  }) {
    final _result = create();
    if (spaceServicesAccessAuthDetails != null) {
      _result.spaceServicesAccessAuthDetails = spaceServicesAccessAuthDetails;
    }
    if (spaceServicesAccessDone != null) {
      _result.spaceServicesAccessDone = spaceServicesAccessDone;
    }
    if (spaceServicesAccessMessage != null) {
      _result.spaceServicesAccessMessage = spaceServicesAccessMessage;
    }
    return _result;
  }
  factory SpaceAccessTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceAccessTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceAccessTokenResponse clone() => SpaceAccessTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceAccessTokenResponse copyWith(void Function(SpaceAccessTokenResponse) updates) => super.copyWith((message) => updates(message as SpaceAccessTokenResponse)) as SpaceAccessTokenResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceAccessTokenResponse create() => SpaceAccessTokenResponse._();
  SpaceAccessTokenResponse createEmptyInstance() => create();
  static $pb.PbList<SpaceAccessTokenResponse> createRepeated() => $pb.PbList<SpaceAccessTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static SpaceAccessTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceAccessTokenResponse>(create);
  static SpaceAccessTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SpaceServicesAccessAuthDetails get spaceServicesAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set spaceServicesAccessAuthDetails(SpaceServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceServicesAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceServicesAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  SpaceServicesAccessAuthDetails ensureSpaceServicesAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get spaceServicesAccessDone => $_getBF(1);
  @$pb.TagNumber(2)
  set spaceServicesAccessDone($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceServicesAccessDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceServicesAccessDone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get spaceServicesAccessMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set spaceServicesAccessMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceServicesAccessMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceServicesAccessMessage() => clearField(3);
}

class ValidateSpaceServicesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValidateSpaceServicesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.space'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceServiceAccessValidationDone')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceServiceAccessValidationMessage')
    ..hasRequiredFields = false
  ;

  ValidateSpaceServicesResponse._() : super();
  factory ValidateSpaceServicesResponse({
    $core.bool? spaceServiceAccessValidationDone,
    $core.String? spaceServiceAccessValidationMessage,
  }) {
    final _result = create();
    if (spaceServiceAccessValidationDone != null) {
      _result.spaceServiceAccessValidationDone = spaceServiceAccessValidationDone;
    }
    if (spaceServiceAccessValidationMessage != null) {
      _result.spaceServiceAccessValidationMessage = spaceServiceAccessValidationMessage;
    }
    return _result;
  }
  factory ValidateSpaceServicesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateSpaceServicesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateSpaceServicesResponse clone() => ValidateSpaceServicesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateSpaceServicesResponse copyWith(void Function(ValidateSpaceServicesResponse) updates) => super.copyWith((message) => updates(message as ValidateSpaceServicesResponse)) as ValidateSpaceServicesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidateSpaceServicesResponse create() => ValidateSpaceServicesResponse._();
  ValidateSpaceServicesResponse createEmptyInstance() => create();
  static $pb.PbList<ValidateSpaceServicesResponse> createRepeated() => $pb.PbList<ValidateSpaceServicesResponse>();
  @$core.pragma('dart2js:noInline')
  static ValidateSpaceServicesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateSpaceServicesResponse>(create);
  static ValidateSpaceServicesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get spaceServiceAccessValidationDone => $_getBF(0);
  @$pb.TagNumber(1)
  set spaceServiceAccessValidationDone($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceServiceAccessValidationDone() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceServiceAccessValidationDone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get spaceServiceAccessValidationMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceServiceAccessValidationMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceServiceAccessValidationMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceServiceAccessValidationMessage() => clearField(2);
}

class SpaceServicesAccessAuthDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpaceServicesAccessAuthDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.space'), createEmptyInstance: create)
    ..aOM<$57.Space>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'space', subBuilder: $57.Space.create)
    ..aOM<$2.PersistentSessionTokenDetails>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceServicesAccessSessionTokenDetails', subBuilder: $2.PersistentSessionTokenDetails.create)
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  SpaceServicesAccessAuthDetails._() : super();
  factory SpaceServicesAccessAuthDetails({
    $57.Space? space,
    $2.PersistentSessionTokenDetails? spaceServicesAccessSessionTokenDetails,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (space != null) {
      _result.space = space;
    }
    if (spaceServicesAccessSessionTokenDetails != null) {
      _result.spaceServicesAccessSessionTokenDetails = spaceServicesAccessSessionTokenDetails;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory SpaceServicesAccessAuthDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpaceServicesAccessAuthDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpaceServicesAccessAuthDetails clone() => SpaceServicesAccessAuthDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpaceServicesAccessAuthDetails copyWith(void Function(SpaceServicesAccessAuthDetails) updates) => super.copyWith((message) => updates(message as SpaceServicesAccessAuthDetails)) as SpaceServicesAccessAuthDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpaceServicesAccessAuthDetails create() => SpaceServicesAccessAuthDetails._();
  SpaceServicesAccessAuthDetails createEmptyInstance() => create();
  static $pb.PbList<SpaceServicesAccessAuthDetails> createRepeated() => $pb.PbList<SpaceServicesAccessAuthDetails>();
  @$core.pragma('dart2js:noInline')
  static SpaceServicesAccessAuthDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceServicesAccessAuthDetails>(create);
  static SpaceServicesAccessAuthDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $57.Space get space => $_getN(0);
  @$pb.TagNumber(1)
  set space($57.Space v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpace() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpace() => clearField(1);
  @$pb.TagNumber(1)
  $57.Space ensureSpace() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.PersistentSessionTokenDetails get spaceServicesAccessSessionTokenDetails => $_getN(1);
  @$pb.TagNumber(2)
  set spaceServicesAccessSessionTokenDetails($2.PersistentSessionTokenDetails v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceServicesAccessSessionTokenDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceServicesAccessSessionTokenDetails() => clearField(2);
  @$pb.TagNumber(2)
  $2.PersistentSessionTokenDetails ensureSpaceServicesAccessSessionTokenDetails() => $_ensure(1);

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

