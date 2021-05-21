///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/create_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createAccountAssistantRequestDescriptor instead')
const CreateAccountAssistantRequest$json = const {
  '1': 'CreateAccountAssistantRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'account_assistant_name', '3': 2, '4': 1, '5': 9, '10': 'accountAssistantName'},
  ],
};

/// Descriptor for `CreateAccountAssistantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAccountAssistantRequestDescriptor = $convert.base64Decode('Ch1DcmVhdGVBY2NvdW50QXNzaXN0YW50UmVxdWVzdBJ5ChNhY2Nlc3NfYXV0aF9kZXRhaWxzGAEgASgLMkkuZWxpbnQuc2VydmljZXMucHJvZHVjdC5pZGVudGl0eS5hY2NvdW50LkFjY291bnRTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUhFhY2Nlc3NBdXRoRGV0YWlscxI0ChZhY2NvdW50X2Fzc2lzdGFudF9uYW1lGAIgASgJUhRhY2NvdW50QXNzaXN0YW50TmFtZQ==');
@$core.Deprecated('Use createAccountAssistantResponseDescriptor instead')
const CreateAccountAssistantResponse$json = const {
  '1': 'CreateAccountAssistantResponse',
  '2': const [
    const {'1': 'account_assistant_services_access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.assistant.AccountAssistantServicesAccessAuthDetails', '10': 'accountAssistantServicesAccessAuthDetails'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `CreateAccountAssistantResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAccountAssistantResponseDescriptor = $convert.base64Decode('Ch5DcmVhdGVBY2NvdW50QXNzaXN0YW50UmVzcG9uc2USvwEKLmFjY291bnRfYXNzaXN0YW50X3NlcnZpY2VzX2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsyXC5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmlkZW50aXR5LmFjY291bnQuYXNzaXN0YW50LkFjY291bnRBc3Npc3RhbnRTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUilhY2NvdW50QXNzaXN0YW50U2VydmljZXNBY2Nlc3NBdXRoRGV0YWlscxI/Cg1yZXNwb25zZV9tZXRhGAIgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRh');
@$core.Deprecated('Use getAccountAssistantNameCodeRequestDescriptor instead')
const GetAccountAssistantNameCodeRequest$json = const {
  '1': 'GetAccountAssistantNameCodeRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'account_assistant_name', '3': 2, '4': 1, '5': 9, '10': 'accountAssistantName'},
  ],
};

/// Descriptor for `GetAccountAssistantNameCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountAssistantNameCodeRequestDescriptor = $convert.base64Decode('CiJHZXRBY2NvdW50QXNzaXN0YW50TmFtZUNvZGVSZXF1ZXN0EnkKE2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsySS5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmlkZW50aXR5LmFjY291bnQuQWNjb3VudFNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSEWFjY2Vzc0F1dGhEZXRhaWxzEjQKFmFjY291bnRfYXNzaXN0YW50X25hbWUYAiABKAlSFGFjY291bnRBc3Npc3RhbnROYW1l');
@$core.Deprecated('Use getAccountAssistantNameCodeResponseDescriptor instead')
const GetAccountAssistantNameCodeResponse$json = const {
  '1': 'GetAccountAssistantNameCodeResponse',
  '2': const [
    const {'1': 'account_assistant_name_code', '3': 1, '4': 1, '5': 5, '10': 'accountAssistantNameCode'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `GetAccountAssistantNameCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountAssistantNameCodeResponseDescriptor = $convert.base64Decode('CiNHZXRBY2NvdW50QXNzaXN0YW50TmFtZUNvZGVSZXNwb25zZRI9ChthY2NvdW50X2Fzc2lzdGFudF9uYW1lX2NvZGUYASABKAVSGGFjY291bnRBc3Npc3RhbnROYW1lQ29kZRI/Cg1yZXNwb25zZV9tZXRhGAIgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRh');
