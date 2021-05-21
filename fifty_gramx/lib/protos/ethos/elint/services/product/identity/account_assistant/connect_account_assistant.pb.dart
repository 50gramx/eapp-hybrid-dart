///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/connect_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/account_assistant.pb.dart' as $6;
import 'access_account_assistant.pb.dart' as $13;
import '../../../../entities/generic.pb.dart' as $2;

class IsAccountConnectedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsAccountConnectedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantId')
    ..aOM<$6.AccountAssistantConnectedAccount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $6.AccountAssistantConnectedAccount.create)
    ..hasRequiredFields = false
  ;

  IsAccountConnectedRequest._() : super();
  factory IsAccountConnectedRequest({
    $core.String? accountAssistantId,
    $6.AccountAssistantConnectedAccount? connectedAccount,
  }) {
    final _result = create();
    if (accountAssistantId != null) {
      _result.accountAssistantId = accountAssistantId;
    }
    if (connectedAccount != null) {
      _result.connectedAccount = connectedAccount;
    }
    return _result;
  }
  factory IsAccountConnectedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsAccountConnectedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsAccountConnectedRequest clone() => IsAccountConnectedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsAccountConnectedRequest copyWith(void Function(IsAccountConnectedRequest) updates) => super.copyWith((message) => updates(message as IsAccountConnectedRequest)) as IsAccountConnectedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsAccountConnectedRequest create() => IsAccountConnectedRequest._();
  IsAccountConnectedRequest createEmptyInstance() => create();
  static $pb.PbList<IsAccountConnectedRequest> createRepeated() => $pb.PbList<IsAccountConnectedRequest>();
  @$core.pragma('dart2js:noInline')
  static IsAccountConnectedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsAccountConnectedRequest>(create);
  static IsAccountConnectedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountAssistantId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountAssistantId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAssistantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAssistantId() => clearField(1);

  @$pb.TagNumber(2)
  $6.AccountAssistantConnectedAccount get connectedAccount => $_getN(1);
  @$pb.TagNumber(2)
  set connectedAccount($6.AccountAssistantConnectedAccount v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectedAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectedAccount() => clearField(2);
  @$pb.TagNumber(2)
  $6.AccountAssistantConnectedAccount ensureConnectedAccount() => $_ensure(1);
}

class ConnectAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectAccountRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOM<$13.AccountAssistantServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $13.AccountAssistantServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectingAccountId')
    ..hasRequiredFields = false
  ;

  ConnectAccountRequest._() : super();
  factory ConnectAccountRequest({
    $13.AccountAssistantServicesAccessAuthDetails? accessAuthDetails,
    $core.String? connectingAccountId,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (connectingAccountId != null) {
      _result.connectingAccountId = connectingAccountId;
    }
    return _result;
  }
  factory ConnectAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectAccountRequest clone() => ConnectAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectAccountRequest copyWith(void Function(ConnectAccountRequest) updates) => super.copyWith((message) => updates(message as ConnectAccountRequest)) as ConnectAccountRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectAccountRequest create() => ConnectAccountRequest._();
  ConnectAccountRequest createEmptyInstance() => create();
  static $pb.PbList<ConnectAccountRequest> createRepeated() => $pb.PbList<ConnectAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static ConnectAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectAccountRequest>(create);
  static ConnectAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $13.AccountAssistantServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails($13.AccountAssistantServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $13.AccountAssistantServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get connectingAccountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set connectingAccountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectingAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectingAccountId() => clearField(2);
}

class ConnectAccountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectAccountResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account.assistant'), createEmptyInstance: create)
    ..aOM<$6.AccountAssistantConnectedAccount>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $6.AccountAssistantConnectedAccount.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ConnectAccountResponse._() : super();
  factory ConnectAccountResponse({
    $6.AccountAssistantConnectedAccount? connectedAccount,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (connectedAccount != null) {
      _result.connectedAccount = connectedAccount;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory ConnectAccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectAccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectAccountResponse clone() => ConnectAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectAccountResponse copyWith(void Function(ConnectAccountResponse) updates) => super.copyWith((message) => updates(message as ConnectAccountResponse)) as ConnectAccountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectAccountResponse create() => ConnectAccountResponse._();
  ConnectAccountResponse createEmptyInstance() => create();
  static $pb.PbList<ConnectAccountResponse> createRepeated() => $pb.PbList<ConnectAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static ConnectAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectAccountResponse>(create);
  static ConnectAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $6.AccountAssistantConnectedAccount get connectedAccount => $_getN(0);
  @$pb.TagNumber(1)
  set connectedAccount($6.AccountAssistantConnectedAccount v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectedAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectedAccount() => clearField(1);
  @$pb.TagNumber(1)
  $6.AccountAssistantConnectedAccount ensureConnectedAccount() => $_ensure(0);

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

