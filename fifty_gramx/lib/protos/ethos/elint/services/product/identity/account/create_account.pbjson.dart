///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/create_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use validateAccountWithMobileRequestDescriptor instead')
const ValidateAccountWithMobileRequest$json = const {
  '1': 'ValidateAccountWithMobileRequest',
  '2': const [
    const {'1': 'account_mobile_country_code', '3': 1, '4': 1, '5': 9, '10': 'accountMobileCountryCode'},
    const {'1': 'account_mobile_number', '3': 2, '4': 1, '5': 9, '10': 'accountMobileNumber'},
    const {'1': 'requested_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestedAt'},
  ],
};

/// Descriptor for `ValidateAccountWithMobileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateAccountWithMobileRequestDescriptor = $convert.base64Decode('CiBWYWxpZGF0ZUFjY291bnRXaXRoTW9iaWxlUmVxdWVzdBI9ChthY2NvdW50X21vYmlsZV9jb3VudHJ5X2NvZGUYASABKAlSGGFjY291bnRNb2JpbGVDb3VudHJ5Q29kZRIyChVhY2NvdW50X21vYmlsZV9udW1iZXIYAiABKAlSE2FjY291bnRNb2JpbGVOdW1iZXISPQoMcmVxdWVzdGVkX2F0GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILcmVxdWVzdGVkQXQ=');
@$core.Deprecated('Use validateAccountWithMobileResponseDescriptor instead')
const ValidateAccountWithMobileResponse$json = const {
  '1': 'ValidateAccountWithMobileResponse',
  '2': const [
    const {'1': 'account_creation_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountCreationAuthDetails', '10': 'accountCreationAuthDetails'},
    const {'1': 'account_exists_with_mobile', '3': 2, '4': 1, '5': 8, '10': 'accountExistsWithMobile'},
    const {'1': 'verification_code_token_details', '3': 3, '4': 1, '5': 11, '6': '.elint.entity.TemporaryTokenDetails', '10': 'verificationCodeTokenDetails'},
    const {'1': 'code_sent_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'codeSentAt'},
    const {'1': 'validate_account_with_mobile_done', '3': 5, '4': 1, '5': 8, '10': 'validateAccountWithMobileDone'},
    const {'1': 'validate_account_with_mobile_message', '3': 6, '4': 1, '5': 9, '10': 'validateAccountWithMobileMessage'},
  ],
};

/// Descriptor for `ValidateAccountWithMobileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateAccountWithMobileResponseDescriptor = $convert.base64Decode('CiFWYWxpZGF0ZUFjY291bnRXaXRoTW9iaWxlUmVzcG9uc2UShgEKHWFjY291bnRfY3JlYXRpb25fYXV0aF9kZXRhaWxzGAEgASgLMkMuZWxpbnQuc2VydmljZXMucHJvZHVjdC5pZGVudGl0eS5hY2NvdW50LkFjY291bnRDcmVhdGlvbkF1dGhEZXRhaWxzUhphY2NvdW50Q3JlYXRpb25BdXRoRGV0YWlscxI7ChphY2NvdW50X2V4aXN0c193aXRoX21vYmlsZRgCIAEoCFIXYWNjb3VudEV4aXN0c1dpdGhNb2JpbGUSagofdmVyaWZpY2F0aW9uX2NvZGVfdG9rZW5fZGV0YWlscxgDIAEoCzIjLmVsaW50LmVudGl0eS5UZW1wb3JhcnlUb2tlbkRldGFpbHNSHHZlcmlmaWNhdGlvbkNvZGVUb2tlbkRldGFpbHMSPAoMY29kZV9zZW50X2F0GAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKY29kZVNlbnRBdBJICiF2YWxpZGF0ZV9hY2NvdW50X3dpdGhfbW9iaWxlX2RvbmUYBSABKAhSHXZhbGlkYXRlQWNjb3VudFdpdGhNb2JpbGVEb25lEk4KJHZhbGlkYXRlX2FjY291bnRfd2l0aF9tb2JpbGVfbWVzc2FnZRgGIAEoCVIgdmFsaWRhdGVBY2NvdW50V2l0aE1vYmlsZU1lc3NhZ2U=');
@$core.Deprecated('Use verificationAccountRequestDescriptor instead')
const VerificationAccountRequest$json = const {
  '1': 'VerificationAccountRequest',
  '2': const [
    const {'1': 'account_creation_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountCreationAuthDetails', '10': 'accountCreationAuthDetails'},
    const {'1': 'resend_code', '3': 2, '4': 1, '5': 8, '10': 'resendCode'},
    const {'1': 'verification_code', '3': 3, '4': 1, '5': 9, '10': 'verificationCode'},
    const {'1': 'verification_code_token_details', '3': 4, '4': 1, '5': 11, '6': '.elint.entity.TemporaryTokenDetails', '10': 'verificationCodeTokenDetails'},
    const {'1': 'requested_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestedAt'},
  ],
};

/// Descriptor for `VerificationAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verificationAccountRequestDescriptor = $convert.base64Decode('ChpWZXJpZmljYXRpb25BY2NvdW50UmVxdWVzdBKGAQodYWNjb3VudF9jcmVhdGlvbl9hdXRoX2RldGFpbHMYASABKAsyQy5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmlkZW50aXR5LmFjY291bnQuQWNjb3VudENyZWF0aW9uQXV0aERldGFpbHNSGmFjY291bnRDcmVhdGlvbkF1dGhEZXRhaWxzEh8KC3Jlc2VuZF9jb2RlGAIgASgIUgpyZXNlbmRDb2RlEisKEXZlcmlmaWNhdGlvbl9jb2RlGAMgASgJUhB2ZXJpZmljYXRpb25Db2RlEmoKH3ZlcmlmaWNhdGlvbl9jb2RlX3Rva2VuX2RldGFpbHMYBCABKAsyIy5lbGludC5lbnRpdHkuVGVtcG9yYXJ5VG9rZW5EZXRhaWxzUhx2ZXJpZmljYXRpb25Db2RlVG9rZW5EZXRhaWxzEj0KDHJlcXVlc3RlZF9hdBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC3JlcXVlc3RlZEF0');
@$core.Deprecated('Use verificationAccountResponseDescriptor instead')
const VerificationAccountResponse$json = const {
  '1': 'VerificationAccountResponse',
  '2': const [
    const {'1': 'verification_done', '3': 1, '4': 1, '5': 8, '10': 'verificationDone'},
    const {'1': 'verification_message', '3': 2, '4': 1, '5': 9, '10': 'verificationMessage'},
  ],
};

/// Descriptor for `VerificationAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verificationAccountResponseDescriptor = $convert.base64Decode('ChtWZXJpZmljYXRpb25BY2NvdW50UmVzcG9uc2USKwoRdmVyaWZpY2F0aW9uX2RvbmUYASABKAhSEHZlcmlmaWNhdGlvbkRvbmUSMQoUdmVyaWZpY2F0aW9uX21lc3NhZ2UYAiABKAlSE3ZlcmlmaWNhdGlvbk1lc3NhZ2U=');
@$core.Deprecated('Use captureAccountMetaDetailsRequestDescriptor instead')
const CaptureAccountMetaDetailsRequest$json = const {
  '1': 'CaptureAccountMetaDetailsRequest',
  '2': const [
    const {'1': 'account_creation_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountCreationAuthDetails', '10': 'accountCreationAuthDetails'},
    const {'1': 'account_first_name', '3': 2, '4': 1, '5': 9, '10': 'accountFirstName'},
    const {'1': 'account_last_name', '3': 3, '4': 1, '5': 9, '10': 'accountLastName'},
    const {'1': 'account_birth_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'accountBirthAt'},
    const {'1': 'account_gender', '3': 5, '4': 1, '5': 14, '6': '.elint.entity.AccountGender', '10': 'accountGender'},
    const {'1': 'account_device_details', '3': 6, '4': 1, '5': 11, '6': '.elint.entity.AccountDeviceDetails', '10': 'accountDeviceDetails'},
    const {'1': 'account_assistant_name', '3': 7, '4': 1, '5': 9, '10': 'accountAssistantName'},
    const {'1': 'requested_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestedAt'},
  ],
};

/// Descriptor for `CaptureAccountMetaDetailsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List captureAccountMetaDetailsRequestDescriptor = $convert.base64Decode('CiBDYXB0dXJlQWNjb3VudE1ldGFEZXRhaWxzUmVxdWVzdBKGAQodYWNjb3VudF9jcmVhdGlvbl9hdXRoX2RldGFpbHMYASABKAsyQy5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmlkZW50aXR5LmFjY291bnQuQWNjb3VudENyZWF0aW9uQXV0aERldGFpbHNSGmFjY291bnRDcmVhdGlvbkF1dGhEZXRhaWxzEiwKEmFjY291bnRfZmlyc3RfbmFtZRgCIAEoCVIQYWNjb3VudEZpcnN0TmFtZRIqChFhY2NvdW50X2xhc3RfbmFtZRgDIAEoCVIPYWNjb3VudExhc3ROYW1lEkQKEGFjY291bnRfYmlydGhfYXQYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg5hY2NvdW50QmlydGhBdBJCCg5hY2NvdW50X2dlbmRlchgFIAEoDjIbLmVsaW50LmVudGl0eS5BY2NvdW50R2VuZGVyUg1hY2NvdW50R2VuZGVyElgKFmFjY291bnRfZGV2aWNlX2RldGFpbHMYBiABKAsyIi5lbGludC5lbnRpdHkuQWNjb3VudERldmljZURldGFpbHNSFGFjY291bnREZXZpY2VEZXRhaWxzEjQKFmFjY291bnRfYXNzaXN0YW50X25hbWUYByABKAlSFGFjY291bnRBc3Npc3RhbnROYW1lEj0KDHJlcXVlc3RlZF9hdBgIIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC3JlcXVlc3RlZEF0');
@$core.Deprecated('Use captureAccountMetaDetailsResponseDescriptor instead')
const CaptureAccountMetaDetailsResponse$json = const {
  '1': 'CaptureAccountMetaDetailsResponse',
  '2': const [
    const {'1': 'account_service_access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accountServiceAccessAuthDetails'},
    const {'1': 'account_creation_done', '3': 2, '4': 1, '5': 8, '10': 'accountCreationDone'},
    const {'1': 'account_creation_message', '3': 3, '4': 1, '5': 9, '10': 'accountCreationMessage'},
  ],
};

/// Descriptor for `CaptureAccountMetaDetailsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List captureAccountMetaDetailsResponseDescriptor = $convert.base64Decode('CiFDYXB0dXJlQWNjb3VudE1ldGFEZXRhaWxzUmVzcG9uc2USlwEKI2FjY291bnRfc2VydmljZV9hY2Nlc3NfYXV0aF9kZXRhaWxzGAEgASgLMkkuZWxpbnQuc2VydmljZXMucHJvZHVjdC5pZGVudGl0eS5hY2NvdW50LkFjY291bnRTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUh9hY2NvdW50U2VydmljZUFjY2Vzc0F1dGhEZXRhaWxzEjIKFWFjY291bnRfY3JlYXRpb25fZG9uZRgCIAEoCFITYWNjb3VudENyZWF0aW9uRG9uZRI4ChhhY2NvdW50X2NyZWF0aW9uX21lc3NhZ2UYAyABKAlSFmFjY291bnRDcmVhdGlvbk1lc3NhZ2U=');
@$core.Deprecated('Use accountCreationAuthDetailsDescriptor instead')
const AccountCreationAuthDetails$json = const {
  '1': 'AccountCreationAuthDetails',
  '2': const [
    const {'1': 'account_mobile_country_code', '3': 1, '4': 1, '5': 9, '10': 'accountMobileCountryCode'},
    const {'1': 'account_mobile_number', '3': 2, '4': 1, '5': 9, '10': 'accountMobileNumber'},
    const {'1': 'account_creation_session_token_details', '3': 3, '4': 1, '5': 11, '6': '.elint.entity.PersistentSessionTokenDetails', '10': 'accountCreationSessionTokenDetails'},
    const {'1': 'requested_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestedAt'},
  ],
};

/// Descriptor for `AccountCreationAuthDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountCreationAuthDetailsDescriptor = $convert.base64Decode('ChpBY2NvdW50Q3JlYXRpb25BdXRoRGV0YWlscxI9ChthY2NvdW50X21vYmlsZV9jb3VudHJ5X2NvZGUYASABKAlSGGFjY291bnRNb2JpbGVDb3VudHJ5Q29kZRIyChVhY2NvdW50X21vYmlsZV9udW1iZXIYAiABKAlSE2FjY291bnRNb2JpbGVOdW1iZXISfwomYWNjb3VudF9jcmVhdGlvbl9zZXNzaW9uX3Rva2VuX2RldGFpbHMYAyABKAsyKy5lbGludC5lbnRpdHkuUGVyc2lzdGVudFNlc3Npb25Ub2tlbkRldGFpbHNSImFjY291bnRDcmVhdGlvblNlc3Npb25Ub2tlbkRldGFpbHMSPQoMcmVxdWVzdGVkX2F0GAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILcmVxdWVzdGVkQXQ=');
