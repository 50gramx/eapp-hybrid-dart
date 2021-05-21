///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain/access_space_knowledge_domain.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use spaceKnowledgeDomainAccessTokenRequestDescriptor instead')
const SpaceKnowledgeDomainAccessTokenRequest$json = const {
  '1': 'SpaceKnowledgeDomainAccessTokenRequest',
  '2': const [
    const {'1': 'space_knowledge_services_access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.space.SpaceKnowledgeServicesAccessAuthDetails', '10': 'spaceKnowledgeServicesAccessAuthDetails'},
    const {'1': 'space_knowledge_domain', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.SpaceKnowledgeDomain', '10': 'spaceKnowledgeDomain'},
  ],
};

/// Descriptor for `SpaceKnowledgeDomainAccessTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceKnowledgeDomainAccessTokenRequestDescriptor = $convert.base64Decode('CiZTcGFjZUtub3dsZWRnZURvbWFpbkFjY2Vzc1Rva2VuUmVxdWVzdBKuAQosc3BhY2Vfa25vd2xlZGdlX3NlcnZpY2VzX2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsyTy5lbGludC5zZXJ2aWNlcy5wcm9kdWN0Lmtub3dsZWRnZS5zcGFjZS5TcGFjZUtub3dsZWRnZVNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSJ3NwYWNlS25vd2xlZGdlU2VydmljZXNBY2Nlc3NBdXRoRGV0YWlscxJYChZzcGFjZV9rbm93bGVkZ2VfZG9tYWluGAIgASgLMiIuZWxpbnQuZW50aXR5LlNwYWNlS25vd2xlZGdlRG9tYWluUhRzcGFjZUtub3dsZWRnZURvbWFpbg==');
@$core.Deprecated('Use spaceKnowledgeDomainAccessTokenResponseDescriptor instead')
const SpaceKnowledgeDomainAccessTokenResponse$json = const {
  '1': 'SpaceKnowledgeDomainAccessTokenResponse',
  '2': const [
    const {'1': 'space_knowledge_domain_services_access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.domain.SpaceKnowledgeDomainServicesAccessAuthDetails', '10': 'spaceKnowledgeDomainServicesAccessAuthDetails'},
    const {'1': 'space_knowledge_domain_services_access_done', '3': 2, '4': 1, '5': 8, '10': 'spaceKnowledgeDomainServicesAccessDone'},
    const {'1': 'space_knowledge_domain_services_access_message', '3': 3, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainServicesAccessMessage'},
  ],
};

/// Descriptor for `SpaceKnowledgeDomainAccessTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceKnowledgeDomainAccessTokenResponseDescriptor = $convert.base64Decode('CidTcGFjZUtub3dsZWRnZURvbWFpbkFjY2Vzc1Rva2VuUmVzcG9uc2USwgEKM3NwYWNlX2tub3dsZWRnZV9kb21haW5fc2VydmljZXNfYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJWLmVsaW50LnNlcnZpY2VzLnByb2R1Y3Qua25vd2xlZGdlLmRvbWFpbi5TcGFjZUtub3dsZWRnZURvbWFpblNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSLXNwYWNlS25vd2xlZGdlRG9tYWluU2VydmljZXNBY2Nlc3NBdXRoRGV0YWlscxJbCitzcGFjZV9rbm93bGVkZ2VfZG9tYWluX3NlcnZpY2VzX2FjY2Vzc19kb25lGAIgASgIUiZzcGFjZUtub3dsZWRnZURvbWFpblNlcnZpY2VzQWNjZXNzRG9uZRJhCi5zcGFjZV9rbm93bGVkZ2VfZG9tYWluX3NlcnZpY2VzX2FjY2Vzc19tZXNzYWdlGAMgASgJUilzcGFjZUtub3dsZWRnZURvbWFpblNlcnZpY2VzQWNjZXNzTWVzc2FnZQ==');
@$core.Deprecated('Use validateSpaceKnowledgeDomainServicesResponseDescriptor instead')
const ValidateSpaceKnowledgeDomainServicesResponse$json = const {
  '1': 'ValidateSpaceKnowledgeDomainServicesResponse',
  '2': const [
    const {'1': 'space_knowledge_domain_services_access_validation_done', '3': 1, '4': 1, '5': 8, '10': 'spaceKnowledgeDomainServicesAccessValidationDone'},
    const {'1': 'space_knowledge_domain_services_access_validation_message', '3': 2, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainServicesAccessValidationMessage'},
  ],
};

/// Descriptor for `ValidateSpaceKnowledgeDomainServicesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateSpaceKnowledgeDomainServicesResponseDescriptor = $convert.base64Decode('CixWYWxpZGF0ZVNwYWNlS25vd2xlZGdlRG9tYWluU2VydmljZXNSZXNwb25zZRJwCjZzcGFjZV9rbm93bGVkZ2VfZG9tYWluX3NlcnZpY2VzX2FjY2Vzc192YWxpZGF0aW9uX2RvbmUYASABKAhSMHNwYWNlS25vd2xlZGdlRG9tYWluU2VydmljZXNBY2Nlc3NWYWxpZGF0aW9uRG9uZRJ2CjlzcGFjZV9rbm93bGVkZ2VfZG9tYWluX3NlcnZpY2VzX2FjY2Vzc192YWxpZGF0aW9uX21lc3NhZ2UYAiABKAlSM3NwYWNlS25vd2xlZGdlRG9tYWluU2VydmljZXNBY2Nlc3NWYWxpZGF0aW9uTWVzc2FnZQ==');
@$core.Deprecated('Use spaceKnowledgeDomainServicesAccessAuthDetailsDescriptor instead')
const SpaceKnowledgeDomainServicesAccessAuthDetails$json = const {
  '1': 'SpaceKnowledgeDomainServicesAccessAuthDetails',
  '2': const [
    const {'1': 'space_knowledge_domain', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.SpaceKnowledgeDomain', '10': 'spaceKnowledgeDomain'},
    const {'1': 'space_knowledge_domain_services_access_session_token_details', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.PersistentSessionTokenDetails', '10': 'spaceKnowledgeDomainServicesAccessSessionTokenDetails'},
    const {'1': 'requested_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestedAt'},
  ],
};

/// Descriptor for `SpaceKnowledgeDomainServicesAccessAuthDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceKnowledgeDomainServicesAccessAuthDetailsDescriptor = $convert.base64Decode('Ci1TcGFjZUtub3dsZWRnZURvbWFpblNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHMSWAoWc3BhY2Vfa25vd2xlZGdlX2RvbWFpbhgBIAEoCzIiLmVsaW50LmVudGl0eS5TcGFjZUtub3dsZWRnZURvbWFpblIUc3BhY2VLbm93bGVkZ2VEb21haW4SqAEKPHNwYWNlX2tub3dsZWRnZV9kb21haW5fc2VydmljZXNfYWNjZXNzX3Nlc3Npb25fdG9rZW5fZGV0YWlscxgCIAEoCzIrLmVsaW50LmVudGl0eS5QZXJzaXN0ZW50U2Vzc2lvblRva2VuRGV0YWlsc1I1c3BhY2VLbm93bGVkZ2VEb21haW5TZXJ2aWNlc0FjY2Vzc1Nlc3Npb25Ub2tlbkRldGFpbHMSPQoMcmVxdWVzdGVkX2F0GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILcmVxdWVzdGVkQXQ=');
