///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge/create_space_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../identity/space/access_space.pb.dart' as $14;
import '../../../../../../google/protobuf/timestamp.pb.dart' as $54;
import 'access_space_knowledge.pb.dart' as $23;

export '../../../../../../google/protobuf/timestamp.pb.dart';
class CreateAccountSpaceKnowledgeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateAccountSpaceKnowledgeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.space'), createEmptyInstance: create)
    ..aOM<$14.SpaceServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceServiceAccessAuthDetails', subBuilder: $14.SpaceServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeName')
    ..aOM<$54.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  CreateAccountSpaceKnowledgeRequest._() : super();
  factory CreateAccountSpaceKnowledgeRequest({
    $14.SpaceServicesAccessAuthDetails? spaceServiceAccessAuthDetails,
    $core.String? spaceKnowledgeName,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (spaceServiceAccessAuthDetails != null) {
      _result.spaceServiceAccessAuthDetails = spaceServiceAccessAuthDetails;
    }
    if (spaceKnowledgeName != null) {
      _result.spaceKnowledgeName = spaceKnowledgeName;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory CreateAccountSpaceKnowledgeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateAccountSpaceKnowledgeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateAccountSpaceKnowledgeRequest clone() => CreateAccountSpaceKnowledgeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateAccountSpaceKnowledgeRequest copyWith(void Function(CreateAccountSpaceKnowledgeRequest) updates) => super.copyWith((message) => updates(message as CreateAccountSpaceKnowledgeRequest)) as CreateAccountSpaceKnowledgeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAccountSpaceKnowledgeRequest create() => CreateAccountSpaceKnowledgeRequest._();
  CreateAccountSpaceKnowledgeRequest createEmptyInstance() => create();
  static $pb.PbList<CreateAccountSpaceKnowledgeRequest> createRepeated() => $pb.PbList<CreateAccountSpaceKnowledgeRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateAccountSpaceKnowledgeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAccountSpaceKnowledgeRequest>(create);
  static CreateAccountSpaceKnowledgeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $14.SpaceServicesAccessAuthDetails get spaceServiceAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set spaceServiceAccessAuthDetails($14.SpaceServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceServiceAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceServiceAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $14.SpaceServicesAccessAuthDetails ensureSpaceServiceAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get spaceKnowledgeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeName() => clearField(2);

  @$pb.TagNumber(6)
  $54.Timestamp get requestedAt => $_getN(2);
  @$pb.TagNumber(6)
  set requestedAt($54.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasRequestedAt() => $_has(2);
  @$pb.TagNumber(6)
  void clearRequestedAt() => clearField(6);
  @$pb.TagNumber(6)
  $54.Timestamp ensureRequestedAt() => $_ensure(2);
}

class CreateAccountSpaceKnowledgeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateAccountSpaceKnowledgeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.space'), createEmptyInstance: create)
    ..aOM<$23.SpaceKnowledgeServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeServicesAccessAuthDetails', subBuilder: $23.SpaceKnowledgeServicesAccessAuthDetails.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createAccountSpaceKnowledgeDone')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createAccountSpaceKnowledgeMessage')
    ..hasRequiredFields = false
  ;

  CreateAccountSpaceKnowledgeResponse._() : super();
  factory CreateAccountSpaceKnowledgeResponse({
    $23.SpaceKnowledgeServicesAccessAuthDetails? spaceKnowledgeServicesAccessAuthDetails,
    $core.bool? createAccountSpaceKnowledgeDone,
    $core.String? createAccountSpaceKnowledgeMessage,
  }) {
    final _result = create();
    if (spaceKnowledgeServicesAccessAuthDetails != null) {
      _result.spaceKnowledgeServicesAccessAuthDetails = spaceKnowledgeServicesAccessAuthDetails;
    }
    if (createAccountSpaceKnowledgeDone != null) {
      _result.createAccountSpaceKnowledgeDone = createAccountSpaceKnowledgeDone;
    }
    if (createAccountSpaceKnowledgeMessage != null) {
      _result.createAccountSpaceKnowledgeMessage = createAccountSpaceKnowledgeMessage;
    }
    return _result;
  }
  factory CreateAccountSpaceKnowledgeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateAccountSpaceKnowledgeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateAccountSpaceKnowledgeResponse clone() => CreateAccountSpaceKnowledgeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateAccountSpaceKnowledgeResponse copyWith(void Function(CreateAccountSpaceKnowledgeResponse) updates) => super.copyWith((message) => updates(message as CreateAccountSpaceKnowledgeResponse)) as CreateAccountSpaceKnowledgeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAccountSpaceKnowledgeResponse create() => CreateAccountSpaceKnowledgeResponse._();
  CreateAccountSpaceKnowledgeResponse createEmptyInstance() => create();
  static $pb.PbList<CreateAccountSpaceKnowledgeResponse> createRepeated() => $pb.PbList<CreateAccountSpaceKnowledgeResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateAccountSpaceKnowledgeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAccountSpaceKnowledgeResponse>(create);
  static CreateAccountSpaceKnowledgeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $23.SpaceKnowledgeServicesAccessAuthDetails get spaceKnowledgeServicesAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeServicesAccessAuthDetails($23.SpaceKnowledgeServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeServicesAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeServicesAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $23.SpaceKnowledgeServicesAccessAuthDetails ensureSpaceKnowledgeServicesAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get createAccountSpaceKnowledgeDone => $_getBF(1);
  @$pb.TagNumber(2)
  set createAccountSpaceKnowledgeDone($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateAccountSpaceKnowledgeDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateAccountSpaceKnowledgeDone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get createAccountSpaceKnowledgeMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set createAccountSpaceKnowledgeMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreateAccountSpaceKnowledgeMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreateAccountSpaceKnowledgeMessage() => clearField(3);
}

