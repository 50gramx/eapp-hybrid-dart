///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/update_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'access_account.pb.dart' as $0;
import '../../../../entities/generic.pb.dart' as $2;

class UpdateAccountProfilePictureRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAccountProfilePictureRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..p<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictureChunks', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  UpdateAccountProfilePictureRequest._() : super();
  factory UpdateAccountProfilePictureRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $core.Iterable<$core.List<$core.int>>? pictureChunks,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (pictureChunks != null) {
      _result.pictureChunks.addAll(pictureChunks);
    }
    return _result;
  }
  factory UpdateAccountProfilePictureRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAccountProfilePictureRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAccountProfilePictureRequest clone() => UpdateAccountProfilePictureRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAccountProfilePictureRequest copyWith(void Function(UpdateAccountProfilePictureRequest) updates) => super.copyWith((message) => updates(message as UpdateAccountProfilePictureRequest)) as UpdateAccountProfilePictureRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAccountProfilePictureRequest create() => UpdateAccountProfilePictureRequest._();
  UpdateAccountProfilePictureRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateAccountProfilePictureRequest> createRepeated() => $pb.PbList<UpdateAccountProfilePictureRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateAccountProfilePictureRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAccountProfilePictureRequest>(create);
  static UpdateAccountProfilePictureRequest? _defaultInstance;

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
  $core.List<$core.List<$core.int>> get pictureChunks => $_getList(1);
}

class UpdateAccountProfilePictureResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAccountProfilePictureResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$2.ResponseMeta>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  UpdateAccountProfilePictureResponse._() : super();
  factory UpdateAccountProfilePictureResponse({
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory UpdateAccountProfilePictureResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAccountProfilePictureResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAccountProfilePictureResponse clone() => UpdateAccountProfilePictureResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAccountProfilePictureResponse copyWith(void Function(UpdateAccountProfilePictureResponse) updates) => super.copyWith((message) => updates(message as UpdateAccountProfilePictureResponse)) as UpdateAccountProfilePictureResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAccountProfilePictureResponse create() => UpdateAccountProfilePictureResponse._();
  UpdateAccountProfilePictureResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateAccountProfilePictureResponse> createRepeated() => $pb.PbList<UpdateAccountProfilePictureResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateAccountProfilePictureResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAccountProfilePictureResponse>(create);
  static UpdateAccountProfilePictureResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $2.ResponseMeta get responseMeta => $_getN(0);
  @$pb.TagNumber(1)
  set responseMeta($2.ResponseMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResponseMeta() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponseMeta() => clearField(1);
  @$pb.TagNumber(1)
  $2.ResponseMeta ensureResponseMeta() => $_ensure(0);
}

