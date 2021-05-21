///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/space/create_space.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/account.pb.dart' as $21;
import '../../../../../../google/protobuf/timestamp.pb.dart' as $54;
import '../../../../entities/space.pb.dart' as $57;

import '../../../../entities/space.pbenum.dart' as $57;

class CreateAccountSpaceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateAccountSpaceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.space'), createEmptyInstance: create)
    ..aOM<$21.Account>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: $21.Account.create)
    ..e<$57.SpaceAccessibilityType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceAccessibilityType', $pb.PbFieldType.OE, defaultOrMaker: $57.SpaceAccessibilityType.CLOSED, valueOf: $57.SpaceAccessibilityType.valueOf, enumValues: $57.SpaceAccessibilityType.values)
    ..e<$57.SpaceIsolationType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceIsolationType', $pb.PbFieldType.OE, defaultOrMaker: $57.SpaceIsolationType.NOT_ISOLATED, valueOf: $57.SpaceIsolationType.valueOf, enumValues: $57.SpaceIsolationType.values)
    ..aOM<$54.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  CreateAccountSpaceRequest._() : super();
  factory CreateAccountSpaceRequest({
    $21.Account? account,
    $57.SpaceAccessibilityType? spaceAccessibilityType,
    $57.SpaceIsolationType? spaceIsolationType,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (spaceAccessibilityType != null) {
      _result.spaceAccessibilityType = spaceAccessibilityType;
    }
    if (spaceIsolationType != null) {
      _result.spaceIsolationType = spaceIsolationType;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory CreateAccountSpaceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateAccountSpaceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateAccountSpaceRequest clone() => CreateAccountSpaceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateAccountSpaceRequest copyWith(void Function(CreateAccountSpaceRequest) updates) => super.copyWith((message) => updates(message as CreateAccountSpaceRequest)) as CreateAccountSpaceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAccountSpaceRequest create() => CreateAccountSpaceRequest._();
  CreateAccountSpaceRequest createEmptyInstance() => create();
  static $pb.PbList<CreateAccountSpaceRequest> createRepeated() => $pb.PbList<CreateAccountSpaceRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateAccountSpaceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAccountSpaceRequest>(create);
  static CreateAccountSpaceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $21.Account get account => $_getN(0);
  @$pb.TagNumber(1)
  set account($21.Account v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccount() => clearField(1);
  @$pb.TagNumber(1)
  $21.Account ensureAccount() => $_ensure(0);

  @$pb.TagNumber(4)
  $57.SpaceAccessibilityType get spaceAccessibilityType => $_getN(1);
  @$pb.TagNumber(4)
  set spaceAccessibilityType($57.SpaceAccessibilityType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpaceAccessibilityType() => $_has(1);
  @$pb.TagNumber(4)
  void clearSpaceAccessibilityType() => clearField(4);

  @$pb.TagNumber(5)
  $57.SpaceIsolationType get spaceIsolationType => $_getN(2);
  @$pb.TagNumber(5)
  set spaceIsolationType($57.SpaceIsolationType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSpaceIsolationType() => $_has(2);
  @$pb.TagNumber(5)
  void clearSpaceIsolationType() => clearField(5);

  @$pb.TagNumber(6)
  $54.Timestamp get requestedAt => $_getN(3);
  @$pb.TagNumber(6)
  set requestedAt($54.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasRequestedAt() => $_has(3);
  @$pb.TagNumber(6)
  void clearRequestedAt() => clearField(6);
  @$pb.TagNumber(6)
  $54.Timestamp ensureRequestedAt() => $_ensure(3);
}

class CreateAccountSpaceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateAccountSpaceResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.space'), createEmptyInstance: create)
    ..aOM<$57.Space>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'space', subBuilder: $57.Space.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createAccountSpaceDone')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createAccountSpaceMessage')
    ..hasRequiredFields = false
  ;

  CreateAccountSpaceResponse._() : super();
  factory CreateAccountSpaceResponse({
    $57.Space? space,
    $core.bool? createAccountSpaceDone,
    $core.String? createAccountSpaceMessage,
  }) {
    final _result = create();
    if (space != null) {
      _result.space = space;
    }
    if (createAccountSpaceDone != null) {
      _result.createAccountSpaceDone = createAccountSpaceDone;
    }
    if (createAccountSpaceMessage != null) {
      _result.createAccountSpaceMessage = createAccountSpaceMessage;
    }
    return _result;
  }
  factory CreateAccountSpaceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateAccountSpaceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateAccountSpaceResponse clone() => CreateAccountSpaceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateAccountSpaceResponse copyWith(void Function(CreateAccountSpaceResponse) updates) => super.copyWith((message) => updates(message as CreateAccountSpaceResponse)) as CreateAccountSpaceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateAccountSpaceResponse create() => CreateAccountSpaceResponse._();
  CreateAccountSpaceResponse createEmptyInstance() => create();
  static $pb.PbList<CreateAccountSpaceResponse> createRepeated() => $pb.PbList<CreateAccountSpaceResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateAccountSpaceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAccountSpaceResponse>(create);
  static CreateAccountSpaceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $57.Space get space => $_getN(0);
  @$pb.TagNumber(1)
  set space($57.Space v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpace() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpace() => clearField(1);
  @$pb.TagNumber(1)
  $57.Space ensureSpace() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get createAccountSpaceDone => $_getBF(1);
  @$pb.TagNumber(2)
  set createAccountSpaceDone($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCreateAccountSpaceDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearCreateAccountSpaceDone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get createAccountSpaceMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set createAccountSpaceMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreateAccountSpaceMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreateAccountSpaceMessage() => clearField(3);
}

