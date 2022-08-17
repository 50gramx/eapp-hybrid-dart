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
//  source: ethos/elint/services/product/conversation/message/account_assistant/send_account_assistant_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../identity/account_assistant/access_account_assistant.pb.dart' as $8;
import '../../../../../entities/account_assistant.pb.dart' as $6;
import '../../../../../../../google/protobuf/any.pb.dart' as $51;
import '../../../../../../../google/protobuf/timestamp.pb.dart' as $52;

export '../../../../../../../google/protobuf/timestamp.pb.dart';
class MessageForAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageForAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.conversation.message.account.assistant'), createEmptyInstance: create)
    ..aOM<$8.AccountAssistantServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $8.AccountAssistantServicesAccessAuthDetails.create)
    ..aOM<$6.AccountAssistantConnectedAccount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $6.AccountAssistantConnectedAccount.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageSourceSpaceId')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageSourceSpaceTypeId')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageSourceSpaceDomainId')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageSourceSpaceDomainAction', $pb.PbFieldType.O3)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageSourceSpaceDomainActionContextId')
    ..pc<$51.Any>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageSource', $pb.PbFieldType.PM, subBuilder: $51.Any.create)
    ..hasRequiredFields = false
  ;

  MessageForAccount._() : super();
  factory MessageForAccount({
    $8.AccountAssistantServicesAccessAuthDetails? accessAuthDetails,
    $6.AccountAssistantConnectedAccount? connectedAccount,
    $core.String? message,
    $core.String? messageSourceSpaceId,
    $core.String? messageSourceSpaceTypeId,
    $core.String? messageSourceSpaceDomainId,
    $core.int? messageSourceSpaceDomainAction,
    $core.String? messageSourceSpaceDomainActionContextId,
    $core.Iterable<$51.Any>? messageSource,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (connectedAccount != null) {
      _result.connectedAccount = connectedAccount;
    }
    if (message != null) {
      _result.message = message;
    }
    if (messageSourceSpaceId != null) {
      _result.messageSourceSpaceId = messageSourceSpaceId;
    }
    if (messageSourceSpaceTypeId != null) {
      _result.messageSourceSpaceTypeId = messageSourceSpaceTypeId;
    }
    if (messageSourceSpaceDomainId != null) {
      _result.messageSourceSpaceDomainId = messageSourceSpaceDomainId;
    }
    if (messageSourceSpaceDomainAction != null) {
      _result.messageSourceSpaceDomainAction = messageSourceSpaceDomainAction;
    }
    if (messageSourceSpaceDomainActionContextId != null) {
      _result.messageSourceSpaceDomainActionContextId = messageSourceSpaceDomainActionContextId;
    }
    if (messageSource != null) {
      _result.messageSource.addAll(messageSource);
    }
    return _result;
  }
  factory MessageForAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageForAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageForAccount clone() => MessageForAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageForAccount copyWith(void Function(MessageForAccount) updates) => super.copyWith((message) => updates(message as MessageForAccount)) as MessageForAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageForAccount create() => MessageForAccount._();
  MessageForAccount createEmptyInstance() => create();
  static $pb.PbList<MessageForAccount> createRepeated() => $pb.PbList<MessageForAccount>();
  @$core.pragma('dart2js:noInline')
  static MessageForAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageForAccount>(create);
  static MessageForAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $8.AccountAssistantServicesAccessAuthDetails get accessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accessAuthDetails($8.AccountAssistantServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $8.AccountAssistantServicesAccessAuthDetails ensureAccessAuthDetails() => $_ensure(0);

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

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get messageSourceSpaceId => $_getSZ(3);
  @$pb.TagNumber(4)
  set messageSourceSpaceId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessageSourceSpaceId() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessageSourceSpaceId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get messageSourceSpaceTypeId => $_getSZ(4);
  @$pb.TagNumber(5)
  set messageSourceSpaceTypeId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessageSourceSpaceTypeId() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessageSourceSpaceTypeId() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get messageSourceSpaceDomainId => $_getSZ(5);
  @$pb.TagNumber(6)
  set messageSourceSpaceDomainId($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMessageSourceSpaceDomainId() => $_has(5);
  @$pb.TagNumber(6)
  void clearMessageSourceSpaceDomainId() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get messageSourceSpaceDomainAction => $_getIZ(6);
  @$pb.TagNumber(7)
  set messageSourceSpaceDomainAction($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMessageSourceSpaceDomainAction() => $_has(6);
  @$pb.TagNumber(7)
  void clearMessageSourceSpaceDomainAction() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get messageSourceSpaceDomainActionContextId => $_getSZ(7);
  @$pb.TagNumber(8)
  set messageSourceSpaceDomainActionContextId($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMessageSourceSpaceDomainActionContextId() => $_has(7);
  @$pb.TagNumber(8)
  void clearMessageSourceSpaceDomainActionContextId() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<$51.Any> get messageSource => $_getList(8);
}

class MessageForAccountSent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageForAccountSent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.conversation.message.account.assistant'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountSentMessageId')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSent')
    ..aOM<$52.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sentAt', subBuilder: $52.Timestamp.create)
    ..aOM<$52.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receivedAt', subBuilder: $52.Timestamp.create)
    ..hasRequiredFields = false
  ;

  MessageForAccountSent._() : super();
  factory MessageForAccountSent({
    $core.String? accountSentMessageId,
    $core.bool? isSent,
    $52.Timestamp? sentAt,
    $52.Timestamp? receivedAt,
  }) {
    final _result = create();
    if (accountSentMessageId != null) {
      _result.accountSentMessageId = accountSentMessageId;
    }
    if (isSent != null) {
      _result.isSent = isSent;
    }
    if (sentAt != null) {
      _result.sentAt = sentAt;
    }
    if (receivedAt != null) {
      _result.receivedAt = receivedAt;
    }
    return _result;
  }
  factory MessageForAccountSent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageForAccountSent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageForAccountSent clone() => MessageForAccountSent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageForAccountSent copyWith(void Function(MessageForAccountSent) updates) => super.copyWith((message) => updates(message as MessageForAccountSent)) as MessageForAccountSent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageForAccountSent create() => MessageForAccountSent._();
  MessageForAccountSent createEmptyInstance() => create();
  static $pb.PbList<MessageForAccountSent> createRepeated() => $pb.PbList<MessageForAccountSent>();
  @$core.pragma('dart2js:noInline')
  static MessageForAccountSent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageForAccountSent>(create);
  static MessageForAccountSent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountSentMessageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountSentMessageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountSentMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountSentMessageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isSent => $_getBF(1);
  @$pb.TagNumber(2)
  set isSent($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsSent() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsSent() => clearField(2);

  @$pb.TagNumber(3)
  $52.Timestamp get sentAt => $_getN(2);
  @$pb.TagNumber(3)
  set sentAt($52.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSentAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearSentAt() => clearField(3);
  @$pb.TagNumber(3)
  $52.Timestamp ensureSentAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $52.Timestamp get receivedAt => $_getN(3);
  @$pb.TagNumber(4)
  set receivedAt($52.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasReceivedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearReceivedAt() => clearField(4);
  @$pb.TagNumber(4)
  $52.Timestamp ensureReceivedAt() => $_ensure(3);
}

