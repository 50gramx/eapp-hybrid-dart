///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/connect_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../../../google/protobuf/any.pb.dart' as $51;
import '../../../../entities/account.pb.dart' as $19;
import '../../../../entities/generic.pb.dart' as $2;
import 'access_account.pb.dart' as $0;

import 'connect_account.pbenum.dart';

export 'connect_account.pbenum.dart';

class ConnectedAssistantWithBelongingEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectedAssistantWithBelongingEntity', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..e<ConnectedAssistantBelongsTo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAssistantBelongsTo', $pb.PbFieldType.OE, defaultOrMaker: ConnectedAssistantBelongsTo.ACCOUNT, valueOf: ConnectedAssistantBelongsTo.valueOf, enumValues: ConnectedAssistantBelongsTo.values)
    ..aOM<$51.Any>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAssistant', subBuilder: $51.Any.create)
    ..aOM<$51.Any>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'assistant', subBuilder: $51.Any.create)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isConnectedToBelongingEntity')
    ..aOM<$51.Any>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedEntity', subBuilder: $51.Any.create)
    ..aOM<$51.Any>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'belongingEntityMeta', subBuilder: $51.Any.create)
    ..aOM<$51.Any>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'belongingEntity', subBuilder: $51.Any.create)
    ..hasRequiredFields = false
  ;

  ConnectedAssistantWithBelongingEntity._() : super();
  factory ConnectedAssistantWithBelongingEntity({
    ConnectedAssistantBelongsTo? connectedAssistantBelongsTo,
    $51.Any? connectedAssistant,
    $51.Any? assistant,
    $core.bool? isConnectedToBelongingEntity,
    $51.Any? connectedEntity,
    $51.Any? belongingEntityMeta,
    $51.Any? belongingEntity,
  }) {
    final _result = create();
    if (connectedAssistantBelongsTo != null) {
      _result.connectedAssistantBelongsTo = connectedAssistantBelongsTo;
    }
    if (connectedAssistant != null) {
      _result.connectedAssistant = connectedAssistant;
    }
    if (assistant != null) {
      _result.assistant = assistant;
    }
    if (isConnectedToBelongingEntity != null) {
      _result.isConnectedToBelongingEntity = isConnectedToBelongingEntity;
    }
    if (connectedEntity != null) {
      _result.connectedEntity = connectedEntity;
    }
    if (belongingEntityMeta != null) {
      _result.belongingEntityMeta = belongingEntityMeta;
    }
    if (belongingEntity != null) {
      _result.belongingEntity = belongingEntity;
    }
    return _result;
  }
  factory ConnectedAssistantWithBelongingEntity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectedAssistantWithBelongingEntity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectedAssistantWithBelongingEntity clone() => ConnectedAssistantWithBelongingEntity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectedAssistantWithBelongingEntity copyWith(void Function(ConnectedAssistantWithBelongingEntity) updates) => super.copyWith((message) => updates(message as ConnectedAssistantWithBelongingEntity)) as ConnectedAssistantWithBelongingEntity; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectedAssistantWithBelongingEntity create() => ConnectedAssistantWithBelongingEntity._();
  ConnectedAssistantWithBelongingEntity createEmptyInstance() => create();
  static $pb.PbList<ConnectedAssistantWithBelongingEntity> createRepeated() => $pb.PbList<ConnectedAssistantWithBelongingEntity>();
  @$core.pragma('dart2js:noInline')
  static ConnectedAssistantWithBelongingEntity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectedAssistantWithBelongingEntity>(create);
  static ConnectedAssistantWithBelongingEntity? _defaultInstance;

  @$pb.TagNumber(1)
  ConnectedAssistantBelongsTo get connectedAssistantBelongsTo => $_getN(0);
  @$pb.TagNumber(1)
  set connectedAssistantBelongsTo(ConnectedAssistantBelongsTo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectedAssistantBelongsTo() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectedAssistantBelongsTo() => clearField(1);

  @$pb.TagNumber(2)
  $51.Any get connectedAssistant => $_getN(1);
  @$pb.TagNumber(2)
  set connectedAssistant($51.Any v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectedAssistant() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectedAssistant() => clearField(2);
  @$pb.TagNumber(2)
  $51.Any ensureConnectedAssistant() => $_ensure(1);

  @$pb.TagNumber(3)
  $51.Any get assistant => $_getN(2);
  @$pb.TagNumber(3)
  set assistant($51.Any v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAssistant() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssistant() => clearField(3);
  @$pb.TagNumber(3)
  $51.Any ensureAssistant() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get isConnectedToBelongingEntity => $_getBF(3);
  @$pb.TagNumber(4)
  set isConnectedToBelongingEntity($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsConnectedToBelongingEntity() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsConnectedToBelongingEntity() => clearField(4);

  @$pb.TagNumber(5)
  $51.Any get connectedEntity => $_getN(4);
  @$pb.TagNumber(5)
  set connectedEntity($51.Any v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasConnectedEntity() => $_has(4);
  @$pb.TagNumber(5)
  void clearConnectedEntity() => clearField(5);
  @$pb.TagNumber(5)
  $51.Any ensureConnectedEntity() => $_ensure(4);

  @$pb.TagNumber(6)
  $51.Any get belongingEntityMeta => $_getN(5);
  @$pb.TagNumber(6)
  set belongingEntityMeta($51.Any v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasBelongingEntityMeta() => $_has(5);
  @$pb.TagNumber(6)
  void clearBelongingEntityMeta() => clearField(6);
  @$pb.TagNumber(6)
  $51.Any ensureBelongingEntityMeta() => $_ensure(5);

  @$pb.TagNumber(7)
  $51.Any get belongingEntity => $_getN(6);
  @$pb.TagNumber(7)
  set belongingEntity($51.Any v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasBelongingEntity() => $_has(6);
  @$pb.TagNumber(7)
  void clearBelongingEntity() => clearField(7);
  @$pb.TagNumber(7)
  $51.Any ensureBelongingEntity() => $_ensure(6);
}

class GetAccountSelfConnectedAccountAssistantResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountSelfConnectedAccountAssistantResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$19.AccountConnectedAccountAssistant>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccountAssistant', subBuilder: $19.AccountConnectedAccountAssistant.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetAccountSelfConnectedAccountAssistantResponse._() : super();
  factory GetAccountSelfConnectedAccountAssistantResponse({
    $19.AccountConnectedAccountAssistant? connectedAccountAssistant,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (connectedAccountAssistant != null) {
      _result.connectedAccountAssistant = connectedAccountAssistant;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetAccountSelfConnectedAccountAssistantResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountSelfConnectedAccountAssistantResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountSelfConnectedAccountAssistantResponse clone() => GetAccountSelfConnectedAccountAssistantResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountSelfConnectedAccountAssistantResponse copyWith(void Function(GetAccountSelfConnectedAccountAssistantResponse) updates) => super.copyWith((message) => updates(message as GetAccountSelfConnectedAccountAssistantResponse)) as GetAccountSelfConnectedAccountAssistantResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountSelfConnectedAccountAssistantResponse create() => GetAccountSelfConnectedAccountAssistantResponse._();
  GetAccountSelfConnectedAccountAssistantResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountSelfConnectedAccountAssistantResponse> createRepeated() => $pb.PbList<GetAccountSelfConnectedAccountAssistantResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountSelfConnectedAccountAssistantResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountSelfConnectedAccountAssistantResponse>(create);
  static GetAccountSelfConnectedAccountAssistantResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $19.AccountConnectedAccountAssistant get connectedAccountAssistant => $_getN(0);
  @$pb.TagNumber(1)
  set connectedAccountAssistant($19.AccountConnectedAccountAssistant v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectedAccountAssistant() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectedAccountAssistant() => clearField(1);
  @$pb.TagNumber(1)
  $19.AccountConnectedAccountAssistant ensureConnectedAccountAssistant() => $_ensure(0);

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

class ConnectedAssistantsWithBelongingEntity extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectedAssistantsWithBelongingEntity', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<ConnectedAssistantWithBelongingEntity>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAssistantWithBelongingEntity', subBuilder: ConnectedAssistantWithBelongingEntity.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ConnectedAssistantsWithBelongingEntity._() : super();
  factory ConnectedAssistantsWithBelongingEntity({
    ConnectedAssistantWithBelongingEntity? connectedAssistantWithBelongingEntity,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (connectedAssistantWithBelongingEntity != null) {
      _result.connectedAssistantWithBelongingEntity = connectedAssistantWithBelongingEntity;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory ConnectedAssistantsWithBelongingEntity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectedAssistantsWithBelongingEntity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectedAssistantsWithBelongingEntity clone() => ConnectedAssistantsWithBelongingEntity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectedAssistantsWithBelongingEntity copyWith(void Function(ConnectedAssistantsWithBelongingEntity) updates) => super.copyWith((message) => updates(message as ConnectedAssistantsWithBelongingEntity)) as ConnectedAssistantsWithBelongingEntity; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectedAssistantsWithBelongingEntity create() => ConnectedAssistantsWithBelongingEntity._();
  ConnectedAssistantsWithBelongingEntity createEmptyInstance() => create();
  static $pb.PbList<ConnectedAssistantsWithBelongingEntity> createRepeated() => $pb.PbList<ConnectedAssistantsWithBelongingEntity>();
  @$core.pragma('dart2js:noInline')
  static ConnectedAssistantsWithBelongingEntity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectedAssistantsWithBelongingEntity>(create);
  static ConnectedAssistantsWithBelongingEntity? _defaultInstance;

  @$pb.TagNumber(1)
  ConnectedAssistantWithBelongingEntity get connectedAssistantWithBelongingEntity => $_getN(0);
  @$pb.TagNumber(1)
  set connectedAssistantWithBelongingEntity(ConnectedAssistantWithBelongingEntity v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectedAssistantWithBelongingEntity() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectedAssistantWithBelongingEntity() => clearField(1);
  @$pb.TagNumber(1)
  ConnectedAssistantWithBelongingEntity ensureConnectedAssistantWithBelongingEntity() => $_ensure(0);

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

class ConnectedAccountAssistants extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectedAccountAssistants', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..pc<$19.AccountConnectedAccountAssistant>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccountAssistants', $pb.PbFieldType.PM, subBuilder: $19.AccountConnectedAccountAssistant.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ConnectedAccountAssistants._() : super();
  factory ConnectedAccountAssistants({
    $core.Iterable<$19.AccountConnectedAccountAssistant>? connectedAccountAssistants,
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
  $core.List<$19.AccountConnectedAccountAssistant> get connectedAccountAssistants => $_getList(0);

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
    ..pc<$19.AccountConnectedAccount>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccounts', $pb.PbFieldType.PM, subBuilder: $19.AccountConnectedAccount.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ConnectedAccounts._() : super();
  factory ConnectedAccounts({
    $core.Iterable<$19.AccountConnectedAccount>? connectedAccounts,
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
  $core.List<$19.AccountConnectedAccount> get connectedAccounts => $_getList(0);

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

class GetConnectedAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetConnectedAccountRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..hasRequiredFields = false
  ;

  GetConnectedAccountRequest._() : super();
  factory GetConnectedAccountRequest({
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
  factory GetConnectedAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectedAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectedAccountRequest clone() => GetConnectedAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectedAccountRequest copyWith(void Function(GetConnectedAccountRequest) updates) => super.copyWith((message) => updates(message as GetConnectedAccountRequest)) as GetConnectedAccountRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConnectedAccountRequest create() => GetConnectedAccountRequest._();
  GetConnectedAccountRequest createEmptyInstance() => create();
  static $pb.PbList<GetConnectedAccountRequest> createRepeated() => $pb.PbList<GetConnectedAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static GetConnectedAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectedAccountRequest>(create);
  static GetConnectedAccountRequest? _defaultInstance;

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

class GetConnectedAccountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetConnectedAccountResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$19.AccountConnectedAccount>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $19.AccountConnectedAccount.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetConnectedAccountResponse._() : super();
  factory GetConnectedAccountResponse({
    $19.AccountConnectedAccount? connectedAccount,
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
  factory GetConnectedAccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectedAccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectedAccountResponse clone() => GetConnectedAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectedAccountResponse copyWith(void Function(GetConnectedAccountResponse) updates) => super.copyWith((message) => updates(message as GetConnectedAccountResponse)) as GetConnectedAccountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConnectedAccountResponse create() => GetConnectedAccountResponse._();
  GetConnectedAccountResponse createEmptyInstance() => create();
  static $pb.PbList<GetConnectedAccountResponse> createRepeated() => $pb.PbList<GetConnectedAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static GetConnectedAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectedAccountResponse>(create);
  static GetConnectedAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $19.AccountConnectedAccount get connectedAccount => $_getN(0);
  @$pb.TagNumber(1)
  set connectedAccount($19.AccountConnectedAccount v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectedAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectedAccount() => clearField(1);
  @$pb.TagNumber(1)
  $19.AccountConnectedAccount ensureConnectedAccount() => $_ensure(0);

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

class GetConnectedAccountAssistantRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetConnectedAccountAssistantRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantId')
    ..hasRequiredFields = false
  ;

  GetConnectedAccountAssistantRequest._() : super();
  factory GetConnectedAccountAssistantRequest({
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
  factory GetConnectedAccountAssistantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectedAccountAssistantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectedAccountAssistantRequest clone() => GetConnectedAccountAssistantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectedAccountAssistantRequest copyWith(void Function(GetConnectedAccountAssistantRequest) updates) => super.copyWith((message) => updates(message as GetConnectedAccountAssistantRequest)) as GetConnectedAccountAssistantRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConnectedAccountAssistantRequest create() => GetConnectedAccountAssistantRequest._();
  GetConnectedAccountAssistantRequest createEmptyInstance() => create();
  static $pb.PbList<GetConnectedAccountAssistantRequest> createRepeated() => $pb.PbList<GetConnectedAccountAssistantRequest>();
  @$core.pragma('dart2js:noInline')
  static GetConnectedAccountAssistantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectedAccountAssistantRequest>(create);
  static GetConnectedAccountAssistantRequest? _defaultInstance;

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

class GetConnectedAccountAssistantResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetConnectedAccountAssistantResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$19.AccountConnectedAccountAssistant>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccountAssistant', subBuilder: $19.AccountConnectedAccountAssistant.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetConnectedAccountAssistantResponse._() : super();
  factory GetConnectedAccountAssistantResponse({
    $19.AccountConnectedAccountAssistant? connectedAccountAssistant,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (connectedAccountAssistant != null) {
      _result.connectedAccountAssistant = connectedAccountAssistant;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetConnectedAccountAssistantResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetConnectedAccountAssistantResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetConnectedAccountAssistantResponse clone() => GetConnectedAccountAssistantResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetConnectedAccountAssistantResponse copyWith(void Function(GetConnectedAccountAssistantResponse) updates) => super.copyWith((message) => updates(message as GetConnectedAccountAssistantResponse)) as GetConnectedAccountAssistantResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetConnectedAccountAssistantResponse create() => GetConnectedAccountAssistantResponse._();
  GetConnectedAccountAssistantResponse createEmptyInstance() => create();
  static $pb.PbList<GetConnectedAccountAssistantResponse> createRepeated() => $pb.PbList<GetConnectedAccountAssistantResponse>();
  @$core.pragma('dart2js:noInline')
  static GetConnectedAccountAssistantResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetConnectedAccountAssistantResponse>(create);
  static GetConnectedAccountAssistantResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $19.AccountConnectedAccountAssistant get connectedAccountAssistant => $_getN(0);
  @$pb.TagNumber(1)
  set connectedAccountAssistant($19.AccountConnectedAccountAssistant v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectedAccountAssistant() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectedAccountAssistant() => clearField(1);
  @$pb.TagNumber(1)
  $19.AccountConnectedAccountAssistant ensureConnectedAccountAssistant() => $_ensure(0);

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

class IsAccountConnectionExistsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsAccountConnectionExistsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..hasRequiredFields = false
  ;

  IsAccountConnectionExistsRequest._() : super();
  factory IsAccountConnectionExistsRequest({
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
  factory IsAccountConnectionExistsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsAccountConnectionExistsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsAccountConnectionExistsRequest clone() => IsAccountConnectionExistsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsAccountConnectionExistsRequest copyWith(void Function(IsAccountConnectionExistsRequest) updates) => super.copyWith((message) => updates(message as IsAccountConnectionExistsRequest)) as IsAccountConnectionExistsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsAccountConnectionExistsRequest create() => IsAccountConnectionExistsRequest._();
  IsAccountConnectionExistsRequest createEmptyInstance() => create();
  static $pb.PbList<IsAccountConnectionExistsRequest> createRepeated() => $pb.PbList<IsAccountConnectionExistsRequest>();
  @$core.pragma('dart2js:noInline')
  static IsAccountConnectionExistsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsAccountConnectionExistsRequest>(create);
  static IsAccountConnectionExistsRequest? _defaultInstance;

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

class IsAccountAssistantConnectionExistsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsAccountAssistantConnectionExistsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantId')
    ..hasRequiredFields = false
  ;

  IsAccountAssistantConnectionExistsRequest._() : super();
  factory IsAccountAssistantConnectionExistsRequest({
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
  factory IsAccountAssistantConnectionExistsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsAccountAssistantConnectionExistsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsAccountAssistantConnectionExistsRequest clone() => IsAccountAssistantConnectionExistsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsAccountAssistantConnectionExistsRequest copyWith(void Function(IsAccountAssistantConnectionExistsRequest) updates) => super.copyWith((message) => updates(message as IsAccountAssistantConnectionExistsRequest)) as IsAccountAssistantConnectionExistsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsAccountAssistantConnectionExistsRequest create() => IsAccountAssistantConnectionExistsRequest._();
  IsAccountAssistantConnectionExistsRequest createEmptyInstance() => create();
  static $pb.PbList<IsAccountAssistantConnectionExistsRequest> createRepeated() => $pb.PbList<IsAccountAssistantConnectionExistsRequest>();
  @$core.pragma('dart2js:noInline')
  static IsAccountAssistantConnectionExistsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsAccountAssistantConnectionExistsRequest>(create);
  static IsAccountAssistantConnectionExistsRequest? _defaultInstance;

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

class IsAccountAssistantConnectedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsAccountAssistantConnectedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOM<$19.AccountConnectedAccountAssistant>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccountAssistant', subBuilder: $19.AccountConnectedAccountAssistant.create)
    ..hasRequiredFields = false
  ;

  IsAccountAssistantConnectedRequest._() : super();
  factory IsAccountAssistantConnectedRequest({
    $core.String? accountId,
    $19.AccountConnectedAccountAssistant? connectedAccountAssistant,
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
  $19.AccountConnectedAccountAssistant get connectedAccountAssistant => $_getN(1);
  @$pb.TagNumber(2)
  set connectedAccountAssistant($19.AccountConnectedAccountAssistant v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectedAccountAssistant() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectedAccountAssistant() => clearField(2);
  @$pb.TagNumber(2)
  $19.AccountConnectedAccountAssistant ensureConnectedAccountAssistant() => $_ensure(1);
}

class IsAccountConnectedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsAccountConnectedRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOM<$19.AccountConnectedAccount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $19.AccountConnectedAccount.create)
    ..hasRequiredFields = false
  ;

  IsAccountConnectedRequest._() : super();
  factory IsAccountConnectedRequest({
    $core.String? accountId,
    $19.AccountConnectedAccount? connectedAccount,
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
  $19.AccountConnectedAccount get connectedAccount => $_getN(1);
  @$pb.TagNumber(2)
  set connectedAccount($19.AccountConnectedAccount v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectedAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectedAccount() => clearField(2);
  @$pb.TagNumber(2)
  $19.AccountConnectedAccount ensureConnectedAccount() => $_ensure(1);
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
    ..pc<$19.AccountMobile>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobiles', $pb.PbFieldType.PM, subBuilder: $19.AccountMobile.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ParseAccountMobilesResponse._() : super();
  factory ParseAccountMobilesResponse({
    $core.Iterable<$19.AccountMobile>? accountMobiles,
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
  $core.List<$19.AccountMobile> get accountMobiles => $_getList(0);

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

class ParseStreamingAccountMobilesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ParseStreamingAccountMobilesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectingAccountMobileNumbers')
    ..hasRequiredFields = false
  ;

  ParseStreamingAccountMobilesRequest._() : super();
  factory ParseStreamingAccountMobilesRequest({
    $core.Iterable<$core.String>? connectingAccountMobileNumbers,
  }) {
    final _result = create();
    if (connectingAccountMobileNumbers != null) {
      _result.connectingAccountMobileNumbers.addAll(connectingAccountMobileNumbers);
    }
    return _result;
  }
  factory ParseStreamingAccountMobilesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParseStreamingAccountMobilesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParseStreamingAccountMobilesRequest clone() => ParseStreamingAccountMobilesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParseStreamingAccountMobilesRequest copyWith(void Function(ParseStreamingAccountMobilesRequest) updates) => super.copyWith((message) => updates(message as ParseStreamingAccountMobilesRequest)) as ParseStreamingAccountMobilesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ParseStreamingAccountMobilesRequest create() => ParseStreamingAccountMobilesRequest._();
  ParseStreamingAccountMobilesRequest createEmptyInstance() => create();
  static $pb.PbList<ParseStreamingAccountMobilesRequest> createRepeated() => $pb.PbList<ParseStreamingAccountMobilesRequest>();
  @$core.pragma('dart2js:noInline')
  static ParseStreamingAccountMobilesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParseStreamingAccountMobilesRequest>(create);
  static ParseStreamingAccountMobilesRequest? _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.String> get connectingAccountMobileNumbers => $_getList(0);
}

class ParseStreamingAccountMobilesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ParseStreamingAccountMobilesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..pc<$19.AccountMobile>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobiles', $pb.PbFieldType.PM, subBuilder: $19.AccountMobile.create)
    ..hasRequiredFields = false
  ;

  ParseStreamingAccountMobilesResponse._() : super();
  factory ParseStreamingAccountMobilesResponse({
    $core.Iterable<$19.AccountMobile>? accountMobiles,
  }) {
    final _result = create();
    if (accountMobiles != null) {
      _result.accountMobiles.addAll(accountMobiles);
    }
    return _result;
  }
  factory ParseStreamingAccountMobilesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParseStreamingAccountMobilesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParseStreamingAccountMobilesResponse clone() => ParseStreamingAccountMobilesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParseStreamingAccountMobilesResponse copyWith(void Function(ParseStreamingAccountMobilesResponse) updates) => super.copyWith((message) => updates(message as ParseStreamingAccountMobilesResponse)) as ParseStreamingAccountMobilesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ParseStreamingAccountMobilesResponse create() => ParseStreamingAccountMobilesResponse._();
  ParseStreamingAccountMobilesResponse createEmptyInstance() => create();
  static $pb.PbList<ParseStreamingAccountMobilesResponse> createRepeated() => $pb.PbList<ParseStreamingAccountMobilesResponse>();
  @$core.pragma('dart2js:noInline')
  static ParseStreamingAccountMobilesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParseStreamingAccountMobilesResponse>(create);
  static ParseStreamingAccountMobilesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$19.AccountMobile> get accountMobiles => $_getList(0);
}

class SyncAccountConnectionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncAccountConnectionsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOM<$19.AccountMobile>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectingAccountMobile', subBuilder: $19.AccountMobile.create)
    ..hasRequiredFields = false
  ;

  SyncAccountConnectionsRequest._() : super();
  factory SyncAccountConnectionsRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $19.AccountMobile? connectingAccountMobile,
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
  $19.AccountMobile get connectingAccountMobile => $_getN(1);
  @$pb.TagNumber(2)
  set connectingAccountMobile($19.AccountMobile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectingAccountMobile() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectingAccountMobile() => clearField(2);
  @$pb.TagNumber(2)
  $19.AccountMobile ensureConnectingAccountMobile() => $_ensure(1);
}

class SyncAccountConnectionsResponse_ConnectedAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncAccountConnectionsResponse.ConnectedAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$19.AccountConnectedAccount>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $19.AccountConnectedAccount.create)
    ..aOM<$19.AccountMobile>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccountMobile', subBuilder: $19.AccountMobile.create)
    ..hasRequiredFields = false
  ;

  SyncAccountConnectionsResponse_ConnectedAccount._() : super();
  factory SyncAccountConnectionsResponse_ConnectedAccount({
    $19.AccountConnectedAccount? connectedAccount,
    $19.AccountMobile? connectedAccountMobile,
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
  $19.AccountConnectedAccount get connectedAccount => $_getN(0);
  @$pb.TagNumber(1)
  set connectedAccount($19.AccountConnectedAccount v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectedAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectedAccount() => clearField(1);
  @$pb.TagNumber(1)
  $19.AccountConnectedAccount ensureConnectedAccount() => $_ensure(0);

  @$pb.TagNumber(2)
  $19.AccountMobile get connectedAccountMobile => $_getN(1);
  @$pb.TagNumber(2)
  set connectedAccountMobile($19.AccountMobile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectedAccountMobile() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectedAccountMobile() => clearField(2);
  @$pb.TagNumber(2)
  $19.AccountMobile ensureConnectedAccountMobile() => $_ensure(1);
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
    ..aOM<$19.AccountConnectedAccount>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $19.AccountConnectedAccount.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ConnectAccountResponse._() : super();
  factory ConnectAccountResponse({
    $19.AccountConnectedAccount? connectedAccount,
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
  $19.AccountConnectedAccount get connectedAccount => $_getN(0);
  @$pb.TagNumber(1)
  set connectedAccount($19.AccountConnectedAccount v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnectedAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectedAccount() => clearField(1);
  @$pb.TagNumber(1)
  $19.AccountConnectedAccount ensureConnectedAccount() => $_ensure(0);

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

class ToggleAccountConnectAccountInterestRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ToggleAccountConnectAccountInterestRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOM<$19.AccountConnectedAccount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $19.AccountConnectedAccount.create)
    ..hasRequiredFields = false
  ;

  ToggleAccountConnectAccountInterestRequest._() : super();
  factory ToggleAccountConnectAccountInterestRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $19.AccountConnectedAccount? connectedAccount,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (connectedAccount != null) {
      _result.connectedAccount = connectedAccount;
    }
    return _result;
  }
  factory ToggleAccountConnectAccountInterestRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ToggleAccountConnectAccountInterestRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ToggleAccountConnectAccountInterestRequest clone() => ToggleAccountConnectAccountInterestRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ToggleAccountConnectAccountInterestRequest copyWith(void Function(ToggleAccountConnectAccountInterestRequest) updates) => super.copyWith((message) => updates(message as ToggleAccountConnectAccountInterestRequest)) as ToggleAccountConnectAccountInterestRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ToggleAccountConnectAccountInterestRequest create() => ToggleAccountConnectAccountInterestRequest._();
  ToggleAccountConnectAccountInterestRequest createEmptyInstance() => create();
  static $pb.PbList<ToggleAccountConnectAccountInterestRequest> createRepeated() => $pb.PbList<ToggleAccountConnectAccountInterestRequest>();
  @$core.pragma('dart2js:noInline')
  static ToggleAccountConnectAccountInterestRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ToggleAccountConnectAccountInterestRequest>(create);
  static ToggleAccountConnectAccountInterestRequest? _defaultInstance;

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
  $19.AccountConnectedAccount get connectedAccount => $_getN(1);
  @$pb.TagNumber(2)
  set connectedAccount($19.AccountConnectedAccount v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectedAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectedAccount() => clearField(2);
  @$pb.TagNumber(2)
  $19.AccountConnectedAccount ensureConnectedAccount() => $_ensure(1);
}

