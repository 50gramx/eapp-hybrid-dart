///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/discover_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/account.pb.dart' as $21;
import '../../../../entities/generic.pb.dart' as $2;
import 'access_account.pb.dart' as $0;

import '../../../../entities/generic.pbenum.dart' as $2;

class GetAccountByIdRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountByIdRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..hasRequiredFields = false
  ;

  GetAccountByIdRequest._() : super();
  factory GetAccountByIdRequest({
    $core.String? accountId,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    return _result;
  }
  factory GetAccountByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountByIdRequest clone() => GetAccountByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountByIdRequest copyWith(void Function(GetAccountByIdRequest) updates) => super.copyWith((message) => updates(message as GetAccountByIdRequest)) as GetAccountByIdRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountByIdRequest create() => GetAccountByIdRequest._();
  GetAccountByIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountByIdRequest> createRepeated() => $pb.PbList<GetAccountByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAccountByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountByIdRequest>(create);
  static GetAccountByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);
}

class GetAccountByIdResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountByIdResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$21.Account>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: $21.Account.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetAccountByIdResponse._() : super();
  factory GetAccountByIdResponse({
    $21.Account? account,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetAccountByIdResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountByIdResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountByIdResponse clone() => GetAccountByIdResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountByIdResponse copyWith(void Function(GetAccountByIdResponse) updates) => super.copyWith((message) => updates(message as GetAccountByIdResponse)) as GetAccountByIdResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountByIdResponse create() => GetAccountByIdResponse._();
  GetAccountByIdResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountByIdResponse> createRepeated() => $pb.PbList<GetAccountByIdResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountByIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountByIdResponse>(create);
  static GetAccountByIdResponse? _defaultInstance;

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

class GetAccountProfilePictureRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountProfilePictureRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..e<$2.PictureSize>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictureSize', $pb.PbFieldType.OE, defaultOrMaker: $2.PictureSize.x20, valueOf: $2.PictureSize.valueOf, enumValues: $2.PictureSize.values)
    ..e<$2.PictureScale>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pictureScale', $pb.PbFieldType.OE, defaultOrMaker: $2.PictureScale.x1, valueOf: $2.PictureScale.valueOf, enumValues: $2.PictureScale.values)
    ..hasRequiredFields = false
  ;

  GetAccountProfilePictureRequest._() : super();
  factory GetAccountProfilePictureRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $2.PictureSize? pictureSize,
    $2.PictureScale? pictureScale,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (pictureSize != null) {
      _result.pictureSize = pictureSize;
    }
    if (pictureScale != null) {
      _result.pictureScale = pictureScale;
    }
    return _result;
  }
  factory GetAccountProfilePictureRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountProfilePictureRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountProfilePictureRequest clone() => GetAccountProfilePictureRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountProfilePictureRequest copyWith(void Function(GetAccountProfilePictureRequest) updates) => super.copyWith((message) => updates(message as GetAccountProfilePictureRequest)) as GetAccountProfilePictureRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountProfilePictureRequest create() => GetAccountProfilePictureRequest._();
  GetAccountProfilePictureRequest createEmptyInstance() => create();
  static $pb.PbList<GetAccountProfilePictureRequest> createRepeated() => $pb.PbList<GetAccountProfilePictureRequest>();
  @$core.pragma('dart2js:noInline')
  static GetAccountProfilePictureRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountProfilePictureRequest>(create);
  static GetAccountProfilePictureRequest? _defaultInstance;

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
  $2.PictureSize get pictureSize => $_getN(1);
  @$pb.TagNumber(2)
  set pictureSize($2.PictureSize v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPictureSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPictureSize() => clearField(2);

  @$pb.TagNumber(3)
  $2.PictureScale get pictureScale => $_getN(2);
  @$pb.TagNumber(3)
  set pictureScale($2.PictureScale v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPictureScale() => $_has(2);
  @$pb.TagNumber(3)
  void clearPictureScale() => clearField(3);
}

class GetAccountProfilePictureResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountProfilePictureResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageData', $pb.PbFieldType.PY)
    ..aOM<$2.ResponseMeta>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  GetAccountProfilePictureResponse._() : super();
  factory GetAccountProfilePictureResponse({
    $core.Iterable<$core.List<$core.int>>? imageData,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (imageData != null) {
      _result.imageData.addAll(imageData);
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory GetAccountProfilePictureResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountProfilePictureResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountProfilePictureResponse clone() => GetAccountProfilePictureResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountProfilePictureResponse copyWith(void Function(GetAccountProfilePictureResponse) updates) => super.copyWith((message) => updates(message as GetAccountProfilePictureResponse)) as GetAccountProfilePictureResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountProfilePictureResponse create() => GetAccountProfilePictureResponse._();
  GetAccountProfilePictureResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountProfilePictureResponse> createRepeated() => $pb.PbList<GetAccountProfilePictureResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountProfilePictureResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountProfilePictureResponse>(create);
  static GetAccountProfilePictureResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get imageData => $_getList(0);

  @$pb.TagNumber(3)
  $2.ResponseMeta get responseMeta => $_getN(1);
  @$pb.TagNumber(3)
  set responseMeta($2.ResponseMeta v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResponseMeta() => $_has(1);
  @$pb.TagNumber(3)
  void clearResponseMeta() => clearField(3);
  @$pb.TagNumber(3)
  $2.ResponseMeta ensureResponseMeta() => $_ensure(1);
}

class IsAccountExistsWithMobileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'IsAccountExistsWithMobileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountCountryCode')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobileNumber')
    ..hasRequiredFields = false
  ;

  IsAccountExistsWithMobileRequest._() : super();
  factory IsAccountExistsWithMobileRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $core.String? accountCountryCode,
    $core.String? accountMobileNumber,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (accountCountryCode != null) {
      _result.accountCountryCode = accountCountryCode;
    }
    if (accountMobileNumber != null) {
      _result.accountMobileNumber = accountMobileNumber;
    }
    return _result;
  }
  factory IsAccountExistsWithMobileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IsAccountExistsWithMobileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IsAccountExistsWithMobileRequest clone() => IsAccountExistsWithMobileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IsAccountExistsWithMobileRequest copyWith(void Function(IsAccountExistsWithMobileRequest) updates) => super.copyWith((message) => updates(message as IsAccountExistsWithMobileRequest)) as IsAccountExistsWithMobileRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static IsAccountExistsWithMobileRequest create() => IsAccountExistsWithMobileRequest._();
  IsAccountExistsWithMobileRequest createEmptyInstance() => create();
  static $pb.PbList<IsAccountExistsWithMobileRequest> createRepeated() => $pb.PbList<IsAccountExistsWithMobileRequest>();
  @$core.pragma('dart2js:noInline')
  static IsAccountExistsWithMobileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IsAccountExistsWithMobileRequest>(create);
  static IsAccountExistsWithMobileRequest? _defaultInstance;

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
  $core.String get accountCountryCode => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountCountryCode($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountCountryCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountCountryCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountMobileNumber => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountMobileNumber($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountMobileNumber() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountMobileNumber() => clearField(3);
}

class AreAccountsExistingWithMobileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AreAccountsExistingWithMobileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..pc<$21.AccountMobile>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobiles', $pb.PbFieldType.PM, subBuilder: $21.AccountMobile.create)
    ..hasRequiredFields = false
  ;

  AreAccountsExistingWithMobileRequest._() : super();
  factory AreAccountsExistingWithMobileRequest({
    $0.AccountServicesAccessAuthDetails? accessAuthDetails,
    $core.Iterable<$21.AccountMobile>? accountMobiles,
  }) {
    final _result = create();
    if (accessAuthDetails != null) {
      _result.accessAuthDetails = accessAuthDetails;
    }
    if (accountMobiles != null) {
      _result.accountMobiles.addAll(accountMobiles);
    }
    return _result;
  }
  factory AreAccountsExistingWithMobileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AreAccountsExistingWithMobileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AreAccountsExistingWithMobileRequest clone() => AreAccountsExistingWithMobileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AreAccountsExistingWithMobileRequest copyWith(void Function(AreAccountsExistingWithMobileRequest) updates) => super.copyWith((message) => updates(message as AreAccountsExistingWithMobileRequest)) as AreAccountsExistingWithMobileRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AreAccountsExistingWithMobileRequest create() => AreAccountsExistingWithMobileRequest._();
  AreAccountsExistingWithMobileRequest createEmptyInstance() => create();
  static $pb.PbList<AreAccountsExistingWithMobileRequest> createRepeated() => $pb.PbList<AreAccountsExistingWithMobileRequest>();
  @$core.pragma('dart2js:noInline')
  static AreAccountsExistingWithMobileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AreAccountsExistingWithMobileRequest>(create);
  static AreAccountsExistingWithMobileRequest? _defaultInstance;

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
  $core.List<$21.AccountMobile> get accountMobiles => $_getList(1);
}

class AreAccountsExistingWithMobileResponse_AccountMobileExists extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AreAccountsExistingWithMobileResponse.AccountMobileExists', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountCountryCode')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobileNumber')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountExists')
    ..hasRequiredFields = false
  ;

  AreAccountsExistingWithMobileResponse_AccountMobileExists._() : super();
  factory AreAccountsExistingWithMobileResponse_AccountMobileExists({
    $core.String? accountCountryCode,
    $core.String? accountMobileNumber,
    $core.bool? accountExists,
  }) {
    final _result = create();
    if (accountCountryCode != null) {
      _result.accountCountryCode = accountCountryCode;
    }
    if (accountMobileNumber != null) {
      _result.accountMobileNumber = accountMobileNumber;
    }
    if (accountExists != null) {
      _result.accountExists = accountExists;
    }
    return _result;
  }
  factory AreAccountsExistingWithMobileResponse_AccountMobileExists.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AreAccountsExistingWithMobileResponse_AccountMobileExists.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AreAccountsExistingWithMobileResponse_AccountMobileExists clone() => AreAccountsExistingWithMobileResponse_AccountMobileExists()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AreAccountsExistingWithMobileResponse_AccountMobileExists copyWith(void Function(AreAccountsExistingWithMobileResponse_AccountMobileExists) updates) => super.copyWith((message) => updates(message as AreAccountsExistingWithMobileResponse_AccountMobileExists)) as AreAccountsExistingWithMobileResponse_AccountMobileExists; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AreAccountsExistingWithMobileResponse_AccountMobileExists create() => AreAccountsExistingWithMobileResponse_AccountMobileExists._();
  AreAccountsExistingWithMobileResponse_AccountMobileExists createEmptyInstance() => create();
  static $pb.PbList<AreAccountsExistingWithMobileResponse_AccountMobileExists> createRepeated() => $pb.PbList<AreAccountsExistingWithMobileResponse_AccountMobileExists>();
  @$core.pragma('dart2js:noInline')
  static AreAccountsExistingWithMobileResponse_AccountMobileExists getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AreAccountsExistingWithMobileResponse_AccountMobileExists>(create);
  static AreAccountsExistingWithMobileResponse_AccountMobileExists? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountCountryCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountCountryCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountCountryCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountCountryCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountMobileNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountMobileNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountMobileNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountMobileNumber() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get accountExists => $_getBF(2);
  @$pb.TagNumber(3)
  set accountExists($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountExists() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountExists() => clearField(3);
}

class AreAccountsExistingWithMobileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AreAccountsExistingWithMobileResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<AreAccountsExistingWithMobileResponse_AccountMobileExists>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobilesExists', subBuilder: AreAccountsExistingWithMobileResponse_AccountMobileExists.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  AreAccountsExistingWithMobileResponse._() : super();
  factory AreAccountsExistingWithMobileResponse({
    AreAccountsExistingWithMobileResponse_AccountMobileExists? accountMobilesExists,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (accountMobilesExists != null) {
      _result.accountMobilesExists = accountMobilesExists;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory AreAccountsExistingWithMobileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AreAccountsExistingWithMobileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AreAccountsExistingWithMobileResponse clone() => AreAccountsExistingWithMobileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AreAccountsExistingWithMobileResponse copyWith(void Function(AreAccountsExistingWithMobileResponse) updates) => super.copyWith((message) => updates(message as AreAccountsExistingWithMobileResponse)) as AreAccountsExistingWithMobileResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AreAccountsExistingWithMobileResponse create() => AreAccountsExistingWithMobileResponse._();
  AreAccountsExistingWithMobileResponse createEmptyInstance() => create();
  static $pb.PbList<AreAccountsExistingWithMobileResponse> createRepeated() => $pb.PbList<AreAccountsExistingWithMobileResponse>();
  @$core.pragma('dart2js:noInline')
  static AreAccountsExistingWithMobileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AreAccountsExistingWithMobileResponse>(create);
  static AreAccountsExistingWithMobileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AreAccountsExistingWithMobileResponse_AccountMobileExists get accountMobilesExists => $_getN(0);
  @$pb.TagNumber(1)
  set accountMobilesExists(AreAccountsExistingWithMobileResponse_AccountMobileExists v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountMobilesExists() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountMobilesExists() => clearField(1);
  @$pb.TagNumber(1)
  AreAccountsExistingWithMobileResponse_AccountMobileExists ensureAccountMobilesExists() => $_ensure(0);

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

