///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/discover_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../account/access_account.pb.dart' as $0;
import '../../../../entities/account_assistant.pb.dart' as $6;
import '../../../../entities/generic.pb.dart' as $2;

class GetAccountAssistantMetaByAccountIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountAssistantMetaByAccountIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..hasRequiredFields = false
  ;

  GetAccountAssistantMetaByAccountIdRequest._() : super();
  factory GetAccountAssistantMetaByAccountIdRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $core.String? accountId,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (accountId != null) {
      _result.accountId = accountId;
    }
    return _result;
  }
  factory GetAccountAssistantMetaByAccountIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountAssistantMetaByAccountIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountAssistantMetaByAccountIdRequest clone() => GetAccountAssistantMetaByAccountIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountAssistantMetaByAccountIdRequest copyWith(void Function(GetAccountAssistantMetaByAccountIdRequest) updates) => super.copyWith((message) => updates(message as GetAccountAssistantMetaByAccountIdRequest)) as GetAccountAssistantMetaByAccountIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountAssistantMetaByAccountIdRequest create() => GetAccountAssistantMetaByAccountIdRequest._();
  GetAccountAssistantMetaByAccountIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountAssistantMetaByAccountIdRequest> createRepeated() => $pb.PbList<GetAccountAssistantMetaByAccountIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAccountAssistantMetaByAccountIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountAssistantMetaByAccountIdRequest>(create);
  static GetAccountAssistantMetaByAccountIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails($0.AccountServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get accountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);
}

class GetAccountAssistantMetaByAccountIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountAssistantMetaByAccountIdResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOM<$6.AccountAssistantMeta>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantMeta', subBuilder: $6.AccountAssistantMeta.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetAccountAssistantMetaByAccountIdResponse._() : super();
  factory GetAccountAssistantMetaByAccountIdResponse({
    $6.AccountAssistantMeta? accountAssistantMeta,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (accountAssistantMeta != null) {
      _result.accountAssistantMeta = accountAssistantMeta;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetAccountAssistantMetaByAccountIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountAssistantMetaByAccountIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountAssistantMetaByAccountIdResponse clone() => GetAccountAssistantMetaByAccountIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountAssistantMetaByAccountIdResponse copyWith(void Function(GetAccountAssistantMetaByAccountIdResponse) updates) => super.copyWith((message) => updates(message as GetAccountAssistantMetaByAccountIdResponse)) as GetAccountAssistantMetaByAccountIdResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountAssistantMetaByAccountIdResponse create() => GetAccountAssistantMetaByAccountIdResponse._();
  GetAccountAssistantMetaByAccountIdResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountAssistantMetaByAccountIdResponse> createRepeated() => $pb.PbList<GetAccountAssistantMetaByAccountIdResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountAssistantMetaByAccountIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountAssistantMetaByAccountIdResponse>(create);
  static GetAccountAssistantMetaByAccountIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.AccountAssistantMeta get accountAssistantMeta => $_getN(0);
  @$pb.TagNumber(1)
  set accountAssistantMeta($6.AccountAssistantMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAssistantMeta() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAssistantMeta() => clearField(1);
  @$pb.TagNumber(1)
  $6.AccountAssistantMeta ensureAccountAssistantMeta() => $_ensure(0);

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

class GetAccountAssistantMetaByAccountAssistantIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountAssistantMetaByAccountAssistantIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantId')
    ..hasRequiredFields = false
  ;

  GetAccountAssistantMetaByAccountAssistantIdRequest._() : super();
  factory GetAccountAssistantMetaByAccountAssistantIdRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $core.String? accountAssistantId,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (accountAssistantId != null) {
      _result.accountAssistantId = accountAssistantId;
    }
    return _result;
  }
  factory GetAccountAssistantMetaByAccountAssistantIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountAssistantMetaByAccountAssistantIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountAssistantMetaByAccountAssistantIdRequest clone() => GetAccountAssistantMetaByAccountAssistantIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountAssistantMetaByAccountAssistantIdRequest copyWith(void Function(GetAccountAssistantMetaByAccountAssistantIdRequest) updates) => super.copyWith((message) => updates(message as GetAccountAssistantMetaByAccountAssistantIdRequest)) as GetAccountAssistantMetaByAccountAssistantIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountAssistantMetaByAccountAssistantIdRequest create() => GetAccountAssistantMetaByAccountAssistantIdRequest._();
  GetAccountAssistantMetaByAccountAssistantIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountAssistantMetaByAccountAssistantIdRequest> createRepeated() => $pb.PbList<GetAccountAssistantMetaByAccountAssistantIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAccountAssistantMetaByAccountAssistantIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountAssistantMetaByAccountAssistantIdRequest>(create);
  static GetAccountAssistantMetaByAccountAssistantIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails($0.AccountServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get accountAssistantId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountAssistantId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountAssistantId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountAssistantId() => clearField(2);
}

class GetAccountAssistantMetaByAccountAssistantIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountAssistantMetaByAccountAssistantIdResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOM<$6.AccountAssistantMeta>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantMeta', subBuilder: $6.AccountAssistantMeta.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetAccountAssistantMetaByAccountAssistantIdResponse._() : super();
  factory GetAccountAssistantMetaByAccountAssistantIdResponse({
    $6.AccountAssistantMeta? accountAssistantMeta,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (accountAssistantMeta != null) {
      _result.accountAssistantMeta = accountAssistantMeta;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetAccountAssistantMetaByAccountAssistantIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountAssistantMetaByAccountAssistantIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountAssistantMetaByAccountAssistantIdResponse clone() => GetAccountAssistantMetaByAccountAssistantIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountAssistantMetaByAccountAssistantIdResponse copyWith(void Function(GetAccountAssistantMetaByAccountAssistantIdResponse) updates) => super.copyWith((message) => updates(message as GetAccountAssistantMetaByAccountAssistantIdResponse)) as GetAccountAssistantMetaByAccountAssistantIdResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountAssistantMetaByAccountAssistantIdResponse create() => GetAccountAssistantMetaByAccountAssistantIdResponse._();
  GetAccountAssistantMetaByAccountAssistantIdResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountAssistantMetaByAccountAssistantIdResponse> createRepeated() => $pb.PbList<GetAccountAssistantMetaByAccountAssistantIdResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountAssistantMetaByAccountAssistantIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountAssistantMetaByAccountAssistantIdResponse>(create);
  static GetAccountAssistantMetaByAccountAssistantIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.AccountAssistantMeta get accountAssistantMeta => $_getN(0);
  @$pb.TagNumber(1)
  set accountAssistantMeta($6.AccountAssistantMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAssistantMeta() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAssistantMeta() => clearField(1);
  @$pb.TagNumber(1)
  $6.AccountAssistantMeta ensureAccountAssistantMeta() => $_ensure(0);

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

