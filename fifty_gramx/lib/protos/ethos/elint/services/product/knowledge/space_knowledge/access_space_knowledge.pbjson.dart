///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge/access_space_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use spaceKnowledgeAccessTokenResponseDescriptor instead')
const SpaceKnowledgeAccessTokenResponse$json = const {
  '1': 'SpaceKnowledgeAccessTokenResponse',
  '2': const [
    const {'1': 'space_knowledge_services_access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.space.SpaceKnowledgeServicesAccessAuthDetails', '10': 'spaceKnowledgeServicesAccessAuthDetails'},
    const {'1': 'space_knowledge_services_access_done', '3': 2, '4': 1, '5': 8, '10': 'spaceKnowledgeServicesAccessDone'},
    const {'1': 'space_knowledge_services_access_message', '3': 3, '4': 1, '5': 9, '10': 'spaceKnowledgeServicesAccessMessage'},
  ],
};

/// Descriptor for `SpaceKnowledgeAccessTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceKnowledgeAccessTokenResponseDescriptor = $convert.base64Decode('CiFTcGFjZUtub3dsZWRnZUFjY2Vzc1Rva2VuUmVzcG9uc2USrgEKLHNwYWNlX2tub3dsZWRnZV9zZXJ2aWNlc19hY2Nlc3NfYXV0aF9kZXRhaWxzGAEgASgLMk8uZWxpbnQuc2VydmljZXMucHJvZHVjdC5rbm93bGVkZ2Uuc3BhY2UuU3BhY2VLbm93bGVkZ2VTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUidzcGFjZUtub3dsZWRnZVNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHMSTgokc3BhY2Vfa25vd2xlZGdlX3NlcnZpY2VzX2FjY2Vzc19kb25lGAIgASgIUiBzcGFjZUtub3dsZWRnZVNlcnZpY2VzQWNjZXNzRG9uZRJUCidzcGFjZV9rbm93bGVkZ2Vfc2VydmljZXNfYWNjZXNzX21lc3NhZ2UYAyABKAlSI3NwYWNlS25vd2xlZGdlU2VydmljZXNBY2Nlc3NNZXNzYWdl');
@$core.Deprecated('Use validateSpaceKnowledgeServicesResponseDescriptor instead')
const ValidateSpaceKnowledgeServicesResponse$json = const {
  '1': 'ValidateSpaceKnowledgeServicesResponse',
  '2': const [
    const {'1': 'space_knowledge_services_access_validation_done', '3': 1, '4': 1, '5': 8, '10': 'spaceKnowledgeServicesAccessValidationDone'},
    const {'1': 'space_knowledge_services_access_validation_message', '3': 2, '4': 1, '5': 9, '10': 'spaceKnowledgeServicesAccessValidationMessage'},
  ],
};

/// Descriptor for `ValidateSpaceKnowledgeServicesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateSpaceKnowledgeServicesResponseDescriptor = $convert.base64Decode('CiZWYWxpZGF0ZVNwYWNlS25vd2xlZGdlU2VydmljZXNSZXNwb25zZRJjCi9zcGFjZV9rbm93bGVkZ2Vfc2VydmljZXNfYWNjZXNzX3ZhbGlkYXRpb25fZG9uZRgBIAEoCFIqc3BhY2VLbm93bGVkZ2VTZXJ2aWNlc0FjY2Vzc1ZhbGlkYXRpb25Eb25lEmkKMnNwYWNlX2tub3dsZWRnZV9zZXJ2aWNlc19hY2Nlc3NfdmFsaWRhdGlvbl9tZXNzYWdlGAIgASgJUi1zcGFjZUtub3dsZWRnZVNlcnZpY2VzQWNjZXNzVmFsaWRhdGlvbk1lc3NhZ2U=');
@$core.Deprecated('Use spaceKnowledgeServicesAccessAuthDetailsDescriptor instead')
const SpaceKnowledgeServicesAccessAuthDetails$json = const {
  '1': 'SpaceKnowledgeServicesAccessAuthDetails',
  '2': const [
    const {'1': 'space_knowledge', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.SpaceKnowledge', '10': 'spaceKnowledge'},
    const {'1': 'space_knowledge_services_access_session_token_details', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.PersistentSessionTokenDetails', '10': 'spaceKnowledgeServicesAccessSessionTokenDetails'},
    const {'1': 'requested_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestedAt'},
  ],
};

/// Descriptor for `SpaceKnowledgeServicesAccessAuthDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceKnowledgeServicesAccessAuthDetailsDescriptor = $convert.base64Decode('CidTcGFjZUtub3dsZWRnZVNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHMSRQoPc3BhY2Vfa25vd2xlZGdlGAEgASgLMhwuZWxpbnQuZW50aXR5LlNwYWNlS25vd2xlZGdlUg5zcGFjZUtub3dsZWRnZRKbAQo1c3BhY2Vfa25vd2xlZGdlX3NlcnZpY2VzX2FjY2Vzc19zZXNzaW9uX3Rva2VuX2RldGFpbHMYAiABKAsyKy5lbGludC5lbnRpdHkuUGVyc2lzdGVudFNlc3Npb25Ub2tlbkRldGFpbHNSL3NwYWNlS25vd2xlZGdlU2VydmljZXNBY2Nlc3NTZXNzaW9uVG9rZW5EZXRhaWxzEj0KDHJlcXVlc3RlZF9hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC3JlcXVlc3RlZEF0');
