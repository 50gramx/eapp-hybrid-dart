///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/conversation/message/account/send_account_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../identity/account/access_account.pb.dart' as $0;
import '../../../../../entities/account.pb.dart' as $21;
import '../../../../../../../google/protobuf/timestamp.pb.dart' as $54;
import '../../../../../entities/generic.pb.dart' as $2;

import '../../../../../entities/space_knowledge.pbenum.dart' as $58;

export '../../../../../../../google/protobuf/timestamp.pb.dart';
class MessageForAccountAssistant extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageForAccountAssistant', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.conversation.message.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOM<$21.AccountConnectedAccountAssistant>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccountAssistant', subBuilder: $21.AccountConnectedAccountAssistant.create)
    ..e<$58.SpaceKnowledgeAction>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeAction', $pb.PbFieldType.OE, defaultOrMaker: $58.SpaceKnowledgeAction.ASK_QUESTION, valueOf: $58.SpaceKnowledgeAction.valueOf, enumValues: $58.SpaceKnowledgeAction.values)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  MessageForAccountAssistant._() : super();
  factory MessageForAccountAssistant({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $21.AccountConnectedAccountAssistant? connectedAccountAssistant,
    $58.SpaceKnowledgeAction? spaceKnowledgeAction,
    $core.String? message,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (connectedAccountAssistant != null) {
      _result.connectedAccountAssistant = connectedAccountAssistant;
    }
    if (spaceKnowledgeAction != null) {
      _result.spaceKnowledgeAction = spaceKnowledgeAction;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory MessageForAccountAssistant.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageForAccountAssistant.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageForAccountAssistant clone() => MessageForAccountAssistant()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageForAccountAssistant copyWith(void Function(MessageForAccountAssistant) updates) => super.copyWith((message) => updates(message as MessageForAccountAssistant)) as MessageForAccountAssistant; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageForAccountAssistant create() => MessageForAccountAssistant._();
  MessageForAccountAssistant createEmptyInstance() => create();
  static $pb.PbList<MessageForAccountAssistant> createRepeated() => $pb.PbList<MessageForAccountAssistant>();
  @$core.pragma('dart2js:noInline')
  static MessageForAccountAssistant getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageForAccountAssistant>(create);
  static MessageForAccountAssistant? _defaultInstance;

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
  $21.AccountConnectedAccountAssistant get connectedAccountAssistant => $_getN(1);
  @$pb.TagNumber(2)
  set connectedAccountAssistant($21.AccountConnectedAccountAssistant v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectedAccountAssistant() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectedAccountAssistant() => clearField(2);
  @$pb.TagNumber(2)
  $21.AccountConnectedAccountAssistant ensureConnectedAccountAssistant() => $_ensure(1);

  @$pb.TagNumber(3)
  $58.SpaceKnowledgeAction get spaceKnowledgeAction => $_getN(2);
  @$pb.TagNumber(3)
  set spaceKnowledgeAction($58.SpaceKnowledgeAction v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceKnowledgeAction() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceKnowledgeAction() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => clearField(4);
}

class MessageForAccountAssistantSent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageForAccountAssistantSent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.conversation.message.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantSentMessageId')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSent')
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sentAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receivedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  MessageForAccountAssistantSent._() : super();
  factory MessageForAccountAssistantSent({
    $core.String? accountAssistantSentMessageId,
    $core.bool? isSent,
    $54.Timestamp? sentAt,
    $54.Timestamp? receivedAt,
  }) {
    final _result = create();
    if (accountAssistantSentMessageId != null) {
      _result.accountAssistantSentMessageId = accountAssistantSentMessageId;
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
  factory MessageForAccountAssistantSent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageForAccountAssistantSent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageForAccountAssistantSent clone() => MessageForAccountAssistantSent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageForAccountAssistantSent copyWith(void Function(MessageForAccountAssistantSent) updates) => super.copyWith((message) => updates(message as MessageForAccountAssistantSent)) as MessageForAccountAssistantSent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageForAccountAssistantSent create() => MessageForAccountAssistantSent._();
  MessageForAccountAssistantSent createEmptyInstance() => create();
  static $pb.PbList<MessageForAccountAssistantSent> createRepeated() => $pb.PbList<MessageForAccountAssistantSent>();
  @$core.pragma('dart2js:noInline')
  static MessageForAccountAssistantSent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageForAccountAssistantSent>(create);
  static MessageForAccountAssistantSent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountAssistantSentMessageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountAssistantSentMessageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAssistantSentMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAssistantSentMessageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isSent => $_getBF(1);
  @$pb.TagNumber(2)
  set isSent($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsSent() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsSent() => clearField(2);

  @$pb.TagNumber(3)
  $54.Timestamp get sentAt => $_getN(2);
  @$pb.TagNumber(3)
  set sentAt($54.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSentAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearSentAt() => clearField(3);
  @$pb.TagNumber(3)
  $54.Timestamp ensureSentAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $54.Timestamp get receivedAt => $_getN(3);
  @$pb.TagNumber(4)
  set receivedAt($54.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasReceivedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearReceivedAt() => clearField(4);
  @$pb.TagNumber(4)
  $54.Timestamp ensureReceivedAt() => $_ensure(3);
}

class MessageForAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageForAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.conversation.message.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOM<$21.AccountConnectedAccount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $21.AccountConnectedAccount.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  MessageForAccount._() : super();
  factory MessageForAccount({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $21.AccountConnectedAccount? connectedAccount,
    $core.String? message,
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
  $21.AccountConnectedAccount get connectedAccount => $_getN(1);
  @$pb.TagNumber(2)
  set connectedAccount($21.AccountConnectedAccount v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectedAccount() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectedAccount() => clearField(2);
  @$pb.TagNumber(2)
  $21.AccountConnectedAccount ensureConnectedAccount() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

class MessageForAccountSent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageForAccountSent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.conversation.message.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountSentMessageId')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSent')
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sentAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receivedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  MessageForAccountSent._() : super();
  factory MessageForAccountSent({
    $core.String? accountSentMessageId,
    $core.bool? isSent,
    $54.Timestamp? sentAt,
    $54.Timestamp? receivedAt,
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
  $54.Timestamp get sentAt => $_getN(2);
  @$pb.TagNumber(3)
  set sentAt($54.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSentAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearSentAt() => clearField(3);
  @$pb.TagNumber(3)
  $54.Timestamp ensureSentAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $54.Timestamp get receivedAt => $_getN(3);
  @$pb.TagNumber(4)
  set receivedAt($54.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasReceivedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearReceivedAt() => clearField(4);
  @$pb.TagNumber(4)
  $54.Timestamp ensureReceivedAt() => $_ensure(3);
}

class FullMessageForAccountSent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FullMessageForAccountSent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.conversation.message.account'), createEmptyInstance: create)
    ..aOM<MessageForAccountSent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageForAccountSent', subBuilder: MessageForAccountSent.create)
    ..aOM<$21.AccountConnectedAccount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $21.AccountConnectedAccount.create)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  FullMessageForAccountSent._() : super();
  factory FullMessageForAccountSent({
    MessageForAccountSent? messageForAccountSent,
    $21.AccountConnectedAccount? connectedAccount,
    $core.String? message,
  }) {
    final _result = create();
    if (messageForAccountSent != null) {
      _result.messageForAccountSent = messageForAccountSent;
    }
    if (connectedAccount != null) {
      _result.connectedAccount = connectedAccount;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory FullMessageForAccountSent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FullMessageForAccountSent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FullMessageForAccountSent clone() => FullMessageForAccountSent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FullMessageForAccountSent copyWith(void Function(FullMessageForAccountSent) updates) => super.copyWith((message) => updates(message as FullMessageForAccountSent)) as FullMessageForAccountSent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FullMessageForAccountSent create() => FullMessageForAccountSent._();
  FullMessageForAccountSent createEmptyInstance() => create();
  static $pb.PbList<FullMessageForAccountSent> createRepeated() => $pb.PbList<FullMessageForAccountSent>();
  @$core.pragma('dart2js:noInline')
  static FullMessageForAccountSent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FullMessageForAccountSent>(create);
  static FullMessageForAccountSent? _defaultInstance;

  @$pb.TagNumber(1)
  MessageForAccountSent get messageForAccountSent => $_getN(0);
  @$pb.TagNumber(1)
  set messageForAccountSent(MessageForAccountSent v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessageForAccountSent() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageForAccountSent() => clearField(1);
  @$pb.TagNumber(1)
  MessageForAccountSent ensureMessageForAccountSent() => $_ensure(0);

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

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);
}

class SyncAccountSentMessagesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncAccountSentMessagesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.conversation.message.account'), createEmptyInstance: create)
    ..aOM<AccountSentMessage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountSentMessage', subBuilder: AccountSentMessage.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  SyncAccountSentMessagesResponse._() : super();
  factory SyncAccountSentMessagesResponse({
    AccountSentMessage? accountSentMessage,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (accountSentMessage != null) {
      _result.accountSentMessage = accountSentMessage;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory SyncAccountSentMessagesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncAccountSentMessagesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncAccountSentMessagesResponse clone() => SyncAccountSentMessagesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncAccountSentMessagesResponse copyWith(void Function(SyncAccountSentMessagesResponse) updates) => super.copyWith((message) => updates(message as SyncAccountSentMessagesResponse)) as SyncAccountSentMessagesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncAccountSentMessagesResponse create() => SyncAccountSentMessagesResponse._();
  SyncAccountSentMessagesResponse createEmptyInstance() => create();
  static $pb.PbList<SyncAccountSentMessagesResponse> createRepeated() => $pb.PbList<SyncAccountSentMessagesResponse>();
  @$core.pragma('dart2js:noInline')
  static SyncAccountSentMessagesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncAccountSentMessagesResponse>(create);
  static SyncAccountSentMessagesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AccountSentMessage get accountSentMessage => $_getN(0);
  @$pb.TagNumber(1)
  set accountSentMessage(AccountSentMessage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountSentMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountSentMessage() => clearField(1);
  @$pb.TagNumber(1)
  AccountSentMessage ensureAccountSentMessage() => $_ensure(0);

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

class SyncAccountConnectedAccountSentMessagesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncAccountConnectedAccountSentMessagesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.conversation.message.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOM<$21.AccountConnectedAccount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $21.AccountConnectedAccount.create)
    ..hasRequiredFields = false
  ;

  SyncAccountConnectedAccountSentMessagesRequest._() : super();
  factory SyncAccountConnectedAccountSentMessagesRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $21.AccountConnectedAccount? connectedAccount,
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
  factory SyncAccountConnectedAccountSentMessagesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncAccountConnectedAccountSentMessagesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncAccountConnectedAccountSentMessagesRequest clone() => SyncAccountConnectedAccountSentMessagesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncAccountConnectedAccountSentMessagesRequest copyWith(void Function(SyncAccountConnectedAccountSentMessagesRequest) updates) => super.copyWith((message) => updates(message as SyncAccountConnectedAccountSentMessagesRequest)) as SyncAccountConnectedAccountSentMessagesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncAccountConnectedAccountSentMessagesRequest create() => SyncAccountConnectedAccountSentMessagesRequest._();
  SyncAccountConnectedAccountSentMessagesRequest createEmptyInstance() => create();
  static $pb.PbList<SyncAccountConnectedAccountSentMessagesRequest> createRepeated() => $pb.PbList<SyncAccountConnectedAccountSentMessagesRequest>();
  @$core.pragma('dart2js:noInline')
  static SyncAccountConnectedAccountSentMessagesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncAccountConnectedAccountSentMessagesRequest>(create);
  static SyncAccountConnectedAccountSentMessagesRequest? _defaultInstance;

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

class SyncAccountConnectedAccountSentMessagesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SyncAccountConnectedAccountSentMessagesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.conversation.message.account'), createEmptyInstance: create)
    ..aOM<AccountSentMessage>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountSentMessage', subBuilder: AccountSentMessage.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'syncProgress', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  SyncAccountConnectedAccountSentMessagesResponse._() : super();
  factory SyncAccountConnectedAccountSentMessagesResponse({
    AccountSentMessage? accountSentMessage,
    $2.ResponseMeta? responseMeta,
    $core.double? syncProgress,
  }) {
    final _result = create();
    if (accountSentMessage != null) {
      _result.accountSentMessage = accountSentMessage;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    if (syncProgress != null) {
      _result.syncProgress = syncProgress;
    }
    return _result;
  }
  factory SyncAccountConnectedAccountSentMessagesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SyncAccountConnectedAccountSentMessagesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SyncAccountConnectedAccountSentMessagesResponse clone() => SyncAccountConnectedAccountSentMessagesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SyncAccountConnectedAccountSentMessagesResponse copyWith(void Function(SyncAccountConnectedAccountSentMessagesResponse) updates) => super.copyWith((message) => updates(message as SyncAccountConnectedAccountSentMessagesResponse)) as SyncAccountConnectedAccountSentMessagesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SyncAccountConnectedAccountSentMessagesResponse create() => SyncAccountConnectedAccountSentMessagesResponse._();
  SyncAccountConnectedAccountSentMessagesResponse createEmptyInstance() => create();
  static $pb.PbList<SyncAccountConnectedAccountSentMessagesResponse> createRepeated() => $pb.PbList<SyncAccountConnectedAccountSentMessagesResponse>();
  @$core.pragma('dart2js:noInline')
  static SyncAccountConnectedAccountSentMessagesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SyncAccountConnectedAccountSentMessagesResponse>(create);
  static SyncAccountConnectedAccountSentMessagesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AccountSentMessage get accountSentMessage => $_getN(0);
  @$pb.TagNumber(1)
  set accountSentMessage(AccountSentMessage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountSentMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountSentMessage() => clearField(1);
  @$pb.TagNumber(1)
  AccountSentMessage ensureAccountSentMessage() => $_ensure(0);

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

  @$pb.TagNumber(3)
  $core.double get syncProgress => $_getN(2);
  @$pb.TagNumber(3)
  set syncProgress($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSyncProgress() => $_has(2);
  @$pb.TagNumber(3)
  void clearSyncProgress() => clearField(3);
}

class AccountAssistantSentMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountAssistantSentMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.conversation.message.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantSentMessageId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantConnectionId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageSpace', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageSpaceAction', $pb.PbFieldType.O3)
    ..aOM<$54.Timestamp>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sentAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receivedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AccountAssistantSentMessage._() : super();
  factory AccountAssistantSentMessage({
    $core.String? accountAssistantSentMessageId,
    $core.String? accountAssistantId,
    $core.String? accountAssistantConnectionId,
    $core.String? message,
    $core.int? messageSpace,
    $core.int? messageSpaceAction,
    $54.Timestamp? sentAt,
    $54.Timestamp? receivedAt,
  }) {
    final _result = create();
    if (accountAssistantSentMessageId != null) {
      _result.accountAssistantSentMessageId = accountAssistantSentMessageId;
    }
    if (accountAssistantId != null) {
      _result.accountAssistantId = accountAssistantId;
    }
    if (accountAssistantConnectionId != null) {
      _result.accountAssistantConnectionId = accountAssistantConnectionId;
    }
    if (message != null) {
      _result.message = message;
    }
    if (messageSpace != null) {
      _result.messageSpace = messageSpace;
    }
    if (messageSpaceAction != null) {
      _result.messageSpaceAction = messageSpaceAction;
    }
    if (sentAt != null) {
      _result.sentAt = sentAt;
    }
    if (receivedAt != null) {
      _result.receivedAt = receivedAt;
    }
    return _result;
  }
  factory AccountAssistantSentMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountAssistantSentMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountAssistantSentMessage clone() => AccountAssistantSentMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountAssistantSentMessage copyWith(void Function(AccountAssistantSentMessage) updates) => super.copyWith((message) => updates(message as AccountAssistantSentMessage)) as AccountAssistantSentMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountAssistantSentMessage create() => AccountAssistantSentMessage._();
  AccountAssistantSentMessage createEmptyInstance() => create();
  static $pb.PbList<AccountAssistantSentMessage> createRepeated() => $pb.PbList<AccountAssistantSentMessage>();
  @$core.pragma('dart2js:noInline')
  static AccountAssistantSentMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountAssistantSentMessage>(create);
  static AccountAssistantSentMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountAssistantSentMessageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountAssistantSentMessageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAssistantSentMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAssistantSentMessageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountAssistantId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountAssistantId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountAssistantId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountAssistantId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountAssistantConnectionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountAssistantConnectionId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountAssistantConnectionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountAssistantConnectionId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get messageSpace => $_getIZ(4);
  @$pb.TagNumber(5)
  set messageSpace($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessageSpace() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessageSpace() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get messageSpaceAction => $_getIZ(5);
  @$pb.TagNumber(6)
  set messageSpaceAction($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMessageSpaceAction() => $_has(5);
  @$pb.TagNumber(6)
  void clearMessageSpaceAction() => clearField(6);

  @$pb.TagNumber(7)
  $54.Timestamp get sentAt => $_getN(6);
  @$pb.TagNumber(7)
  set sentAt($54.Timestamp v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasSentAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearSentAt() => clearField(7);
  @$pb.TagNumber(7)
  $54.Timestamp ensureSentAt() => $_ensure(6);

  @$pb.TagNumber(8)
  $54.Timestamp get receivedAt => $_getN(7);
  @$pb.TagNumber(8)
  set receivedAt($54.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasReceivedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearReceivedAt() => clearField(8);
  @$pb.TagNumber(8)
  $54.Timestamp ensureReceivedAt() => $_ensure(7);
}

class AccountSentMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountSentMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.conversation.message.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountSentMessageId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountConnectionId')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOM<$54.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sentAt', subBuilder: $54.Timestamp.create)
    ..aOM<$54.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receivedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AccountSentMessage._() : super();
  factory AccountSentMessage({
    $core.String? accountSentMessageId,
    $core.String? accountId,
    $core.String? accountConnectionId,
    $core.String? message,
    $54.Timestamp? sentAt,
    $54.Timestamp? receivedAt,
  }) {
    final _result = create();
    if (accountSentMessageId != null) {
      _result.accountSentMessageId = accountSentMessageId;
    }
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (accountConnectionId != null) {
      _result.accountConnectionId = accountConnectionId;
    }
    if (message != null) {
      _result.message = message;
    }
    if (sentAt != null) {
      _result.sentAt = sentAt;
    }
    if (receivedAt != null) {
      _result.receivedAt = receivedAt;
    }
    return _result;
  }
  factory AccountSentMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountSentMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountSentMessage clone() => AccountSentMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountSentMessage copyWith(void Function(AccountSentMessage) updates) => super.copyWith((message) => updates(message as AccountSentMessage)) as AccountSentMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountSentMessage create() => AccountSentMessage._();
  AccountSentMessage createEmptyInstance() => create();
  static $pb.PbList<AccountSentMessage> createRepeated() => $pb.PbList<AccountSentMessage>();
  @$core.pragma('dart2js:noInline')
  static AccountSentMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountSentMessage>(create);
  static AccountSentMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountSentMessageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountSentMessageId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountSentMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountSentMessageId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountConnectionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountConnectionId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountConnectionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountConnectionId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(4)
  set message($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessage() => clearField(4);

  @$pb.TagNumber(5)
  $54.Timestamp get sentAt => $_getN(4);
  @$pb.TagNumber(5)
  set sentAt($54.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSentAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearSentAt() => clearField(5);
  @$pb.TagNumber(5)
  $54.Timestamp ensureSentAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $54.Timestamp get receivedAt => $_getN(5);
  @$pb.TagNumber(6)
  set receivedAt($54.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasReceivedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearReceivedAt() => clearField(6);
  @$pb.TagNumber(6)
  $54.Timestamp ensureReceivedAt() => $_ensure(5);
}

