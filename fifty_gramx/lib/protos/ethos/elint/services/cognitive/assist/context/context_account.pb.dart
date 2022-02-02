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
//  source: ethos/elint/services/cognitive/assist/context/context_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../product/identity/account_assistant/access_account_assistant.pb.dart' as $8;

import '../../../../entities/space_knowledge.pbenum.dart' as $59;

class AccountMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.context.account'), createEmptyInstance: create)
    ..aOM<$8.AccountAssistantServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $8.AccountAssistantServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  AccountMessage._() : super();
  factory AccountMessage({
    $8.AccountAssistantServicesAccessAuthDetails? accessAuthDetails,
    $core.String? message,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory AccountMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountMessage clone() => AccountMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountMessage copyWith(void Function(AccountMessage) updates) => super.copyWith((message) => updates(message as AccountMessage)) as AccountMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountMessage create() => AccountMessage._();
  AccountMessage createEmptyInstance() => create();
  static $pb.PbList<AccountMessage> createRepeated() => $pb.PbList<AccountMessage>();
  @$core.pragma('dart2js:noInline')
  static AccountMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountMessage>(create);
  static AccountMessage? _defaultInstance;

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
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class AccountMessageContext extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountMessageContext', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.context.account'), createEmptyInstance: create)
    ..pc<KnowledgeContextualAction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'knowledgeContextualActions', $pb.PbFieldType.PM, subBuilder: KnowledgeContextualAction.create)
    ..hasRequiredFields = false
  ;

  AccountMessageContext._() : super();
  factory AccountMessageContext({
    $core.Iterable<KnowledgeContextualAction>? knowledgeContextualActions,
  }) {
    final _result = create();
    if (knowledgeContextualActions != null) {
      _result.knowledgeContextualActions.addAll(knowledgeContextualActions);
    }
    return _result;
  }
  factory AccountMessageContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountMessageContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountMessageContext clone() => AccountMessageContext()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountMessageContext copyWith(void Function(AccountMessageContext) updates) => super.copyWith((message) => updates(message as AccountMessageContext)) as AccountMessageContext; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountMessageContext create() => AccountMessageContext._();
  AccountMessageContext createEmptyInstance() => create();
  static $pb.PbList<AccountMessageContext> createRepeated() => $pb.PbList<AccountMessageContext>();
  @$core.pragma('dart2js:noInline')
  static AccountMessageContext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountMessageContext>(create);
  static AccountMessageContext? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<KnowledgeContextualAction> get knowledgeContextualActions => $_getList(0);
}

class KnowledgeContextualAction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KnowledgeContextualAction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.context.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'knowledgeContextActionId')
    ..e<$59.SpaceKnowledgeAction>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'knowledgeSpaceAction', $pb.PbFieldType.OE, defaultOrMaker: $59.SpaceKnowledgeAction.ASK_QUESTION, valueOf: $59.SpaceKnowledgeAction.valueOf, enumValues: $59.SpaceKnowledgeAction.values)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'knowledgeContextConfidence', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  KnowledgeContextualAction._() : super();
  factory KnowledgeContextualAction({
    $core.String? knowledgeContextActionId,
    $59.SpaceKnowledgeAction? knowledgeSpaceAction,
    $core.double? knowledgeContextConfidence,
  }) {
    final _result = create();
    if (knowledgeContextActionId != null) {
      _result.knowledgeContextActionId = knowledgeContextActionId;
    }
    if (knowledgeSpaceAction != null) {
      _result.knowledgeSpaceAction = knowledgeSpaceAction;
    }
    if (knowledgeContextConfidence != null) {
      _result.knowledgeContextConfidence = knowledgeContextConfidence;
    }
    return _result;
  }
  factory KnowledgeContextualAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KnowledgeContextualAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KnowledgeContextualAction clone() => KnowledgeContextualAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KnowledgeContextualAction copyWith(void Function(KnowledgeContextualAction) updates) => super.copyWith((message) => updates(message as KnowledgeContextualAction)) as KnowledgeContextualAction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KnowledgeContextualAction create() => KnowledgeContextualAction._();
  KnowledgeContextualAction createEmptyInstance() => create();
  static $pb.PbList<KnowledgeContextualAction> createRepeated() => $pb.PbList<KnowledgeContextualAction>();
  @$core.pragma('dart2js:noInline')
  static KnowledgeContextualAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KnowledgeContextualAction>(create);
  static KnowledgeContextualAction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get knowledgeContextActionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set knowledgeContextActionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKnowledgeContextActionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearKnowledgeContextActionId() => clearField(1);

  @$pb.TagNumber(2)
  $59.SpaceKnowledgeAction get knowledgeSpaceAction => $_getN(1);
  @$pb.TagNumber(2)
  set knowledgeSpaceAction($59.SpaceKnowledgeAction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasKnowledgeSpaceAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearKnowledgeSpaceAction() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get knowledgeContextConfidence => $_getN(2);
  @$pb.TagNumber(3)
  set knowledgeContextConfidence($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKnowledgeContextConfidence() => $_has(2);
  @$pb.TagNumber(3)
  void clearKnowledgeContextConfidence() => clearField(3);
}

