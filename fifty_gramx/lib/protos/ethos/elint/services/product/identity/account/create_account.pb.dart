///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/create_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../../../google/protobuf/timestamp.pb.dart' as $54;
import '../../../../entities/generic.pb.dart' as $2;
import '../../../../entities/account.pb.dart' as $21;
import 'access_account.pb.dart' as $0;

import '../../../../entities/account.pbenum.dart' as $21;

class ValidateAccountWithMobileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValidateAccountWithMobileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobileCountryCode')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobileNumber')
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ValidateAccountWithMobileRequest._() : super();
  factory ValidateAccountWithMobileRequest({
    $core.String? accountMobileCountryCode,
    $core.String? accountMobileNumber,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (accountMobileCountryCode != null) {
      _result.accountMobileCountryCode = accountMobileCountryCode;
    }
    if (accountMobileNumber != null) {
      _result.accountMobileNumber = accountMobileNumber;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory ValidateAccountWithMobileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAccountWithMobileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAccountWithMobileRequest clone() => ValidateAccountWithMobileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAccountWithMobileRequest copyWith(void Function(ValidateAccountWithMobileRequest) updates) => super.copyWith((message) => updates(message as ValidateAccountWithMobileRequest)) as ValidateAccountWithMobileRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidateAccountWithMobileRequest create() => ValidateAccountWithMobileRequest._();
  ValidateAccountWithMobileRequest createEmptyInstance() => create();
  static $pb.PbList<ValidateAccountWithMobileRequest> createRepeated() => $pb.PbList<ValidateAccountWithMobileRequest>();
  @$core.pragma('dart2js:noInline')
  static ValidateAccountWithMobileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAccountWithMobileRequest>(create);
  static ValidateAccountWithMobileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountMobileCountryCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountMobileCountryCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountMobileCountryCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountMobileCountryCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountMobileNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountMobileNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountMobileNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountMobileNumber() => clearField(2);

  @$pb.TagNumber(3)
  $54.Timestamp get requestedAt => $_getN(2);
  @$pb.TagNumber(3)
  set requestedAt($54.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRequestedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestedAt() => clearField(3);
  @$pb.TagNumber(3)
  $54.Timestamp ensureRequestedAt() => $_ensure(2);
}

class ValidateAccountWithMobileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValidateAccountWithMobileResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<AccountCreationAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountCreationAuthDetails', subBuilder: AccountCreationAuthDetails.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountExistsWithMobile')
    ..aOM<$2.TemporaryTokenDetails>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verificationCodeTokenDetails', subBuilder: $2.TemporaryTokenDetails.create)
    ..aOM<$54.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeSentAt', subBuilder: $54.Timestamp.create)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validateAccountWithMobileDone')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validateAccountWithMobileMessage')
    ..hasRequiredFields = false
  ;

  ValidateAccountWithMobileResponse._() : super();
  factory ValidateAccountWithMobileResponse({
    AccountCreationAuthDetails? accountCreationAuthDetails,
    $core.bool? accountExistsWithMobile,
    $2.TemporaryTokenDetails? verificationCodeTokenDetails,
    $54.Timestamp? codeSentAt,
    $core.bool? validateAccountWithMobileDone,
    $core.String? validateAccountWithMobileMessage,
  }) {
    final _result = create();
    if (accountCreationAuthDetails != null) {
      _result.accountCreationAuthDetails = accountCreationAuthDetails;
    }
    if (accountExistsWithMobile != null) {
      _result.accountExistsWithMobile = accountExistsWithMobile;
    }
    if (verificationCodeTokenDetails != null) {
      _result.verificationCodeTokenDetails = verificationCodeTokenDetails;
    }
    if (codeSentAt != null) {
      _result.codeSentAt = codeSentAt;
    }
    if (validateAccountWithMobileDone != null) {
      _result.validateAccountWithMobileDone = validateAccountWithMobileDone;
    }
    if (validateAccountWithMobileMessage != null) {
      _result.validateAccountWithMobileMessage = validateAccountWithMobileMessage;
    }
    return _result;
  }
  factory ValidateAccountWithMobileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAccountWithMobileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAccountWithMobileResponse clone() => ValidateAccountWithMobileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAccountWithMobileResponse copyWith(void Function(ValidateAccountWithMobileResponse) updates) => super.copyWith((message) => updates(message as ValidateAccountWithMobileResponse)) as ValidateAccountWithMobileResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidateAccountWithMobileResponse create() => ValidateAccountWithMobileResponse._();
  ValidateAccountWithMobileResponse createEmptyInstance() => create();
  static $pb.PbList<ValidateAccountWithMobileResponse> createRepeated() => $pb.PbList<ValidateAccountWithMobileResponse>();
  @$core.pragma('dart2js:noInline')
  static ValidateAccountWithMobileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAccountWithMobileResponse>(create);
  static ValidateAccountWithMobileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AccountCreationAuthDetails get accountCreationAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accountCreationAuthDetails(AccountCreationAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountCreationAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountCreationAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  AccountCreationAuthDetails ensureAccountCreationAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get accountExistsWithMobile => $_getBF(1);
  @$pb.TagNumber(2)
  set accountExistsWithMobile($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountExistsWithMobile() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountExistsWithMobile() => clearField(2);

  @$pb.TagNumber(3)
  $2.TemporaryTokenDetails get verificationCodeTokenDetails => $_getN(2);
  @$pb.TagNumber(3)
  set verificationCodeTokenDetails($2.TemporaryTokenDetails v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasVerificationCodeTokenDetails() => $_has(2);
  @$pb.TagNumber(3)
  void clearVerificationCodeTokenDetails() => clearField(3);
  @$pb.TagNumber(3)
  $2.TemporaryTokenDetails ensureVerificationCodeTokenDetails() => $_ensure(2);

  @$pb.TagNumber(4)
  $54.Timestamp get codeSentAt => $_getN(3);
  @$pb.TagNumber(4)
  set codeSentAt($54.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCodeSentAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCodeSentAt() => clearField(4);
  @$pb.TagNumber(4)
  $54.Timestamp ensureCodeSentAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.bool get validateAccountWithMobileDone => $_getBF(4);
  @$pb.TagNumber(5)
  set validateAccountWithMobileDone($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasValidateAccountWithMobileDone() => $_has(4);
  @$pb.TagNumber(5)
  void clearValidateAccountWithMobileDone() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get validateAccountWithMobileMessage => $_getSZ(5);
  @$pb.TagNumber(6)
  set validateAccountWithMobileMessage($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasValidateAccountWithMobileMessage() => $_has(5);
  @$pb.TagNumber(6)
  void clearValidateAccountWithMobileMessage() => clearField(6);
}

class VerificationAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerificationAccountRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<AccountCreationAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountCreationAuthDetails', subBuilder: AccountCreationAuthDetails.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resendCode')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verificationCode')
    ..aOM<$2.TemporaryTokenDetails>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verificationCodeTokenDetails', subBuilder: $2.TemporaryTokenDetails.create)
    ..aOM<$54.Timestamp>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  VerificationAccountRequest._() : super();
  factory VerificationAccountRequest({
    AccountCreationAuthDetails? accountCreationAuthDetails,
    $core.bool? resendCode,
    $core.String? verificationCode,
    $2.TemporaryTokenDetails? verificationCodeTokenDetails,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (accountCreationAuthDetails != null) {
      _result.accountCreationAuthDetails = accountCreationAuthDetails;
    }
    if (resendCode != null) {
      _result.resendCode = resendCode;
    }
    if (verificationCode != null) {
      _result.verificationCode = verificationCode;
    }
    if (verificationCodeTokenDetails != null) {
      _result.verificationCodeTokenDetails = verificationCodeTokenDetails;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory VerificationAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerificationAccountRequest clone() => VerificationAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerificationAccountRequest copyWith(void Function(VerificationAccountRequest) updates) => super.copyWith((message) => updates(message as VerificationAccountRequest)) as VerificationAccountRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerificationAccountRequest create() => VerificationAccountRequest._();
  VerificationAccountRequest createEmptyInstance() => create();
  static $pb.PbList<VerificationAccountRequest> createRepeated() => $pb.PbList<VerificationAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static VerificationAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerificationAccountRequest>(create);
  static VerificationAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AccountCreationAuthDetails get accountCreationAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accountCreationAuthDetails(AccountCreationAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountCreationAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountCreationAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  AccountCreationAuthDetails ensureAccountCreationAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get resendCode => $_getBF(1);
  @$pb.TagNumber(2)
  set resendCode($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResendCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearResendCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get verificationCode => $_getSZ(2);
  @$pb.TagNumber(3)
  set verificationCode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVerificationCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearVerificationCode() => clearField(3);

  @$pb.TagNumber(4)
  $2.TemporaryTokenDetails get verificationCodeTokenDetails => $_getN(3);
  @$pb.TagNumber(4)
  set verificationCodeTokenDetails($2.TemporaryTokenDetails v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasVerificationCodeTokenDetails() => $_has(3);
  @$pb.TagNumber(4)
  void clearVerificationCodeTokenDetails() => clearField(4);
  @$pb.TagNumber(4)
  $2.TemporaryTokenDetails ensureVerificationCodeTokenDetails() => $_ensure(3);

  @$pb.TagNumber(5)
  $54.Timestamp get requestedAt => $_getN(4);
  @$pb.TagNumber(5)
  set requestedAt($54.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasRequestedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearRequestedAt() => clearField(5);
  @$pb.TagNumber(5)
  $54.Timestamp ensureRequestedAt() => $_ensure(4);
}

class VerificationAccountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerificationAccountResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verificationDone')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verificationMessage')
    ..hasRequiredFields = false
  ;

  VerificationAccountResponse._() : super();
  factory VerificationAccountResponse({
    $core.bool? verificationDone,
    $core.String? verificationMessage,
  }) {
    final _result = create();
    if (verificationDone != null) {
      _result.verificationDone = verificationDone;
    }
    if (verificationMessage != null) {
      _result.verificationMessage = verificationMessage;
    }
    return _result;
  }
  factory VerificationAccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationAccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerificationAccountResponse clone() => VerificationAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerificationAccountResponse copyWith(void Function(VerificationAccountResponse) updates) => super.copyWith((message) => updates(message as VerificationAccountResponse)) as VerificationAccountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerificationAccountResponse create() => VerificationAccountResponse._();
  VerificationAccountResponse createEmptyInstance() => create();
  static $pb.PbList<VerificationAccountResponse> createRepeated() => $pb.PbList<VerificationAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static VerificationAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerificationAccountResponse>(create);
  static VerificationAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get verificationDone => $_getBF(0);
  @$pb.TagNumber(1)
  set verificationDone($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVerificationDone() => $_has(0);
  @$pb.TagNumber(1)
  void clearVerificationDone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get verificationMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set verificationMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVerificationMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearVerificationMessage() => clearField(2);
}

class CaptureAccountMetaDetailsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CaptureAccountMetaDetailsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<AccountCreationAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountCreationAuthDetails', subBuilder: AccountCreationAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountFirstName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountLastName')
    ..aOM<$54.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountBirthAt', subBuilder: $54.Timestamp.create)
    ..e<$21.AccountGender>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountGender', $pb.PbFieldType.OE, defaultOrMaker: $21.AccountGender.UNKNOWN, valueOf: $21.AccountGender.valueOf, enumValues: $21.AccountGender.values)
    ..aOM<$21.AccountDeviceDetails>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountDeviceDetails', subBuilder: $21.AccountDeviceDetails.create)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAssistantName')
    ..aOM<$54.Timestamp>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  CaptureAccountMetaDetailsRequest._() : super();
  factory CaptureAccountMetaDetailsRequest({
    AccountCreationAuthDetails? accountCreationAuthDetails,
    $core.String? accountFirstName,
    $core.String? accountLastName,
    $54.Timestamp? accountBirthAt,
    $21.AccountGender? accountGender,
    $21.AccountDeviceDetails? accountDeviceDetails,
    $core.String? accountAssistantName,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (accountCreationAuthDetails != null) {
      _result.accountCreationAuthDetails = accountCreationAuthDetails;
    }
    if (accountFirstName != null) {
      _result.accountFirstName = accountFirstName;
    }
    if (accountLastName != null) {
      _result.accountLastName = accountLastName;
    }
    if (accountBirthAt != null) {
      _result.accountBirthAt = accountBirthAt;
    }
    if (accountGender != null) {
      _result.accountGender = accountGender;
    }
    if (accountDeviceDetails != null) {
      _result.accountDeviceDetails = accountDeviceDetails;
    }
    if (accountAssistantName != null) {
      _result.accountAssistantName = accountAssistantName;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory CaptureAccountMetaDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CaptureAccountMetaDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CaptureAccountMetaDetailsRequest clone() => CaptureAccountMetaDetailsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CaptureAccountMetaDetailsRequest copyWith(void Function(CaptureAccountMetaDetailsRequest) updates) => super.copyWith((message) => updates(message as CaptureAccountMetaDetailsRequest)) as CaptureAccountMetaDetailsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CaptureAccountMetaDetailsRequest create() => CaptureAccountMetaDetailsRequest._();
  CaptureAccountMetaDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<CaptureAccountMetaDetailsRequest> createRepeated() => $pb.PbList<CaptureAccountMetaDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static CaptureAccountMetaDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaptureAccountMetaDetailsRequest>(create);
  static CaptureAccountMetaDetailsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AccountCreationAuthDetails get accountCreationAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accountCreationAuthDetails(AccountCreationAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountCreationAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountCreationAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  AccountCreationAuthDetails ensureAccountCreationAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get accountFirstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountFirstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountLastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountLastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountLastName() => clearField(3);

  @$pb.TagNumber(4)
  $54.Timestamp get accountBirthAt => $_getN(3);
  @$pb.TagNumber(4)
  set accountBirthAt($54.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccountBirthAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountBirthAt() => clearField(4);
  @$pb.TagNumber(4)
  $54.Timestamp ensureAccountBirthAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $21.AccountGender get accountGender => $_getN(4);
  @$pb.TagNumber(5)
  set accountGender($21.AccountGender v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccountGender() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccountGender() => clearField(5);

  @$pb.TagNumber(6)
  $21.AccountDeviceDetails get accountDeviceDetails => $_getN(5);
  @$pb.TagNumber(6)
  set accountDeviceDetails($21.AccountDeviceDetails v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAccountDeviceDetails() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccountDeviceDetails() => clearField(6);
  @$pb.TagNumber(6)
  $21.AccountDeviceDetails ensureAccountDeviceDetails() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get accountAssistantName => $_getSZ(6);
  @$pb.TagNumber(7)
  set accountAssistantName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAccountAssistantName() => $_has(6);
  @$pb.TagNumber(7)
  void clearAccountAssistantName() => clearField(7);

  @$pb.TagNumber(8)
  $54.Timestamp get requestedAt => $_getN(7);
  @$pb.TagNumber(8)
  set requestedAt($54.Timestamp v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasRequestedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearRequestedAt() => clearField(8);
  @$pb.TagNumber(8)
  $54.Timestamp ensureRequestedAt() => $_ensure(7);
}

class CaptureAccountMetaDetailsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CaptureAccountMetaDetailsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$0.AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountServiceAccessAuthDetails', subBuilder: $0.AccountServicesAccessAuthDetails.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountCreationDone')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountCreationMessage')
    ..hasRequiredFields = false
  ;

  CaptureAccountMetaDetailsResponse._() : super();
  factory CaptureAccountMetaDetailsResponse({
    $0.AccountServicesAccessAuthDetails? accountServiceAccessAuthDetails,
    $core.bool? accountCreationDone,
    $core.String? accountCreationMessage,
  }) {
    final _result = create();
    if (accountServiceAccessAuthDetails != null) {
      _result.accountServiceAccessAuthDetails = accountServiceAccessAuthDetails;
    }
    if (accountCreationDone != null) {
      _result.accountCreationDone = accountCreationDone;
    }
    if (accountCreationMessage != null) {
      _result.accountCreationMessage = accountCreationMessage;
    }
    return _result;
  }
  factory CaptureAccountMetaDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CaptureAccountMetaDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CaptureAccountMetaDetailsResponse clone() => CaptureAccountMetaDetailsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CaptureAccountMetaDetailsResponse copyWith(void Function(CaptureAccountMetaDetailsResponse) updates) => super.copyWith((message) => updates(message as CaptureAccountMetaDetailsResponse)) as CaptureAccountMetaDetailsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CaptureAccountMetaDetailsResponse create() => CaptureAccountMetaDetailsResponse._();
  CaptureAccountMetaDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<CaptureAccountMetaDetailsResponse> createRepeated() => $pb.PbList<CaptureAccountMetaDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static CaptureAccountMetaDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CaptureAccountMetaDetailsResponse>(create);
  static CaptureAccountMetaDetailsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails get accountServiceAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accountServiceAccessAuthDetails($0.AccountServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountServiceAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountServiceAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $0.AccountServicesAccessAuthDetails ensureAccountServiceAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get accountCreationDone => $_getBF(1);
  @$pb.TagNumber(2)
  set accountCreationDone($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountCreationDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountCreationDone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountCreationMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountCreationMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountCreationMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountCreationMessage() => clearField(3);
}

class AccountCreationAuthDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountCreationAuthDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobileCountryCode')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobileNumber')
    ..aOM<$2.PersistentSessionTokenDetails>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountCreationSessionTokenDetails', subBuilder: $2.PersistentSessionTokenDetails.create)
    ..aOM<$54.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AccountCreationAuthDetails._() : super();
  factory AccountCreationAuthDetails({
    $core.String? accountMobileCountryCode,
    $core.String? accountMobileNumber,
    $2.PersistentSessionTokenDetails? accountCreationSessionTokenDetails,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (accountMobileCountryCode != null) {
      _result.accountMobileCountryCode = accountMobileCountryCode;
    }
    if (accountMobileNumber != null) {
      _result.accountMobileNumber = accountMobileNumber;
    }
    if (accountCreationSessionTokenDetails != null) {
      _result.accountCreationSessionTokenDetails = accountCreationSessionTokenDetails;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory AccountCreationAuthDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountCreationAuthDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountCreationAuthDetails clone() => AccountCreationAuthDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountCreationAuthDetails copyWith(void Function(AccountCreationAuthDetails) updates) => super.copyWith((message) => updates(message as AccountCreationAuthDetails)) as AccountCreationAuthDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountCreationAuthDetails create() => AccountCreationAuthDetails._();
  AccountCreationAuthDetails createEmptyInstance() => create();
  static $pb.PbList<AccountCreationAuthDetails> createRepeated() => $pb.PbList<AccountCreationAuthDetails>();
  @$core.pragma('dart2js:noInline')
  static AccountCreationAuthDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountCreationAuthDetails>(create);
  static AccountCreationAuthDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountMobileCountryCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountMobileCountryCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountMobileCountryCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountMobileCountryCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountMobileNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountMobileNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountMobileNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountMobileNumber() => clearField(2);

  @$pb.TagNumber(3)
  $2.PersistentSessionTokenDetails get accountCreationSessionTokenDetails => $_getN(2);
  @$pb.TagNumber(3)
  set accountCreationSessionTokenDetails($2.PersistentSessionTokenDetails v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountCreationSessionTokenDetails() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountCreationSessionTokenDetails() => clearField(3);
  @$pb.TagNumber(3)
  $2.PersistentSessionTokenDetails ensureAccountCreationSessionTokenDetails() => $_ensure(2);

  @$pb.TagNumber(4)
  $54.Timestamp get requestedAt => $_getN(3);
  @$pb.TagNumber(4)
  set requestedAt($54.Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRequestedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearRequestedAt() => clearField(4);
  @$pb.TagNumber(4)
  $54.Timestamp ensureRequestedAt() => $_ensure(3);
}

