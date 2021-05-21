///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain/create_space_knowledge_domain.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createAccountWhiteSpaceKnowledgeDomainResponseDescriptor instead')
const CreateAccountWhiteSpaceKnowledgeDomainResponse$json = const {
  '1': 'CreateAccountWhiteSpaceKnowledgeDomainResponse',
  '2': const [
    const {'1': 'space_knowledge_domain_services_access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.domain.SpaceKnowledgeDomainServicesAccessAuthDetails', '10': 'spaceKnowledgeDomainServicesAccessAuthDetails'},
    const {'1': 'create_account_white_space_knowledge_domain_done', '3': 2, '4': 1, '5': 8, '10': 'createAccountWhiteSpaceKnowledgeDomainDone'},
    const {'1': 'create_account_white_space_knowledge_domain_message', '3': 3, '4': 1, '5': 9, '10': 'createAccountWhiteSpaceKnowledgeDomainMessage'},
  ],
};

/// Descriptor for `CreateAccountWhiteSpaceKnowledgeDomainResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAccountWhiteSpaceKnowledgeDomainResponseDescriptor = $convert.base64Decode('Ci5DcmVhdGVBY2NvdW50V2hpdGVTcGFjZUtub3dsZWRnZURvbWFpblJlc3BvbnNlEsIBCjNzcGFjZV9rbm93bGVkZ2VfZG9tYWluX3NlcnZpY2VzX2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsyVi5lbGludC5zZXJ2aWNlcy5wcm9kdWN0Lmtub3dsZWRnZS5kb21haW4uU3BhY2VLbm93bGVkZ2VEb21haW5TZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUi1zcGFjZUtub3dsZWRnZURvbWFpblNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHMSZAowY3JlYXRlX2FjY291bnRfd2hpdGVfc3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9kb25lGAIgASgIUipjcmVhdGVBY2NvdW50V2hpdGVTcGFjZUtub3dsZWRnZURvbWFpbkRvbmUSagozY3JlYXRlX2FjY291bnRfd2hpdGVfc3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9tZXNzYWdlGAMgASgJUi1jcmVhdGVBY2NvdW50V2hpdGVTcGFjZUtub3dsZWRnZURvbWFpbk1lc3NhZ2U=');
@$core.Deprecated('Use createSpaceKnowledgeDomainRequestDescriptor instead')
const CreateSpaceKnowledgeDomainRequest$json = const {
  '1': 'CreateSpaceKnowledgeDomainRequest',
  '2': const [
    const {'1': 'space_knowledge_services_access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.space.SpaceKnowledgeServicesAccessAuthDetails', '10': 'spaceKnowledgeServicesAccessAuthDetails'},
    const {'1': 'space_knowledge_domain_name', '3': 2, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainName'},
    const {'1': 'space_knowledge_domain_description', '3': 3, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainDescription'},
    const {'1': 'space_knowledge_domain_collar_enum', '3': 4, '4': 1, '5': 14, '6': '.elint.entity.SpaceKnowledgeDomainCollarEnum', '10': 'spaceKnowledgeDomainCollarEnum'},
    const {'1': 'space_knowledge_domain_isolated', '3': 5, '4': 1, '5': 8, '10': 'spaceKnowledgeDomainIsolated'},
  ],
};

/// Descriptor for `CreateSpaceKnowledgeDomainRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSpaceKnowledgeDomainRequestDescriptor = $convert.base64Decode('CiFDcmVhdGVTcGFjZUtub3dsZWRnZURvbWFpblJlcXVlc3QSrgEKLHNwYWNlX2tub3dsZWRnZV9zZXJ2aWNlc19hY2Nlc3NfYXV0aF9kZXRhaWxzGAEgASgLMk8uZWxpbnQuc2VydmljZXMucHJvZHVjdC5rbm93bGVkZ2Uuc3BhY2UuU3BhY2VLbm93bGVkZ2VTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUidzcGFjZUtub3dsZWRnZVNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHMSPQobc3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9uYW1lGAIgASgJUhhzcGFjZUtub3dsZWRnZURvbWFpbk5hbWUSSwoic3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9kZXNjcmlwdGlvbhgDIAEoCVIfc3BhY2VLbm93bGVkZ2VEb21haW5EZXNjcmlwdGlvbhJ4CiJzcGFjZV9rbm93bGVkZ2VfZG9tYWluX2NvbGxhcl9lbnVtGAQgASgOMiwuZWxpbnQuZW50aXR5LlNwYWNlS25vd2xlZGdlRG9tYWluQ29sbGFyRW51bVIec3BhY2VLbm93bGVkZ2VEb21haW5Db2xsYXJFbnVtEkUKH3NwYWNlX2tub3dsZWRnZV9kb21haW5faXNvbGF0ZWQYBSABKAhSHHNwYWNlS25vd2xlZGdlRG9tYWluSXNvbGF0ZWQ=');
@$core.Deprecated('Use createSpaceKnowledgeDomainResponseDescriptor instead')
const CreateSpaceKnowledgeDomainResponse$json = const {
  '1': 'CreateSpaceKnowledgeDomainResponse',
  '2': const [
    const {'1': 'space_knowledge_domain_services_access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.domain.SpaceKnowledgeDomainServicesAccessAuthDetails', '10': 'spaceKnowledgeDomainServicesAccessAuthDetails'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `CreateSpaceKnowledgeDomainResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSpaceKnowledgeDomainResponseDescriptor = $convert.base64Decode('CiJDcmVhdGVTcGFjZUtub3dsZWRnZURvbWFpblJlc3BvbnNlEsIBCjNzcGFjZV9rbm93bGVkZ2VfZG9tYWluX3NlcnZpY2VzX2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsyVi5lbGludC5zZXJ2aWNlcy5wcm9kdWN0Lmtub3dsZWRnZS5kb21haW4uU3BhY2VLbm93bGVkZ2VEb21haW5TZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUi1zcGFjZUtub3dsZWRnZURvbWFpblNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHMSPwoNcmVzcG9uc2VfbWV0YRgCIAEoCzIaLmVsaW50LmVudGl0eS5SZXNwb25zZU1ldGFSDHJlc3BvbnNlTWV0YQ==');
