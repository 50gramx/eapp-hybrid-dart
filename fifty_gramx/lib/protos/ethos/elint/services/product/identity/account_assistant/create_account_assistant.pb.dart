///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/create_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../account/access_account.pb.dart' as $0;
import 'access_account_assistant.pb.dart' as $13;
import '../../../../entities/generic.pb.dart' as $2;

class CreateAccountAssistantRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateAccountAssistantRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantName')
    ..hasRequiredFields = false
  ;

  CreateAccountAssistantRequest._() : super();
  factory CreateAccountAssistantRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $core.String? accountAssistantName,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (accountAssistantName != null) {
      _result.accountAssistantName = accountAssistantName;
    }
    return _result;
  }
  factory CreateAccountAssistantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateAccountAssistantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateAccountAssistantRequest clone() => CreateAccountAssistantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateAccountAssistantRequest copyWith(void Function(CreateAccountAssistantRequest) updates) => super.copyWith((message) => updates(message as CreateAccountAssistantRequest)) as CreateAccountAssistantRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAccountAssistantRequest create() => CreateAccountAssistantRequest._();
  CreateAccountAssistantRequest createEmptyInstance() => create();
  static $pb.PbList<CreateAccountAssistantRequest> createRepeated() => $pb.PbList<CreateAccountAssistantRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateAccountAssistantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAccountAssistantRequest>(create);
  static CreateAccountAssistantRequest? _defaultInstance;

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
  $core.String get accountAssistantName => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountAssistantName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountAssistantName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountAssistantName() => clearField(2);
}

class CreateAccountAssistantResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateAccountAssistantResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOM<$13.AccountAssistantServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantServicesAccessAuthDetails', subBuilder: $13.AccountAssistantServicesAccessAuthDetails.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  CreateAccountAssistantResponse._() : super();
  factory CreateAccountAssistantResponse({
    $13.AccountAssistantServicesAccessAuthDetails? accountAssistantServicesAccessAuthDetails,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (accountAssistantServicesAccessAuthDetails != null) {
      _result.accountAssistantServicesAccessAuthDetails = accountAssistantServicesAccessAuthDetails;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory CreateAccountAssistantResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateAccountAssistantResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateAccountAssistantResponse clone() => CreateAccountAssistantResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateAccountAssistantResponse copyWith(void Function(CreateAccountAssistantResponse) updates) => super.copyWith((message) => updates(message as CreateAccountAssistantResponse)) as CreateAccountAssistantResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAccountAssistantResponse create() => CreateAccountAssistantResponse._();
  CreateAccountAssistantResponse createEmptyInstance() => create();
  static $pb.PbList<CreateAccountAssistantResponse> createRepeated() => $pb.PbList<CreateAccountAssistantResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateAccountAssistantResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAccountAssistantResponse>(create);
  static CreateAccountAssistantResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $13.AccountAssistantServicesAccessAuthDetails get accountAssistantServicesAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accountAssistantServicesAccessAuthDetails($13.AccountAssistantServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAssistantServicesAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAssistantServicesAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $13.AccountAssistantServicesAccessAuthDetails ensureAccountAssistantServicesAccessAuthDetails() => $_ensure(0);

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

class GetAccountAssistantNameCodeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountAssistantNameCodeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantName')
    ..hasRequiredFields = false
  ;

  GetAccountAssistantNameCodeRequest._() : super();
  factory GetAccountAssistantNameCodeRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $core.String? accountAssistantName,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (accountAssistantName != null) {
      _result.accountAssistantName = accountAssistantName;
    }
    return _result;
  }
  factory GetAccountAssistantNameCodeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountAssistantNameCodeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountAssistantNameCodeRequest clone() => GetAccountAssistantNameCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountAssistantNameCodeRequest copyWith(void Function(GetAccountAssistantNameCodeRequest) updates) => super.copyWith((message) => updates(message as GetAccountAssistantNameCodeRequest)) as GetAccountAssistantNameCodeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountAssistantNameCodeRequest create() => GetAccountAssistantNameCodeRequest._();
  GetAccountAssistantNameCodeRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountAssistantNameCodeRequest> createRepeated() => $pb.PbList<GetAccountAssistantNameCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAccountAssistantNameCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountAssistantNameCodeRequest>(create);
  static GetAccountAssistantNameCodeRequest? _defaultInstance;

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
  $core.String get accountAssistantName => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountAssistantName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountAssistantName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountAssistantName() => clearField(2);
}

class GetAccountAssistantNameCodeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountAssistantNameCodeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantNameCode', $pb.PbFieldType.O3)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetAccountAssistantNameCodeResponse._() : super();
  factory GetAccountAssistantNameCodeResponse({
    $core.int? accountAssistantNameCode,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (accountAssistantNameCode != null) {
      _result.accountAssistantNameCode = accountAssistantNameCode;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetAccountAssistantNameCodeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountAssistantNameCodeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountAssistantNameCodeResponse clone() => GetAccountAssistantNameCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountAssistantNameCodeResponse copyWith(void Function(GetAccountAssistantNameCodeResponse) updates) => super.copyWith((message) => updates(message as GetAccountAssistantNameCodeResponse)) as GetAccountAssistantNameCodeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountAssistantNameCodeResponse create() => GetAccountAssistantNameCodeResponse._();
  GetAccountAssistantNameCodeResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountAssistantNameCodeResponse> createRepeated() => $pb.PbList<GetAccountAssistantNameCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountAssistantNameCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountAssistantNameCodeResponse>(create);
  static GetAccountAssistantNameCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get accountAssistantNameCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set accountAssistantNameCode($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAssistantNameCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAssistantNameCode() => clearField(1);

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

