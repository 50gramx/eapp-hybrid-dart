///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/connect_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/account.pb.dart' as $21;
import '../../../../entities/generic.pb.dart' as $2;
import 'access_account.pb.dart' as $0;

class ConnectedAccountAssistants extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectedAccountAssistants', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..pc<$21.AccountConnectedAccountAssistant>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccountAssistants', $pb.PbFieldType.PM, subBuilder: $21.AccountConnectedAccountAssistant.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ConnectedAccountAssistants._() : super();
  factory ConnectedAccountAssistants({
    $core.Iterable<$21.AccountConnectedAccountAssistant>? connectedAccountAssistants,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (connectedAccountAssistants != null) {
      _result.connectedAccountAssistants.addAll(connectedAccountAssistants);
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory ConnectedAccountAssistants.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectedAccountAssistants.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectedAccountAssistants clone() => ConnectedAccountAssistants()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectedAccountAssistants copyWith(void Function(ConnectedAccountAssistants) updates) => super.copyWith((message) => updates(message as ConnectedAccountAssistants)) as ConnectedAccountAssistants; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectedAccountAssistants create() => ConnectedAccountAssistants._();
  ConnectedAccountAssistants createEmptyInstance() => create();
  static $pb.PbList<ConnectedAccountAssistants> createRepeated() => $pb.PbList<ConnectedAccountAssistants>();
  @$core.pragma('dart2js:noInline')
  static ConnectedAccountAssistants getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectedAccountAssistants>(create);
  static ConnectedAccountAssistants? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$21.AccountConnectedAccountAssistant> get connectedAccountAssistants => $_getList(0);

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

class ConnectedAccounts extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectedAccounts', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..pc<$21.AccountConnectedAccount>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccounts', $pb.PbFieldType.PM, subBuilder: $21.AccountConnectedAccount.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ConnectedAccounts._() : super();
  factory ConnectedAccounts({
    $core.Iterable<$21.AccountConnectedAccount>? connectedAccounts,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (connectedAccounts != null) {
      _result.connectedAccounts.addAll(connectedAccounts);
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory ConnectedAccounts.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectedAccounts.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectedAccounts clone() => ConnectedAccounts()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectedAccounts copyWith(void Function(ConnectedAccounts) updates) => super.copyWith((message) => updates(message as ConnectedAccounts)) as ConnectedAccounts; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectedAccounts create() => ConnectedAccounts._();
  ConnectedAccounts createEmptyInstance() => create();
  static $pb.PbList<ConnectedAccounts> createRepeated() => $pb.PbList<ConnectedAccounts>();
  @$core.pragma('dart2js:noInline')
  static ConnectedAccounts getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectedAccounts>(create);
  static ConnectedAccounts? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$21.AccountConnectedAccount> get connectedAccounts => $_getList(0);

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

class IsAccountAssistantConnectedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsAccountAssistantConnectedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOM<$21.AccountConnectedAccountAssistant>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccountAssistant', subBuilder: $21.AccountConnectedAccountAssistant.create)
    ..hasRequiredFields = false
  ;

  IsAccountAssistantConnectedRequest._() : super();
  factory IsAccountAssistantConnectedRequest({
    $core.String? accountId,
    $21.AccountConnectedAccountAssistant? connectedAccountAssistant,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (connectedAccountAssistant != null) {
      _result.connectedAccountAssistant = connectedAccountAssistant;
    }
    return _result;
  }
  factory IsAccountAssistantConnectedRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsAccountAssistantConnectedRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsAccountAssistantConnectedRequest clone() => IsAccountAssistantConnectedRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsAccountAssistantConnectedRequest copyWith(void Function(IsAccountAssistantConnectedRequest) updates) => super.copyWith((message) => updates(message as IsAccountAssistantConnectedRequest)) as IsAccountAssistantConnectedRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsAccountAssistantConnectedRequest create() => IsAccountAssistantConnectedRequest._();
  IsAccountAssistantConnectedRequest createEmptyInstance() => create();
  static $pb.PbList<IsAccountAssistantConnectedRequest> createRepeated() => $pb.PbList<IsAccountAssistantConnectedRequest>();
  @$core.pragma('dart2js:noInline')
  static IsAccountAssistantConnectedRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsAccountAssistantConnectedRequest>(create);
  static IsAccountAssistantConnectedRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $21.AccountConnectedAccountAssistant get connectedAccountAssistant => $_getN(1);
  @$pb.TagNumber(2)
  set connectedAccountAssistant($21.AccountConnectedAccountAssistant v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectedAccountAssistant() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectedAccountAssistant() => clearField(2);
  @$pb.TagNumber(2)
  $21.AccountConnectedAccountAssistant ensureConnectedAccountAssistant() => $_ensure(1);
}

class IsAccountConnectedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsAccountConnectedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOM<$21.AccountConnectedAccount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $21.AccountConnectedAccount.create)
    ..hasRequiredFields = false
  ;

  IsAccountConnectedRequest._() : super();
  factory IsAccountConnectedRequest({
    $core.String? accountId,
    $21.AccountConnectedAccount? connectedAccount,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
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
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $21.AccountConnectedAccount get connectedAccount => $_getN(1);
  @$pb.TagNumber(2)
  set connectedAccount($21.AccountConnectedAccount v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectedAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectedAccount() => clearField(2);
  @$pb.TagNumber(2)
  $21.AccountConnectedAccount ensureConnectedAccount() => $_ensure(1);
}

class ParseAccountMobilesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ParseAccountMobilesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectingAccountMobileNumbers')
    ..hasRequiredFields = false
  ;

  ParseAccountMobilesRequest._() : super();
  factory ParseAccountMobilesRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $core.Iterable<$core.String>? connectingAccountMobileNumbers,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (connectingAccountMobileNumbers != null) {
      _result.connectingAccountMobileNumbers.addAll(connectingAccountMobileNumbers);
    }
    return _result;
  }
  factory ParseAccountMobilesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParseAccountMobilesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParseAccountMobilesRequest clone() => ParseAccountMobilesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParseAccountMobilesRequest copyWith(void Function(ParseAccountMobilesRequest) updates) => super.copyWith((message) => updates(message as ParseAccountMobilesRequest)) as ParseAccountMobilesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ParseAccountMobilesRequest create() => ParseAccountMobilesRequest._();
  ParseAccountMobilesRequest createEmptyInstance() => create();
  static $pb.PbList<ParseAccountMobilesRequest> createRepeated() => $pb.PbList<ParseAccountMobilesRequest>();
  @$core.pragma('dart2js:noInline')
  static ParseAccountMobilesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParseAccountMobilesRequest>(create);
  static ParseAccountMobilesRequest? _defaultInstance;

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
  $core.List<$core.String> get connectingAccountMobileNumbers => $_getList(1);
}

class ParseAccountMobilesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ParseAccountMobilesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..pc<$21.AccountMobile>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobiles', $pb.PbFieldType.PM, subBuilder: $21.AccountMobile.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ParseAccountMobilesResponse._() : super();
  factory ParseAccountMobilesResponse({
    $core.Iterable<$21.AccountMobile>? accountMobiles,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (accountMobiles != null) {
      _result.accountMobiles.addAll(accountMobiles);
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory ParseAccountMobilesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParseAccountMobilesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParseAccountMobilesResponse clone() => ParseAccountMobilesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParseAccountMobilesResponse copyWith(void Function(ParseAccountMobilesResponse) updates) => super.copyWith((message) => updates(message as ParseAccountMobilesResponse)) as ParseAccountMobilesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ParseAccountMobilesResponse create() => ParseAccountMobilesResponse._();
  ParseAccountMobilesResponse createEmptyInstance() => create();
  static $pb.PbList<ParseAccountMobilesResponse> createRepeated() => $pb.PbList<ParseAccountMobilesResponse>();
  @$core.pragma('dart2js:noInline')
  static ParseAccountMobilesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParseAccountMobilesResponse>(create);
  static ParseAccountMobilesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$21.AccountMobile> get accountMobiles => $_getList(0);

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

class SyncAccountConnectionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncAccountConnectionsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOM<$21.AccountMobile>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectingAccountMobile', subBuilder: $21.AccountMobile.create)
    ..hasRequiredFields = false
  ;

  SyncAccountConnectionsRequest._() : super();
  factory SyncAccountConnectionsRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $21.AccountMobile? connectingAccountMobile,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (connectingAccountMobile != null) {
      _result.connectingAccountMobile = connectingAccountMobile;
    }
    return _result;
  }
  factory SyncAccountConnectionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncAccountConnectionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncAccountConnectionsRequest clone() => SyncAccountConnectionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncAccountConnectionsRequest copyWith(void Function(SyncAccountConnectionsRequest) updates) => super.copyWith((message) => updates(message as SyncAccountConnectionsRequest)) as SyncAccountConnectionsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncAccountConnectionsRequest create() => SyncAccountConnectionsRequest._();
  SyncAccountConnectionsRequest createEmptyInstance() => create();
  static $pb.PbList<SyncAccountConnectionsRequest> createRepeated() => $pb.PbList<SyncAccountConnectionsRequest>();
  @$core.pragma('dart2js:noInline')
  static SyncAccountConnectionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncAccountConnectionsRequest>(create);
  static SyncAccountConnectionsRequest? _defaultInstance;

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
  $21.AccountMobile get connectingAccountMobile => $_getN(1);
  @$pb.TagNumber(2)
  set connectingAccountMobile($21.AccountMobile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectingAccountMobile() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectingAccountMobile() => clearField(2);
  @$pb.TagNumber(2)
  $21.AccountMobile ensureConnectingAccountMobile() => $_ensure(1);
}

class SyncAccountConnectionsResponse_ConnectedAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncAccountConnectionsResponse.ConnectedAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$21.AccountConnectedAccount>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $21.AccountConnectedAccount.create)
    ..aOM<$21.AccountMobile>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccountMobile', subBuilder: $21.AccountMobile.create)
    ..hasRequiredFields = false
  ;

  SyncAccountConnectionsResponse_ConnectedAccount._() : super();
  factory SyncAccountConnectionsResponse_ConnectedAccount({
    $21.AccountConnectedAccount? connectedAccount,
    $21.AccountMobile? connectedAccountMobile,
  }) {
    final _result = create();
    if (connectedAccount != null) {
      _result.connectedAccount = connectedAccount;
    }
    if (connectedAccountMobile != null) {
      _result.connectedAccountMobile = connectedAccountMobile;
    }
    return _result;
  }
  factory SyncAccountConnectionsResponse_ConnectedAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncAccountConnectionsResponse_ConnectedAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncAccountConnectionsResponse_ConnectedAccount clone() => SyncAccountConnectionsResponse_ConnectedAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncAccountConnectionsResponse_ConnectedAccount copyWith(void Function(SyncAccountConnectionsResponse_ConnectedAccount) updates) => super.copyWith((message) => updates(message as SyncAccountConnectionsResponse_ConnectedAccount)) as SyncAccountConnectionsResponse_ConnectedAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncAccountConnectionsResponse_ConnectedAccount create() => SyncAccountConnectionsResponse_ConnectedAccount._();
  SyncAccountConnectionsResponse_ConnectedAccount createEmptyInstance() => create();
  static $pb.PbList<SyncAccountConnectionsResponse_ConnectedAccount> createRepeated() => $pb.PbList<SyncAccountConnectionsResponse_ConnectedAccount>();
  @$core.pragma('dart2js:noInline')
  static SyncAccountConnectionsResponse_ConnectedAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncAccountConnectionsResponse_ConnectedAccount>(create);
  static SyncAccountConnectionsResponse_ConnectedAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $21.AccountConnectedAccount get connectedAccount => $_getN(0);
  @$pb.TagNumber(1)
  set connectedAccount($21.AccountConnectedAccount v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectedAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectedAccount() => clearField(1);
  @$pb.TagNumber(1)
  $21.AccountConnectedAccount ensureConnectedAccount() => $_ensure(0);

  @$pb.TagNumber(2)
  $21.AccountMobile get connectedAccountMobile => $_getN(1);
  @$pb.TagNumber(2)
  set connectedAccountMobile($21.AccountMobile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectedAccountMobile() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectedAccountMobile() => clearField(2);
  @$pb.TagNumber(2)
  $21.AccountMobile ensureConnectedAccountMobile() => $_ensure(1);
}

class SyncAccountConnectionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncAccountConnectionsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<SyncAccountConnectionsResponse_ConnectedAccount>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: SyncAccountConnectionsResponse_ConnectedAccount.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  SyncAccountConnectionsResponse._() : super();
  factory SyncAccountConnectionsResponse({
    SyncAccountConnectionsResponse_ConnectedAccount? connectedAccount,
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
  factory SyncAccountConnectionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncAccountConnectionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncAccountConnectionsResponse clone() => SyncAccountConnectionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncAccountConnectionsResponse copyWith(void Function(SyncAccountConnectionsResponse) updates) => super.copyWith((message) => updates(message as SyncAccountConnectionsResponse)) as SyncAccountConnectionsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncAccountConnectionsResponse create() => SyncAccountConnectionsResponse._();
  SyncAccountConnectionsResponse createEmptyInstance() => create();
  static $pb.PbList<SyncAccountConnectionsResponse> createRepeated() => $pb.PbList<SyncAccountConnectionsResponse>();
  @$core.pragma('dart2js:noInline')
  static SyncAccountConnectionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncAccountConnectionsResponse>(create);
  static SyncAccountConnectionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SyncAccountConnectionsResponse_ConnectedAccount get connectedAccount => $_getN(0);
  @$pb.TagNumber(1)
  set connectedAccount(SyncAccountConnectionsResponse_ConnectedAccount v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectedAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectedAccount() => clearField(1);
  @$pb.TagNumber(1)
  SyncAccountConnectionsResponse_ConnectedAccount ensureConnectedAccount() => $_ensure(0);

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

class ConnectAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectAccountRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectingAccountId')
    ..hasRequiredFields = false
  ;

  ConnectAccountRequest._() : super();
  factory ConnectAccountRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
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
  $core.String get connectingAccountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set connectingAccountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectingAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectingAccountId() => clearField(2);
}

class ConnectAccountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectAccountResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$21.AccountConnectedAccount>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $21.AccountConnectedAccount.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ConnectAccountResponse._() : super();
  factory ConnectAccountResponse({
    $21.AccountConnectedAccount? connectedAccount,
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
  $21.AccountConnectedAccount get connectedAccount => $_getN(0);
  @$pb.TagNumber(1)
  set connectedAccount($21.AccountConnectedAccount v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectedAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectedAccount() => clearField(1);
  @$pb.TagNumber(1)
  $21.AccountConnectedAccount ensureConnectedAccount() => $_ensure(0);

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

