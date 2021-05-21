///
//  Generated code. Do not modify.
//  source: ethos/elint/services/cognitive/assist/context/context_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../product/identity/account_assistant/access_account_assistant.pb.dart' as $13;

import '../../../../entities/space_knowledge.pbenum.dart' as $58;

class AccountMessage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.cognitive.assist.context.account'), createEmptyInstance: create)
    ..aOM<$13.AccountAssistantServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $13.AccountAssistantServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  AccountMessage._() : super();
  factory AccountMessage({
    $13.AccountAssistantServicesAccessAuthDetails? accessAuthDetails,
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
    ..pc<$58.SpaceKnowledgeAction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'knowledgeSpaceActions', $pb.PbFieldType.PE, valueOf: $58.SpaceKnowledgeAction.valueOf, enumValues: $58.SpaceKnowledgeAction.values)
    ..hasRequiredFields = false
  ;

  AccountMessageContext._() : super();
  factory AccountMessageContext({
    $core.Iterable<$58.SpaceKnowledgeAction>? knowledgeSpaceActions,
  }) {
    final _result = create();
    if (knowledgeSpaceActions != null) {
      _result.knowledgeSpaceActions.addAll(knowledgeSpaceActions);
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
  $core.List<$58.SpaceKnowledgeAction> get knowledgeSpaceActions => $_getList(0);
}

