/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/notify_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/account.pb.dart' as $22;
import 'access_account.pb.dart' as $0;

class NewReceivedMessageFromAccountAssistantRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewReceivedMessageFromAccountAssistantRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOM<$22.AccountConnectedAccountAssistant>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccountAssistant', subBuilder: $22.AccountConnectedAccountAssistant.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantReceivedMessageId')
    ..hasRequiredFields = false
  ;

  NewReceivedMessageFromAccountAssistantRequest._() : super();
  factory NewReceivedMessageFromAccountAssistantRequest({
    $core.String? accountId,
    $22.AccountConnectedAccountAssistant? connectedAccountAssistant,
    $core.String? accountAssistantReceivedMessageId,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (connectedAccountAssistant != null) {
      _result.connectedAccountAssistant = connectedAccountAssistant;
    }
    if (accountAssistantReceivedMessageId != null) {
      _result.accountAssistantReceivedMessageId = accountAssistantReceivedMessageId;
    }
    return _result;
  }
  factory NewReceivedMessageFromAccountAssistantRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewReceivedMessageFromAccountAssistantRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewReceivedMessageFromAccountAssistantRequest clone() => NewReceivedMessageFromAccountAssistantRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewReceivedMessageFromAccountAssistantRequest copyWith(void Function(NewReceivedMessageFromAccountAssistantRequest) updates) => super.copyWith((message) => updates(message as NewReceivedMessageFromAccountAssistantRequest)) as NewReceivedMessageFromAccountAssistantRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewReceivedMessageFromAccountAssistantRequest create() => NewReceivedMessageFromAccountAssistantRequest._();
  NewReceivedMessageFromAccountAssistantRequest createEmptyInstance() => create();
  static $pb.PbList<NewReceivedMessageFromAccountAssistantRequest> createRepeated() => $pb.PbList<NewReceivedMessageFromAccountAssistantRequest>();
  @$core.pragma('dart2js:noInline')
  static NewReceivedMessageFromAccountAssistantRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewReceivedMessageFromAccountAssistantRequest>(create);
  static NewReceivedMessageFromAccountAssistantRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $22.AccountConnectedAccountAssistant get connectedAccountAssistant => $_getN(1);
  @$pb.TagNumber(2)
  set connectedAccountAssistant($22.AccountConnectedAccountAssistant v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectedAccountAssistant() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectedAccountAssistant() => clearField(2);
  @$pb.TagNumber(2)
  $22.AccountConnectedAccountAssistant ensureConnectedAccountAssistant() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get accountAssistantReceivedMessageId => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountAssistantReceivedMessageId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountAssistantReceivedMessageId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountAssistantReceivedMessageId() => clearField(3);
}

class NewReceivedMessageFromAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewReceivedMessageFromAccountRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectingAccountId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  NewReceivedMessageFromAccountRequest._() : super();
  factory NewReceivedMessageFromAccountRequest({
    $core.String? accountId,
    $core.String? connectingAccountId,
    $core.String? message,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (connectingAccountId != null) {
      _result.connectingAccountId = connectingAccountId;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory NewReceivedMessageFromAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewReceivedMessageFromAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewReceivedMessageFromAccountRequest clone() => NewReceivedMessageFromAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewReceivedMessageFromAccountRequest copyWith(void Function(NewReceivedMessageFromAccountRequest) updates) => super.copyWith((message) => updates(message as NewReceivedMessageFromAccountRequest)) as NewReceivedMessageFromAccountRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewReceivedMessageFromAccountRequest create() => NewReceivedMessageFromAccountRequest._();
  NewReceivedMessageFromAccountRequest createEmptyInstance() => create();
  static $pb.PbList<NewReceivedMessageFromAccountRequest> createRepeated() => $pb.PbList<NewReceivedMessageFromAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static NewReceivedMessageFromAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewReceivedMessageFromAccountRequest>(create);
  static NewReceivedMessageFromAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get connectingAccountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set connectingAccountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectingAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectingAccountId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

class AccountConnectedAccountNotificationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountConnectedAccountNotificationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$22.Account>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: $22.Account.create)
    ..aOM<$22.AccountConnectedAccount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectingAccountConnectedAccount', subBuilder: $22.AccountConnectedAccount.create)
    ..hasRequiredFields = false
  ;

  AccountConnectedAccountNotificationRequest._() : super();
  factory AccountConnectedAccountNotificationRequest({
    $22.Account? account,
    $22.AccountConnectedAccount? connectingAccountConnectedAccount,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (connectingAccountConnectedAccount != null) {
      _result.connectingAccountConnectedAccount = connectingAccountConnectedAccount;
    }
    return _result;
  }
  factory AccountConnectedAccountNotificationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountConnectedAccountNotificationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountConnectedAccountNotificationRequest clone() => AccountConnectedAccountNotificationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountConnectedAccountNotificationRequest copyWith(void Function(AccountConnectedAccountNotificationRequest) updates) => super.copyWith((message) => updates(message as AccountConnectedAccountNotificationRequest)) as AccountConnectedAccountNotificationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountConnectedAccountNotificationRequest create() => AccountConnectedAccountNotificationRequest._();
  AccountConnectedAccountNotificationRequest createEmptyInstance() => create();
  static $pb.PbList<AccountConnectedAccountNotificationRequest> createRepeated() => $pb.PbList<AccountConnectedAccountNotificationRequest>();
  @$core.pragma('dart2js:noInline')
  static AccountConnectedAccountNotificationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountConnectedAccountNotificationRequest>(create);
  static AccountConnectedAccountNotificationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $22.Account get account => $_getN(0);
  @$pb.TagNumber(1)
  set account($22.Account v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  $22.Account ensureAccount() => $_ensure(0);

  @$pb.TagNumber(2)
  $22.AccountConnectedAccount get connectingAccountConnectedAccount => $_getN(1);
  @$pb.TagNumber(2)
  set connectingAccountConnectedAccount($22.AccountConnectedAccount v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectingAccountConnectedAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectingAccountConnectedAccount() => clearField(2);
  @$pb.TagNumber(2)
  $22.AccountConnectedAccount ensureConnectingAccountConnectedAccount() => $_ensure(1);
}

class UpdateAccountDeviceDetailsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAccountDeviceDetailsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOM<$22.AccountDeviceDetails>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountDeviceDetails', subBuilder: $22.AccountDeviceDetails.create)
    ..hasRequiredFields = false
  ;

  UpdateAccountDeviceDetailsRequest._() : super();
  factory UpdateAccountDeviceDetailsRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $22.AccountDeviceDetails? accountDeviceDetails,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (accountDeviceDetails != null) {
      _result.accountDeviceDetails = accountDeviceDetails;
    }
    return _result;
  }
  factory UpdateAccountDeviceDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAccountDeviceDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAccountDeviceDetailsRequest clone() => UpdateAccountDeviceDetailsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAccountDeviceDetailsRequest copyWith(void Function(UpdateAccountDeviceDetailsRequest) updates) => super.copyWith((message) => updates(message as UpdateAccountDeviceDetailsRequest)) as UpdateAccountDeviceDetailsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAccountDeviceDetailsRequest create() => UpdateAccountDeviceDetailsRequest._();
  UpdateAccountDeviceDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateAccountDeviceDetailsRequest> createRepeated() => $pb.PbList<UpdateAccountDeviceDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateAccountDeviceDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAccountDeviceDetailsRequest>(create);
  static UpdateAccountDeviceDetailsRequest? _defaultInstance;

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
  $22.AccountDeviceDetails get accountDeviceDetails => $_getN(1);
  @$pb.TagNumber(2)
  set accountDeviceDetails($22.AccountDeviceDetails v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountDeviceDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountDeviceDetails() => clearField(2);
  @$pb.TagNumber(2)
  $22.AccountDeviceDetails ensureAccountDeviceDetails() => $_ensure(1);
}

