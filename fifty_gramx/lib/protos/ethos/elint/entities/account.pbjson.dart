///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use accountGenderDescriptor instead')
const AccountGender$json = const {
  '1': 'AccountGender',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'FEMALE', '2': 1},
    const {'1': 'MALE', '2': 2},
  ],
};

/// Descriptor for `AccountGender`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accountGenderDescriptor = $convert.base64Decode('Cg1BY2NvdW50R2VuZGVyEgsKB1VOS05PV04QABIKCgZGRU1BTEUQARIICgRNQUxFEAI=');
@$core.Deprecated('Use accountDeviceOSDescriptor instead')
const AccountDeviceOS$json = const {
  '1': 'AccountDeviceOS',
  '2': const [
    const {'1': 'IOS', '2': 0},
    const {'1': 'ANDROID', '2': 1},
  ],
};

/// Descriptor for `AccountDeviceOS`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accountDeviceOSDescriptor = $convert.base64Decode('Cg9BY2NvdW50RGV2aWNlT1MSBwoDSU9TEAASCwoHQU5EUk9JRBAB');
@$core.Deprecated('Use accountPayInMethodDescriptor instead')
const AccountPayInMethod$json = const {
  '1': 'AccountPayInMethod',
  '2': const [
    const {'1': 'CARD', '2': 0},
  ],
};

