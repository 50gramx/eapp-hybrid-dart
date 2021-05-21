///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/generic.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../google/protobuf/timestamp.pb.dart' as $54;

export '../../../google/protobuf/timestamp.pb.dart';
export 'generic.pbenum.dart';

class PersistentSessionTokenDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PersistentSessionTokenDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionToken')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionScope')
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'generatedAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastUsedAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validTill', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  PersistentSessionTokenDetails._() : super();
  factory PersistentSessionTokenDetails({
    $core.String? sessionToken,
    $core.String? sessionScope,
    $54.Timestamp? generatedAt,
    $54.Timestamp? lastUsedAt,
    $54.Timestamp? validTill,
  }) {
    final _result = create();
    if (sessionToken != null) {
      _result.sessionToken = sessionToken;
    }
    if (sessionScope != null) {
      _result.sessionScope = sessionScope;
    }
    if (generatedAt != null) {
      _result.generatedAt = generatedAt;
    }
    if (lastUsedAt != null) {
      _result.lastUsedAt = lastUsedAt;
    }
    if (validTill != null) {
      _result.validTill = validTill;
    }
    return _result;
  }
  factory PersistentSessionTokenDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistentSessionTokenDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistentSessionTokenDetails clone() => PersistentSessionTokenDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistentSessionTokenDetails copyWith(void Function(PersistentSessionTokenDetails) updates) => super.copyWith((message) => updates(message as PersistentSessionTokenDetails)) as PersistentSessionTokenDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PersistentSessionTokenDetails create() => PersistentSessionTokenDetails._();
  PersistentSessionTokenDetails createEmptyInstance() => create();
  static $pb.PbList<PersistentSessionTokenDetails> createRepeated() => $pb.PbList<PersistentSessionTokenDetails>();
  @$core.pragma('dart2js:noInline')
  static PersistentSessionTokenDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistentSessionTokenDetails>(create);
  static PersistentSessionTokenDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionScope => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionScope($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionScope() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionScope() => clearField(2);

  @$pb.TagNumber(3)
  $54.Timestamp get generatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set generatedAt($54.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGeneratedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearGeneratedAt() => clearField(3);
  @$pb.TagNumber(3)
  $54.Timestamp ensureGeneratedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $54.Timestamp get lastUsedAt => $_getN(3);
  @$pb.TagNumber(4)
  set lastUsedAt($54.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastUsedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastUsedAt() => clearField(4);
  @$pb.TagNumber(4)
  $54.Timestamp ensureLastUsedAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $54.Timestamp get validTill => $_getN(4);
  @$pb.TagNumber(5)
  set validTill($54.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasValidTill() => $_has(4);
  @$pb.TagNumber(5)
  void clearValidTill() => clearField(5);
  @$pb.TagNumber(5)
  $54.Timestamp ensureValidTill() => $_ensure(4);
}

class TemporarySessionTokenDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TemporarySessionTokenDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionToken')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessionScope')
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'generatedAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validTill', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  TemporarySessionTokenDetails._() : super();
  factory TemporarySessionTokenDetails({
    $core.String? sessionToken,
    $core.String? sessionScope,
    $54.Timestamp? generatedAt,
    $54.Timestamp? validTill,
  }) {
    final _result = create();
    if (sessionToken != null) {
      _result.sessionToken = sessionToken;
    }
    if (sessionScope != null) {
      _result.sessionScope = sessionScope;
    }
    if (generatedAt != null) {
      _result.generatedAt = generatedAt;
    }
    if (validTill != null) {
      _result.validTill = validTill;
    }
    return _result;
  }
  factory TemporarySessionTokenDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TemporarySessionTokenDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TemporarySessionTokenDetails clone() => TemporarySessionTokenDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TemporarySessionTokenDetails copyWith(void Function(TemporarySessionTokenDetails) updates) => super.copyWith((message) => updates(message as TemporarySessionTokenDetails)) as TemporarySessionTokenDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TemporarySessionTokenDetails create() => TemporarySessionTokenDetails._();
  TemporarySessionTokenDetails createEmptyInstance() => create();
  static $pb.PbList<TemporarySessionTokenDetails> createRepeated() => $pb.PbList<TemporarySessionTokenDetails>();
  @$core.pragma('dart2js:noInline')
  static TemporarySessionTokenDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TemporarySessionTokenDetails>(create);
  static TemporarySessionTokenDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get sessionScope => $_getSZ(1);
  @$pb.TagNumber(2)
  set sessionScope($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSessionScope() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionScope() => clearField(2);

  @$pb.TagNumber(3)
  $54.Timestamp get generatedAt => $_getN(2);
  @$pb.TagNumber(3)
  set generatedAt($54.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGeneratedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearGeneratedAt() => clearField(3);
  @$pb.TagNumber(3)
  $54.Timestamp ensureGeneratedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $54.Timestamp get validTill => $_getN(3);
  @$pb.TagNumber(4)
  set validTill($54.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasValidTill() => $_has(3);
  @$pb.TagNumber(4)
  void clearValidTill() => clearField(4);
  @$pb.TagNumber(4)
  $54.Timestamp ensureValidTill() => $_ensure(3);
}

class PersistentTokenDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PersistentTokenDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aOM<$54.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'generatedAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastUsedAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validTill', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  PersistentTokenDetails._() : super();
  factory PersistentTokenDetails({
    $core.String? token,
    $54.Timestamp? generatedAt,
    $54.Timestamp? lastUsedAt,
    $54.Timestamp? validTill,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (generatedAt != null) {
      _result.generatedAt = generatedAt;
    }
    if (lastUsedAt != null) {
      _result.lastUsedAt = lastUsedAt;
    }
    if (validTill != null) {
      _result.validTill = validTill;
    }
    return _result;
  }
  factory PersistentTokenDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PersistentTokenDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PersistentTokenDetails clone() => PersistentTokenDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PersistentTokenDetails copyWith(void Function(PersistentTokenDetails) updates) => super.copyWith((message) => updates(message as PersistentTokenDetails)) as PersistentTokenDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PersistentTokenDetails create() => PersistentTokenDetails._();
  PersistentTokenDetails createEmptyInstance() => create();
  static $pb.PbList<PersistentTokenDetails> createRepeated() => $pb.PbList<PersistentTokenDetails>();
  @$core.pragma('dart2js:noInline')
  static PersistentTokenDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PersistentTokenDetails>(create);
  static PersistentTokenDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $54.Timestamp get generatedAt => $_getN(1);
  @$pb.TagNumber(2)
  set generatedAt($54.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGeneratedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearGeneratedAt() => clearField(2);
  @$pb.TagNumber(2)
  $54.Timestamp ensureGeneratedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $54.Timestamp get lastUsedAt => $_getN(2);
  @$pb.TagNumber(3)
  set lastUsedAt($54.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastUsedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastUsedAt() => clearField(3);
  @$pb.TagNumber(3)
  $54.Timestamp ensureLastUsedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $54.Timestamp get validTill => $_getN(3);
  @$pb.TagNumber(4)
  set validTill($54.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasValidTill() => $_has(3);
  @$pb.TagNumber(4)
  void clearValidTill() => clearField(4);
  @$pb.TagNumber(4)
  $54.Timestamp ensureValidTill() => $_ensure(3);
}

class TemporaryTokenDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TemporaryTokenDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'token')
    ..aOM<$54.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'generatedAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validTill', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  TemporaryTokenDetails._() : super();
  factory TemporaryTokenDetails({
    $core.String? token,
    $54.Timestamp? generatedAt,
    $54.Timestamp? validTill,
  }) {
    final _result = create();
    if (token != null) {
      _result.token = token;
    }
    if (generatedAt != null) {
      _result.generatedAt = generatedAt;
    }
    if (validTill != null) {
      _result.validTill = validTill;
    }
    return _result;
  }
  factory TemporaryTokenDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TemporaryTokenDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TemporaryTokenDetails clone() => TemporaryTokenDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TemporaryTokenDetails copyWith(void Function(TemporaryTokenDetails) updates) => super.copyWith((message) => updates(message as TemporaryTokenDetails)) as TemporaryTokenDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TemporaryTokenDetails create() => TemporaryTokenDetails._();
  TemporaryTokenDetails createEmptyInstance() => create();
  static $pb.PbList<TemporaryTokenDetails> createRepeated() => $pb.PbList<TemporaryTokenDetails>();
  @$core.pragma('dart2js:noInline')
  static TemporaryTokenDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TemporaryTokenDetails>(create);
  static TemporaryTokenDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  @$pb.TagNumber(2)
  $54.Timestamp get generatedAt => $_getN(1);
  @$pb.TagNumber(2)
  set generatedAt($54.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGeneratedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearGeneratedAt() => clearField(2);
  @$pb.TagNumber(2)
  $54.Timestamp ensureGeneratedAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $54.Timestamp get validTill => $_getN(2);
  @$pb.TagNumber(3)
  set validTill($54.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasValidTill() => $_has(2);
  @$pb.TagNumber(3)
  void clearValidTill() => clearField(3);
  @$pb.TagNumber(3)
  $54.Timestamp ensureValidTill() => $_ensure(2);
}

class ResponseMeta extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResponseMeta', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metaDone')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'metaMessage')
    ..hasRequiredFields = false
  ;

  ResponseMeta._() : super();
  factory ResponseMeta({
    $core.bool? metaDone,
    $core.String? metaMessage,
  }) {
    final _result = create();
    if (metaDone != null) {
      _result.metaDone = metaDone;
    }
    if (metaMessage != null) {
      _result.metaMessage = metaMessage;
    }
    return _result;
  }
  factory ResponseMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResponseMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResponseMeta clone() => ResponseMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResponseMeta copyWith(void Function(ResponseMeta) updates) => super.copyWith((message) => updates(message as ResponseMeta)) as ResponseMeta; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResponseMeta create() => ResponseMeta._();
  ResponseMeta createEmptyInstance() => create();
  static $pb.PbList<ResponseMeta> createRepeated() => $pb.PbList<ResponseMeta>();
  @$core.pragma('dart2js:noInline')
  static ResponseMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResponseMeta>(create);
  static ResponseMeta? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get metaDone => $_getBF(0);
  @$pb.TagNumber(1)
  set metaDone($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetaDone() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetaDone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get metaMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set metaMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetaMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetaMessage() => clearField(2);
}

