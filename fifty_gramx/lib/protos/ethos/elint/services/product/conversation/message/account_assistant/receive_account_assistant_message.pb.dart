///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/conversation/message/account_assistant/receive_account_assistant_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../../entities/account_assistant.pb.dart' as $6;
import '../../../../../../../google/protobuf/timestamp.pb.dart' as $54;

import '../../../../../entities/space_knowledge.pbenum.dart' as $58;

export '../../../../../../../google/protobuf/timestamp.pb.dart';
class MessageFromAccount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageFromAccount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.conversation.message.account.assistant'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantId')
    ..aOM<$6.AccountAssistantConnectedAccount>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectedAccount', subBuilder: $6.AccountAssistantConnectedAccount.create)
    ..e<$58.SpaceKnowledgeAction>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeAction', $pb.PbFieldType.OE, defaultOrMaker: $58.SpaceKnowledgeAction.ASK_QUESTION, valueOf: $58.SpaceKnowledgeAction.valueOf, enumValues: $58.SpaceKnowledgeAction.values)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountReceivedMessageId')
    ..hasRequiredFields = false
  ;

  MessageFromAccount._() : super();
  factory MessageFromAccount({
    $core.String? accountAssistantId,
    $6.AccountAssistantConnectedAccount? connectedAccount,
    $58.SpaceKnowledgeAction? spaceKnowledgeAction,
    $core.String? message,
    $core.String? accountReceivedMessageId,
  }) {
    final _result = create();
    if (accountAssistantId != null) {
      _result.accountAssistantId = accountAssistantId;
    }
    if (connectedAccount != null) {
      _result.connectedAccount = connectedAccount;
    }
    if (spaceKnowledgeAction != null) {
      _result.spaceKnowledgeAction = spaceKnowledgeAction;
    }
    if (message != null) {
      _result.message = message;
    }
    if (accountReceivedMessageId != null) {
      _result.accountReceivedMessageId = accountReceivedMessageId;
    }
    return _result;
  }
  factory MessageFromAccount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageFromAccount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageFromAccount clone() => MessageFromAccount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageFromAccount copyWith(void Function(MessageFromAccount) updates) => super.copyWith((message) => updates(message as MessageFromAccount)) as MessageFromAccount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageFromAccount create() => MessageFromAccount._();
  MessageFromAccount createEmptyInstance() => create();
  static $pb.PbList<MessageFromAccount> createRepeated() => $pb.PbList<MessageFromAccount>();
  @$core.pragma('dart2js:noInline')
  static MessageFromAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageFromAccount>(create);
  static MessageFromAccount? _defaultInstance;

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

  @$pb.TagNumber(5)
  $core.String get accountReceivedMessageId => $_getSZ(4);
  @$pb.TagNumber(5)
  set accountReceivedMessageId($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccountReceivedMessageId() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccountReceivedMessageId() => clearField(5);
}

class MessageFromAccountReceived extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MessageFromAccountReceived', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.conversation.message.account.assistant'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isReceived')
    ..aOM<$54.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'receivedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  MessageFromAccountReceived._() : super();
  factory MessageFromAccountReceived({
    $core.bool? isReceived,
    $54.Timestamp? receivedAt,
  }) {
    final _result = create();
    if (isReceived != null) {
      _result.isReceived = isReceived;
    }
    if (receivedAt != null) {
      _result.receivedAt = receivedAt;
    }
    return _result;
  }
  factory MessageFromAccountReceived.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MessageFromAccountReceived.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MessageFromAccountReceived clone() => MessageFromAccountReceived()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MessageFromAccountReceived copyWith(void Function(MessageFromAccountReceived) updates) => super.copyWith((message) => updates(message as MessageFromAccountReceived)) as MessageFromAccountReceived; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MessageFromAccountReceived create() => MessageFromAccountReceived._();
  MessageFromAccountReceived createEmptyInstance() => create();
  static $pb.PbList<MessageFromAccountReceived> createRepeated() => $pb.PbList<MessageFromAccountReceived>();
  @$core.pragma('dart2js:noInline')
  static MessageFromAccountReceived getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MessageFromAccountReceived>(create);
  static MessageFromAccountReceived? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isReceived => $_getBF(0);
  @$pb.TagNumber(1)
  set isReceived($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsReceived() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsReceived() => clearField(1);

  @$pb.TagNumber(2)
  $54.Timestamp get receivedAt => $_getN(1);
  @$pb.TagNumber(2)
  set receivedAt($54.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReceivedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceivedAt() => clearField(2);
  @$pb.TagNumber(2)
  $54.Timestamp ensureReceivedAt() => $_ensure(1);
}

