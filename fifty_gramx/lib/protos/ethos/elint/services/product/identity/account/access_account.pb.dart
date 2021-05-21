///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/access_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../../../google/protobuf/timestamp.pb.dart' as $54;
import '../../../../entities/generic.pb.dart' as $2;
import '../../../../entities/account.pb.dart' as $21;

class ValidateAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValidateAccountRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobileNumber')
    ..aOM<$54.Timestamp>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  ValidateAccountRequest._() : super();
  factory ValidateAccountRequest({
    $core.String? accountMobileNumber,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (accountMobileNumber != null) {
      _result.accountMobileNumber = accountMobileNumber;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory ValidateAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAccountRequest clone() => ValidateAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAccountRequest copyWith(void Function(ValidateAccountRequest) updates) => super.copyWith((message) => updates(message as ValidateAccountRequest)) as ValidateAccountRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidateAccountRequest create() => ValidateAccountRequest._();
  ValidateAccountRequest createEmptyInstance() => create();
  static $pb.PbList<ValidateAccountRequest> createRepeated() => $pb.PbList<ValidateAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static ValidateAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAccountRequest>(create);
  static ValidateAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountMobileNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountMobileNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountMobileNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountMobileNumber() => clearField(1);

  @$pb.TagNumber(2)
  $54.Timestamp get requestedAt => $_getN(1);
  @$pb.TagNumber(2)
  set requestedAt($54.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRequestedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestedAt() => clearField(2);
  @$pb.TagNumber(2)
  $54.Timestamp ensureRequestedAt() => $_ensure(1);
}

class ValidateAccountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValidateAccountResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<AccountAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAccessAuthDetails', subBuilder: AccountAccessAuthDetails.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountExists')
    ..aOM<$2.TemporaryTokenDetails>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verificationCodeTokenDetails', subBuilder: $2.TemporaryTokenDetails.create)
    ..aOM<$54.Timestamp>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codeSentAt', subBuilder: $54.Timestamp.create)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validateAccountDone')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'validateAccountMessage')
    ..hasRequiredFields = false
  ;

  ValidateAccountResponse._() : super();
  factory ValidateAccountResponse({
    AccountAccessAuthDetails? accountAccessAuthDetails,
    $core.bool? accountExists,
    $2.TemporaryTokenDetails? verificationCodeTokenDetails,
    $54.Timestamp? codeSentAt,
    $core.bool? validateAccountDone,
    $core.String? validateAccountMessage,
  }) {
    final _result = create();
    if (accountAccessAuthDetails != null) {
      _result.accountAccessAuthDetails = accountAccessAuthDetails;
    }
    if (accountExists != null) {
      _result.accountExists = accountExists;
    }
    if (verificationCodeTokenDetails != null) {
      _result.verificationCodeTokenDetails = verificationCodeTokenDetails;
    }
    if (codeSentAt != null) {
      _result.codeSentAt = codeSentAt;
    }
    if (validateAccountDone != null) {
      _result.validateAccountDone = validateAccountDone;
    }
    if (validateAccountMessage != null) {
      _result.validateAccountMessage = validateAccountMessage;
    }
    return _result;
  }
  factory ValidateAccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAccountResponse clone() => ValidateAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAccountResponse copyWith(void Function(ValidateAccountResponse) updates) => super.copyWith((message) => updates(message as ValidateAccountResponse)) as ValidateAccountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidateAccountResponse create() => ValidateAccountResponse._();
  ValidateAccountResponse createEmptyInstance() => create();
  static $pb.PbList<ValidateAccountResponse> createRepeated() => $pb.PbList<ValidateAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static ValidateAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAccountResponse>(create);
  static ValidateAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AccountAccessAuthDetails get accountAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accountAccessAuthDetails(AccountAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  AccountAccessAuthDetails ensureAccountAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get accountExists => $_getBF(1);
  @$pb.TagNumber(2)
  set accountExists($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountExists() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountExists() => clearField(2);

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
  $core.bool get validateAccountDone => $_getBF(4);
  @$pb.TagNumber(5)
  set validateAccountDone($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasValidateAccountDone() => $_has(4);
  @$pb.TagNumber(5)
  void clearValidateAccountDone() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get validateAccountMessage => $_getSZ(5);
  @$pb.TagNumber(6)
  set validateAccountMessage($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasValidateAccountMessage() => $_has(5);
  @$pb.TagNumber(6)
  void clearValidateAccountMessage() => clearField(6);
}

class VerifyAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyAccountRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<AccountAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAccessAuthDetails', subBuilder: AccountAccessAuthDetails.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resendCode')
    ..aOM<$2.TemporaryTokenDetails>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verificationCodeTokenDetails', subBuilder: $2.TemporaryTokenDetails.create)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verificationCode')
    ..aOM<$21.AccountDeviceDetails>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountDeviceDetails', subBuilder: $21.AccountDeviceDetails.create)
    ..aOM<$54.Timestamp>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  VerifyAccountRequest._() : super();
  factory VerifyAccountRequest({
    AccountAccessAuthDetails? accountAccessAuthDetails,
    $core.bool? resendCode,
    $2.TemporaryTokenDetails? verificationCodeTokenDetails,
    $core.String? verificationCode,
    $21.AccountDeviceDetails? accountDeviceDetails,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (accountAccessAuthDetails != null) {
      _result.accountAccessAuthDetails = accountAccessAuthDetails;
    }
    if (resendCode != null) {
      _result.resendCode = resendCode;
    }
    if (verificationCodeTokenDetails != null) {
      _result.verificationCodeTokenDetails = verificationCodeTokenDetails;
    }
    if (verificationCode != null) {
      _result.verificationCode = verificationCode;
    }
    if (accountDeviceDetails != null) {
      _result.accountDeviceDetails = accountDeviceDetails;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory VerifyAccountRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyAccountRequest clone() => VerifyAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyAccountRequest copyWith(void Function(VerifyAccountRequest) updates) => super.copyWith((message) => updates(message as VerifyAccountRequest)) as VerifyAccountRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyAccountRequest create() => VerifyAccountRequest._();
  VerifyAccountRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyAccountRequest> createRepeated() => $pb.PbList<VerifyAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyAccountRequest>(create);
  static VerifyAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AccountAccessAuthDetails get accountAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accountAccessAuthDetails(AccountAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  AccountAccessAuthDetails ensureAccountAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get resendCode => $_getBF(1);
  @$pb.TagNumber(2)
  set resendCode($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResendCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearResendCode() => clearField(2);

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
  $core.String get verificationCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set verificationCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVerificationCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearVerificationCode() => clearField(4);

  @$pb.TagNumber(5)
  $21.AccountDeviceDetails get accountDeviceDetails => $_getN(4);
  @$pb.TagNumber(5)
  set accountDeviceDetails($21.AccountDeviceDetails v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAccountDeviceDetails() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccountDeviceDetails() => clearField(5);
  @$pb.TagNumber(5)
  $21.AccountDeviceDetails ensureAccountDeviceDetails() => $_ensure(4);

  @$pb.TagNumber(6)
  $54.Timestamp get requestedAt => $_getN(5);
  @$pb.TagNumber(6)
  set requestedAt($54.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasRequestedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearRequestedAt() => clearField(6);
  @$pb.TagNumber(6)
  $54.Timestamp ensureRequestedAt() => $_ensure(5);
}

class VerifyAccountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyAccountResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountServiceAccessAuthDetails', subBuilder: AccountServicesAccessAuthDetails.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verificationDone')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'verificationMessage')
    ..hasRequiredFields = false
  ;

  VerifyAccountResponse._() : super();
  factory VerifyAccountResponse({
    AccountServicesAccessAuthDetails? accountServiceAccessAuthDetails,
    $core.bool? verificationDone,
    $core.String? verificationMessage,
  }) {
    final _result = create();
    if (accountServiceAccessAuthDetails != null) {
      _result.accountServiceAccessAuthDetails = accountServiceAccessAuthDetails;
    }
    if (verificationDone != null) {
      _result.verificationDone = verificationDone;
    }
    if (verificationMessage != null) {
      _result.verificationMessage = verificationMessage;
    }
    return _result;
  }
  factory VerifyAccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyAccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyAccountResponse clone() => VerifyAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyAccountResponse copyWith(void Function(VerifyAccountResponse) updates) => super.copyWith((message) => updates(message as VerifyAccountResponse)) as VerifyAccountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyAccountResponse create() => VerifyAccountResponse._();
  VerifyAccountResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyAccountResponse> createRepeated() => $pb.PbList<VerifyAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyAccountResponse>(create);
  static VerifyAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AccountServicesAccessAuthDetails get accountServiceAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accountServiceAccessAuthDetails(AccountServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountServiceAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountServiceAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  AccountServicesAccessAuthDetails ensureAccountServiceAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get verificationDone => $_getBF(1);
  @$pb.TagNumber(2)
  set verificationDone($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVerificationDone() => $_has(1);
  @$pb.TagNumber(2)
  void clearVerificationDone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get verificationMessage => $_getSZ(2);
  @$pb.TagNumber(3)
  set verificationMessage($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVerificationMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearVerificationMessage() => clearField(3);
}

class ValidateAccountServicesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValidateAccountServicesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountServiceAccessValidationDone')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountServiceAccessValidationMessage')
    ..hasRequiredFields = false
  ;

  ValidateAccountServicesResponse._() : super();
  factory ValidateAccountServicesResponse({
    $core.bool? accountServiceAccessValidationDone,
    $core.String? accountServiceAccessValidationMessage,
  }) {
    final _result = create();
    if (accountServiceAccessValidationDone != null) {
      _result.accountServiceAccessValidationDone = accountServiceAccessValidationDone;
    }
    if (accountServiceAccessValidationMessage != null) {
      _result.accountServiceAccessValidationMessage = accountServiceAccessValidationMessage;
    }
    return _result;
  }
  factory ValidateAccountServicesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidateAccountServicesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidateAccountServicesResponse clone() => ValidateAccountServicesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidateAccountServicesResponse copyWith(void Function(ValidateAccountServicesResponse) updates) => super.copyWith((message) => updates(message as ValidateAccountServicesResponse)) as ValidateAccountServicesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidateAccountServicesResponse create() => ValidateAccountServicesResponse._();
  ValidateAccountServicesResponse createEmptyInstance() => create();
  static $pb.PbList<ValidateAccountServicesResponse> createRepeated() => $pb.PbList<ValidateAccountServicesResponse>();
  @$core.pragma('dart2js:noInline')
  static ValidateAccountServicesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateAccountServicesResponse>(create);
  static ValidateAccountServicesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get accountServiceAccessValidationDone => $_getBF(0);
  @$pb.TagNumber(1)
  set accountServiceAccessValidationDone($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountServiceAccessValidationDone() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountServiceAccessValidationDone() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountServiceAccessValidationMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountServiceAccessValidationMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountServiceAccessValidationMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountServiceAccessValidationMessage() => clearField(2);
}

class ReAccountAccessTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReAccountAccessTokenRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountServiceAccessAuthDetails', subBuilder: AccountServicesAccessAuthDetails.create)
    ..hasRequiredFields = false
  ;

  ReAccountAccessTokenRequest._() : super();
  factory ReAccountAccessTokenRequest({
    AccountServicesAccessAuthDetails? accountServiceAccessAuthDetails,
  }) {
    final _result = create();
    if (accountServiceAccessAuthDetails != null) {
      _result.accountServiceAccessAuthDetails = accountServiceAccessAuthDetails;
    }
    return _result;
  }
  factory ReAccountAccessTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReAccountAccessTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReAccountAccessTokenRequest clone() => ReAccountAccessTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReAccountAccessTokenRequest copyWith(void Function(ReAccountAccessTokenRequest) updates) => super.copyWith((message) => updates(message as ReAccountAccessTokenRequest)) as ReAccountAccessTokenRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReAccountAccessTokenRequest create() => ReAccountAccessTokenRequest._();
  ReAccountAccessTokenRequest createEmptyInstance() => create();
  static $pb.PbList<ReAccountAccessTokenRequest> createRepeated() => $pb.PbList<ReAccountAccessTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static ReAccountAccessTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReAccountAccessTokenRequest>(create);
  static ReAccountAccessTokenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  AccountServicesAccessAuthDetails get accountServiceAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accountServiceAccessAuthDetails(AccountServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountServiceAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountServiceAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  AccountServicesAccessAuthDetails ensureAccountServiceAccessAuthDetails() => $_ensure(0);
}

class ReAccountAccessTokenResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReAccountAccessTokenResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<AccountServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountServiceAccessAuthDetails', subBuilder: AccountServicesAccessAuthDetails.create)
    ..aOM<$2.ResponseMeta>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'responseMeta', subBuilder: $2.ResponseMeta.create)
    ..hasRequiredFields = false
  ;

  ReAccountAccessTokenResponse._() : super();
  factory ReAccountAccessTokenResponse({
    AccountServicesAccessAuthDetails? accountServiceAccessAuthDetails,
    $2.ResponseMeta? responseMeta,
  }) {
    final _result = create();
    if (accountServiceAccessAuthDetails != null) {
      _result.accountServiceAccessAuthDetails = accountServiceAccessAuthDetails;
    }
    if (responseMeta != null) {
      _result.responseMeta = responseMeta;
    }
    return _result;
  }
  factory ReAccountAccessTokenResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReAccountAccessTokenResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReAccountAccessTokenResponse clone() => ReAccountAccessTokenResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReAccountAccessTokenResponse copyWith(void Function(ReAccountAccessTokenResponse) updates) => super.copyWith((message) => updates(message as ReAccountAccessTokenResponse)) as ReAccountAccessTokenResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReAccountAccessTokenResponse create() => ReAccountAccessTokenResponse._();
  ReAccountAccessTokenResponse createEmptyInstance() => create();
  static $pb.PbList<ReAccountAccessTokenResponse> createRepeated() => $pb.PbList<ReAccountAccessTokenResponse>();
  @$core.pragma('dart2js:noInline')
  static ReAccountAccessTokenResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReAccountAccessTokenResponse>(create);
  static ReAccountAccessTokenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  AccountServicesAccessAuthDetails get accountServiceAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set accountServiceAccessAuthDetails(AccountServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountServiceAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountServiceAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  AccountServicesAccessAuthDetails ensureAccountServiceAccessAuthDetails() => $_ensure(0);

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

class AccountAccessAuthDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountAccessAuthDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountMobileNumber')
    ..aOM<$2.PersistentSessionTokenDetails>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountAccessAuthSessionTokenDetails', subBuilder: $2.PersistentSessionTokenDetails.create)
    ..hasRequiredFields = false
  ;

  AccountAccessAuthDetails._() : super();
  factory AccountAccessAuthDetails({
    $core.String? accountMobileNumber,
    $2.PersistentSessionTokenDetails? accountAccessAuthSessionTokenDetails,
  }) {
    final _result = create();
    if (accountMobileNumber != null) {
      _result.accountMobileNumber = accountMobileNumber;
    }
    if (accountAccessAuthSessionTokenDetails != null) {
      _result.accountAccessAuthSessionTokenDetails = accountAccessAuthSessionTokenDetails;
    }
    return _result;
  }
  factory AccountAccessAuthDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountAccessAuthDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountAccessAuthDetails clone() => AccountAccessAuthDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountAccessAuthDetails copyWith(void Function(AccountAccessAuthDetails) updates) => super.copyWith((message) => updates(message as AccountAccessAuthDetails)) as AccountAccessAuthDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountAccessAuthDetails create() => AccountAccessAuthDetails._();
  AccountAccessAuthDetails createEmptyInstance() => create();
  static $pb.PbList<AccountAccessAuthDetails> createRepeated() => $pb.PbList<AccountAccessAuthDetails>();
  @$core.pragma('dart2js:noInline')
  static AccountAccessAuthDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountAccessAuthDetails>(create);
  static AccountAccessAuthDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountMobileNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountMobileNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountMobileNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountMobileNumber() => clearField(1);

  @$pb.TagNumber(2)
  $2.PersistentSessionTokenDetails get accountAccessAuthSessionTokenDetails => $_getN(1);
  @$pb.TagNumber(2)
  set accountAccessAuthSessionTokenDetails($2.PersistentSessionTokenDetails v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountAccessAuthSessionTokenDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountAccessAuthSessionTokenDetails() => clearField(2);
  @$pb.TagNumber(2)
  $2.PersistentSessionTokenDetails ensureAccountAccessAuthSessionTokenDetails() => $_ensure(1);
}

class AccountServicesAccessAuthDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountServicesAccessAuthDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.identity.account'), createEmptyInstance: create)
    ..aOM<$21.Account>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'account', subBuilder: $21.Account.create)
    ..aOM<$2.PersistentSessionTokenDetails>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountServicesAccessSessionTokenDetails', subBuilder: $2.PersistentSessionTokenDetails.create)
    ..aOM<$54.Timestamp>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'requestedAt', subBuilder: $54.Timestamp.create)
    ..hasRequiredFields = false
  ;

  AccountServicesAccessAuthDetails._() : super();
  factory AccountServicesAccessAuthDetails({
    $21.Account? account,
    $2.PersistentSessionTokenDetails? accountServicesAccessSessionTokenDetails,
    $54.Timestamp? requestedAt,
  }) {
    final _result = create();
    if (account != null) {
      _result.account = account;
    }
    if (accountServicesAccessSessionTokenDetails != null) {
      _result.accountServicesAccessSessionTokenDetails = accountServicesAccessSessionTokenDetails;
    }
    if (requestedAt != null) {
      _result.requestedAt = requestedAt;
    }
    return _result;
  }
  factory AccountServicesAccessAuthDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountServicesAccessAuthDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountServicesAccessAuthDetails clone() => AccountServicesAccessAuthDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountServicesAccessAuthDetails copyWith(void Function(AccountServicesAccessAuthDetails) updates) => super.copyWith((message) => updates(message as AccountServicesAccessAuthDetails)) as AccountServicesAccessAuthDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountServicesAccessAuthDetails create() => AccountServicesAccessAuthDetails._();
  AccountServicesAccessAuthDetails createEmptyInstance() => create();
  static $pb.PbList<AccountServicesAccessAuthDetails> createRepeated() => $pb.PbList<AccountServicesAccessAuthDetails>();
  @$core.pragma('dart2js:noInline')
  static AccountServicesAccessAuthDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountServicesAccessAuthDetails>(create);
  static AccountServicesAccessAuthDetails? _defaultInstance;

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
  $2.PersistentSessionTokenDetails get accountServicesAccessSessionTokenDetails => $_getN(1);
  @$pb.TagNumber(2)
  set accountServicesAccessSessionTokenDetails($2.PersistentSessionTokenDetails v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountServicesAccessSessionTokenDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountServicesAccessSessionTokenDetails() => clearField(2);
  @$pb.TagNumber(2)
  $2.PersistentSessionTokenDetails ensureAccountServicesAccessSessionTokenDetails() => $_ensure(1);

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