/// Descriptor for `AccountPayInMethod`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accountPayInMethodDescriptor = $convert.base64Decode('ChJBY2NvdW50UGF5SW5NZXRob2QSCAoEQ0FSRBAA');
@$core.Deprecated('Use accountDescriptor instead')
const Account$json = const {
  '1': 'Account',
  '2': const [
    const {'1': 'account_analytics_id', '3': 1, '4': 1, '5': 9, '10': 'accountAnalyticsId'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'account_personal_email_id', '3': 3, '4': 1, '5': 9, '10': 'accountPersonalEmailId'},
    const {'1': 'account_work_email_id', '3': 4, '4': 1, '5': 9, '10': 'accountWorkEmailId'},
    const {'1': 'account_country_code', '3': 5, '4': 1, '5': 9, '10': 'accountCountryCode'},
    const {'1': 'account_mobile_number', '3': 6, '4': 1, '5': 9, '10': 'accountMobileNumber'},
    const {'1': 'account_first_name', '3': 7, '4': 1, '5': 9, '10': 'accountFirstName'},
    const {'1': 'account_last_name', '3': 8, '4': 1, '5': 9, '10': 'accountLastName'},
    const {'1': 'account_galaxy_id', '3': 9, '4': 1, '5': 9, '10': 'accountGalaxyId'},
    const {'1': 'account_birth_at', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'accountBirthAt'},
    const {'1': 'account_gender', '3': 11, '4': 1, '5': 14, '6': '.elint.entity.AccountGender', '10': 'accountGender'},
    const {'1': 'created_at', '3': 12, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'account_billing_active', '3': 13, '4': 1, '5': 9, '10': 'accountBillingActive'},
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode('CgdBY2NvdW50EjAKFGFjY291bnRfYW5hbHl0aWNzX2lkGAEgASgJUhJhY2NvdW50QW5hbHl0aWNzSWQSHQoKYWNjb3VudF9pZBgCIAEoCVIJYWNjb3VudElkEjkKGWFjY291bnRfcGVyc29uYWxfZW1haWxfaWQYAyABKAlSFmFjY291bnRQZXJzb25hbEVtYWlsSWQSMQoVYWNjb3VudF93b3JrX2VtYWlsX2lkGAQgASgJUhJhY2NvdW50V29ya0VtYWlsSWQSMAoUYWNjb3VudF9jb3VudHJ5X2NvZGUYBSABKAlSEmFjY291bnRDb3VudHJ5Q29kZRIyChVhY2NvdW50X21vYmlsZV9udW1iZXIYBiABKAlSE2FjY291bnRNb2JpbGVOdW1iZXISLAoSYWNjb3VudF9maXJzdF9uYW1lGAcgASgJUhBhY2NvdW50Rmlyc3ROYW1lEioKEWFjY291bnRfbGFzdF9uYW1lGAggASgJUg9hY2NvdW50TGFzdE5hbWUSKgoRYWNjb3VudF9nYWxheHlfaWQYCSABKAlSD2FjY291bnRHYWxheHlJZBJEChBhY2NvdW50X2JpcnRoX2F0GAogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIOYWNjb3VudEJpcnRoQXQSQgoOYWNjb3VudF9nZW5kZXIYCyABKA4yGy5lbGludC5lbnRpdHkuQWNjb3VudEdlbmRlclINYWNjb3VudEdlbmRlchI5CgpjcmVhdGVkX2F0GAwgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0EjQKFmFjY291bnRfYmlsbGluZ19hY3RpdmUYDSABKAlSFGFjY291bnRCaWxsaW5nQWN0aXZl');
@$core.Deprecated('Use accountSpaceKnowledgeAccessMetaDescriptor instead')
const AccountSpaceKnowledgeAccessMeta$json = const {
  '1': 'AccountSpaceKnowledgeAccessMeta',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'knowledge_space_access_session_token', '3': 2, '4': 1, '5': 9, '10': 'knowledgeSpaceAccessSessionToken'},
    const {'1': 'space_knowledge_id', '3': 3, '4': 1, '5': 9, '10': 'spaceKnowledgeId'},
    const {'1': 'access_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'accessAt'},
  ],
};

/// Descriptor for `AccountSpaceKnowledgeAccessMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountSpaceKnowledgeAccessMetaDescriptor = $convert.base64Decode('Ch9BY2NvdW50U3BhY2VLbm93bGVkZ2VBY2Nlc3NNZXRhEh0KCmFjY291bnRfaWQYASABKAlSCWFjY291bnRJZBJOCiRrbm93bGVkZ2Vfc3BhY2VfYWNjZXNzX3Nlc3Npb25fdG9rZW4YAiABKAlSIGtub3dsZWRnZVNwYWNlQWNjZXNzU2Vzc2lvblRva2VuEiwKEnNwYWNlX2tub3dsZWRnZV9pZBgDIAEoCVIQc3BhY2VLbm93bGVkZ2VJZBI3CglhY2Nlc3NfYXQYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUghhY2Nlc3NBdA==');
@$core.Deprecated('Use accountSpaceKnowledgeDomainAccessMetaDescriptor instead')
const AccountSpaceKnowledgeDomainAccessMeta$json = const {
  '1': 'AccountSpaceKnowledgeDomainAccessMeta',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'knowledge_space_access_session_token', '3': 2, '4': 1, '5': 9, '10': 'knowledgeSpaceAccessSessionToken'},
    const {'1': 'space_knowledge_id', '3': 3, '4': 1, '5': 9, '10': 'spaceKnowledgeId'},
    const {'1': 'space_knowledge_domain_id', '3': 4, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainId'},
    const {'1': 'access_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'accessAt'},
  ],
};

/// Descriptor for `AccountSpaceKnowledgeDomainAccessMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountSpaceKnowledgeDomainAccessMetaDescriptor = $convert.base64Decode('CiVBY2NvdW50U3BhY2VLbm93bGVkZ2VEb21haW5BY2Nlc3NNZXRhEh0KCmFjY291bnRfaWQYASABKAlSCWFjY291bnRJZBJOCiRrbm93bGVkZ2Vfc3BhY2VfYWNjZXNzX3Nlc3Npb25fdG9rZW4YAiABKAlSIGtub3dsZWRnZVNwYWNlQWNjZXNzU2Vzc2lvblRva2VuEiwKEnNwYWNlX2tub3dsZWRnZV9pZBgDIAEoCVIQc3BhY2VLbm93bGVkZ2VJZBI5ChlzcGFjZV9rbm93bGVkZ2VfZG9tYWluX2lkGAQgASgJUhZzcGFjZUtub3dsZWRnZURvbWFpbklkEjcKCWFjY2Vzc19hdBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCGFjY2Vzc0F0');
@$core.Deprecated('Use accountSpaceKnowledgeDomainFileAccessMetaDescriptor instead')
const AccountSpaceKnowledgeDomainFileAccessMeta$json = const {
  '1': 'AccountSpaceKnowledgeDomainFileAccessMeta',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'knowledge_space_access_session_token', '3': 2, '4': 1, '5': 9, '10': 'knowledgeSpaceAccessSessionToken'},
    const {'1': 'space_knowledge_id', '3': 3, '4': 1, '5': 9, '10': 'spaceKnowledgeId'},
    const {'1': 'space_knowledge_domain_id', '3': 4, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainId'},
    const {'1': 'space_knowledge_domain_file_id', '3': 5, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainFileId'},
    const {'1': 'access_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'accessAt'},
  ],
};

/// Descriptor for `AccountSpaceKnowledgeDomainFileAccessMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountSpaceKnowledgeDomainFileAccessMetaDescriptor = $convert.base64Decode('CilBY2NvdW50U3BhY2VLbm93bGVkZ2VEb21haW5GaWxlQWNjZXNzTWV0YRIdCgphY2NvdW50X2lkGAEgASgJUglhY2NvdW50SWQSTgoka25vd2xlZGdlX3NwYWNlX2FjY2Vzc19zZXNzaW9uX3Rva2VuGAIgASgJUiBrbm93bGVkZ2VTcGFjZUFjY2Vzc1Nlc3Npb25Ub2tlbhIsChJzcGFjZV9rbm93bGVkZ2VfaWQYAyABKAlSEHNwYWNlS25vd2xlZGdlSWQSOQoZc3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9pZBgEIAEoCVIWc3BhY2VLbm93bGVkZ2VEb21haW5JZBJCCh5zcGFjZV9rbm93bGVkZ2VfZG9tYWluX2ZpbGVfaWQYBSABKAlSGnNwYWNlS25vd2xlZGdlRG9tYWluRmlsZUlkEjcKCWFjY2Vzc19hdBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCGFjY2Vzc0F0');
@$core.Deprecated('Use accountConnectedAccountDescriptor instead')
const AccountConnectedAccount$json = const {
  '1': 'AccountConnectedAccount',
  '2': const [
    const {'1': 'account_connection_id', '3': 1, '4': 1, '5': 9, '10': 'accountConnectionId'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'account_interested_in_connection', '3': 3, '4': 1, '5': 8, '10': 'accountInterestedInConnection'},
    const {'1': 'connected_account_interested_in_connection', '3': 4, '4': 1, '5': 8, '10': 'connectedAccountInterestedInConnection'},
    const {'1': 'connected_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'connectedAt'},
  ],
};

/// Descriptor for `AccountConnectedAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountConnectedAccountDescriptor = $convert.base64Decode('ChdBY2NvdW50Q29ubmVjdGVkQWNjb3VudBIyChVhY2NvdW50X2Nvbm5lY3Rpb25faWQYASABKAlSE2FjY291bnRDb25uZWN0aW9uSWQSHQoKYWNjb3VudF9pZBgCIAEoCVIJYWNjb3VudElkEkcKIGFjY291bnRfaW50ZXJlc3RlZF9pbl9jb25uZWN0aW9uGAMgASgIUh1hY2NvdW50SW50ZXJlc3RlZEluQ29ubmVjdGlvbhJaCipjb25uZWN0ZWRfYWNjb3VudF9pbnRlcmVzdGVkX2luX2Nvbm5lY3Rpb24YBCABKAhSJmNvbm5lY3RlZEFjY291bnRJbnRlcmVzdGVkSW5Db25uZWN0aW9uEj0KDGNvbm5lY3RlZF9hdBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC2Nvbm5lY3RlZEF0');
@$core.Deprecated('Use accountConnectedAccountAssistantDescriptor instead')
const AccountConnectedAccountAssistant$json = const {
  '1': 'AccountConnectedAccountAssistant',
  '2': const [
    const {'1': 'account_assistant_connection_id', '3': 1, '4': 1, '5': 9, '10': 'accountAssistantConnectionId'},
    const {'1': 'account_assistant_id', '3': 2, '4': 1, '5': 9, '10': 'accountAssistantId'},
    const {'1': 'connected_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'connectedAt'},
  ],
};

/// Descriptor for `AccountConnectedAccountAssistant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountConnectedAccountAssistantDescriptor = $convert.base64Decode('CiBBY2NvdW50Q29ubmVjdGVkQWNjb3VudEFzc2lzdGFudBJFCh9hY2NvdW50X2Fzc2lzdGFudF9jb25uZWN0aW9uX2lkGAEgASgJUhxhY2NvdW50QXNzaXN0YW50Q29ubmVjdGlvbklkEjAKFGFjY291bnRfYXNzaXN0YW50X2lkGAIgASgJUhJhY2NvdW50QXNzaXN0YW50SWQSPQoMY29ubmVjdGVkX2F0GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILY29ubmVjdGVkQXQ=');
@$core.Deprecated('Use accountDeviceDetailsDescriptor instead')
const AccountDeviceDetails$json = const {
  '1': 'AccountDeviceDetails',
  '2': const [
    const {'1': 'account_device_os', '3': 1, '4': 1, '5': 14, '6': '.elint.entity.AccountDeviceOS', '10': 'accountDeviceOs'},
    const {'1': 'device_token', '3': 2, '4': 1, '5': 9, '10': 'deviceToken'},
  ],
};

/// Descriptor for `AccountDeviceDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDeviceDetailsDescriptor = $convert.base64Decode('ChRBY2NvdW50RGV2aWNlRGV0YWlscxJJChFhY2NvdW50X2RldmljZV9vcxgBIAEoDjIdLmVsaW50LmVudGl0eS5BY2NvdW50RGV2aWNlT1NSD2FjY291bnREZXZpY2VPcxIhCgxkZXZpY2VfdG9rZW4YAiABKAlSC2RldmljZVRva2Vu');
@$core.Deprecated('Use accountMobileDescriptor instead')
const AccountMobile$json = const {
  '1': 'AccountMobile',
  '2': const [
    const {'1': 'account_country_code', '3': 1, '4': 1, '5': 9, '10': 'accountCountryCode'},
    const {'1': 'account_mobile_number', '3': 2, '4': 1, '5': 9, '10': 'accountMobileNumber'},
  ],
};

/// Descriptor for `AccountMobile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountMobileDescriptor = $convert.base64Decode('Cg1BY2NvdW50TW9iaWxlEjAKFGFjY291bnRfY291bnRyeV9jb2RlGAEgASgJUhJhY2NvdW50Q291bnRyeUNvZGUSMgoVYWNjb3VudF9tb2JpbGVfbnVtYmVyGAIgASgJUhNhY2NvdW50TW9iaWxlTnVtYmVy');
@$core.Deprecated('Use accountPayInCardDetailsDescriptor instead')
const AccountPayInCardDetails$json = const {
  '1': 'AccountPayInCardDetails',
  '2': const [
    const {'1': 'card_id', '3': 1, '4': 1, '5': 9, '10': 'cardId'},
    const {'1': 'brand', '3': 2, '4': 1, '5': 9, '10': 'brand'},
    const {'1': 'country', '3': 3, '4': 1, '5': 9, '10': 'country'},
    const {'1': 'expiry_month', '3': 4, '4': 1, '5': 5, '10': 'expiryMonth'},
    const {'1': 'expiry_year', '3': 5, '4': 1, '5': 5, '10': 'expiryYear'},
    const {'1': 'fingerprint', '3': 6, '4': 1, '5': 9, '10': 'fingerprint'},
    const {'1': 'funding', '3': 7, '4': 1, '5': 9, '10': 'funding'},
    const {'1': 'last_4_digits', '3': 8, '4': 1, '5': 9, '10': 'last4Digits'},
  ],
};

/// Descriptor for `AccountPayInCardDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountPayInCardDetailsDescriptor = $convert.base64Decode('ChdBY2NvdW50UGF5SW5DYXJkRGV0YWlscxIXCgdjYXJkX2lkGAEgASgJUgZjYXJkSWQSFAoFYnJhbmQYAiABKAlSBWJyYW5kEhgKB2NvdW50cnkYAyABKAlSB2NvdW50cnkSIQoMZXhwaXJ5X21vbnRoGAQgASgFUgtleHBpcnlNb250aBIfCgtleHBpcnlfeWVhchgFIAEoBVIKZXhwaXJ5WWVhchIgCgtmaW5nZXJwcmludBgGIAEoCVILZmluZ2VycHJpbnQSGAoHZnVuZGluZxgHIAEoCVIHZnVuZGluZxIiCg1sYXN0XzRfZGlnaXRzGAggASgJUgtsYXN0NERpZ2l0cw==');
