///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page_para/access_space_knowledge_domain_file_page_para.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use spaceKnowledgeDomainFilePageParaAccessTokenRequestDescriptor instead')
const SpaceKnowledgeDomainFilePageParaAccessTokenRequest$json = const {
  '1': 'SpaceKnowledgeDomainFilePageParaAccessTokenRequest',
  '2': const [
    const {'1': 'space_knowledge_domain_file_page_services_access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.page.SpaceKnowledgeDomainFilePageServicesAccessAuthDetails', '10': 'spaceKnowledgeDomainFilePageServicesAccessAuthDetails'},
    const {'1': 'space_knowledge_domain_file_page_para', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.SpaceKnowledgeDomainFilePagePara', '10': 'spaceKnowledgeDomainFilePagePara'},
  ],
};

/// Descriptor for `SpaceKnowledgeDomainFilePageParaAccessTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceKnowledgeDomainFilePageParaAccessTokenRequestDescriptor = $convert.base64Decode('CjJTcGFjZUtub3dsZWRnZURvbWFpbkZpbGVQYWdlUGFyYUFjY2Vzc1Rva2VuUmVxdWVzdBLaAQo9c3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9maWxlX3BhZ2Vfc2VydmljZXNfYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJcLmVsaW50LnNlcnZpY2VzLnByb2R1Y3Qua25vd2xlZGdlLnBhZ2UuU3BhY2VLbm93bGVkZ2VEb21haW5GaWxlUGFnZVNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSNXNwYWNlS25vd2xlZGdlRG9tYWluRmlsZVBhZ2VTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzEn8KJXNwYWNlX2tub3dsZWRnZV9kb21haW5fZmlsZV9wYWdlX3BhcmEYAiABKAsyLi5lbGludC5lbnRpdHkuU3BhY2VLbm93bGVkZ2VEb21haW5GaWxlUGFnZVBhcmFSIHNwYWNlS25vd2xlZGdlRG9tYWluRmlsZVBhZ2VQYXJh');
@$core.Deprecated('Use spaceKnowledgeDomainFilePageParaAccessTokenResponseDescriptor instead')
const SpaceKnowledgeDomainFilePageParaAccessTokenResponse$json = const {
  '1': 'SpaceKnowledgeDomainFilePageParaAccessTokenResponse',
  '2': const [
    const {'1': 'space_knowledge_domain_file_page_para_services_access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.para.SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails', '10': 'spaceKnowledgeDomainFilePageParaServicesAccessAuthDetails'},
    const {'1': 'space_knowledge_domain_file_page_para_services_access_done', '3': 2, '4': 1, '5': 8, '10': 'spaceKnowledgeDomainFilePageParaServicesAccessDone'},
    const {'1': 'space_knowledge_domain_file_page_para_services_access_message', '3': 3, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainFilePageParaServicesAccessMessage'},
  ],
};

/// Descriptor for `SpaceKnowledgeDomainFilePageParaAccessTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceKnowledgeDomainFilePageParaAccessTokenResponseDescriptor = $convert.base64Decode('CjNTcGFjZUtub3dsZWRnZURvbWFpbkZpbGVQYWdlUGFyYUFjY2Vzc1Rva2VuUmVzcG9uc2US5wEKQnNwYWNlX2tub3dsZWRnZV9kb21haW5fZmlsZV9wYWdlX3BhcmFfc2VydmljZXNfYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJgLmVsaW50LnNlcnZpY2VzLnByb2R1Y3Qua25vd2xlZGdlLnBhcmEuU3BhY2VLbm93bGVkZ2VEb21haW5GaWxlUGFnZVBhcmFTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUjlzcGFjZUtub3dsZWRnZURvbWFpbkZpbGVQYWdlUGFyYVNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHMSdgo6c3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9maWxlX3BhZ2VfcGFyYV9zZXJ2aWNlc19hY2Nlc3NfZG9uZRgCIAEoCFIyc3BhY2VLbm93bGVkZ2VEb21haW5GaWxlUGFnZVBhcmFTZXJ2aWNlc0FjY2Vzc0RvbmUSfAo9c3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9maWxlX3BhZ2VfcGFyYV9zZXJ2aWNlc19hY2Nlc3NfbWVzc2FnZRgDIAEoCVI1c3BhY2VLbm93bGVkZ2VEb21haW5GaWxlUGFnZVBhcmFTZXJ2aWNlc0FjY2Vzc01lc3NhZ2U=');
@$core.Deprecated('Use validateSpaceKnowledgeDomainFilePageParaServicesResponseDescriptor instead')
const ValidateSpaceKnowledgeDomainFilePageParaServicesResponse$json = const {
  '1': 'ValidateSpaceKnowledgeDomainFilePageParaServicesResponse',
  '2': const [
    const {'1': 'space_knowledge_domain_file_page_para_services_access_validation_done', '3': 1, '4': 1, '5': 8, '10': 'spaceKnowledgeDomainFilePageParaServicesAccessValidationDone'},
    const {'1': 'space_knowledge_domain_file_page_para_services_access_validation_message', '3': 2, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainFilePageParaServicesAccessValidationMessage'},
  ],
};

/// Descriptor for `ValidateSpaceKnowledgeDomainFilePageParaServicesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateSpaceKnowledgeDomainFilePageParaServicesResponseDescriptor = $convert.base64Decode('CjhWYWxpZGF0ZVNwYWNlS25vd2xlZGdlRG9tYWluRmlsZVBhZ2VQYXJhU2VydmljZXNSZXNwb25zZRKLAQpFc3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9maWxlX3BhZ2VfcGFyYV9zZXJ2aWNlc19hY2Nlc3NfdmFsaWRhdGlvbl9kb25lGAEgASgIUjxzcGFjZUtub3dsZWRnZURvbWFpbkZpbGVQYWdlUGFyYVNlcnZpY2VzQWNjZXNzVmFsaWRhdGlvbkRvbmUSkQEKSHNwYWNlX2tub3dsZWRnZV9kb21haW5fZmlsZV9wYWdlX3BhcmFfc2VydmljZXNfYWNjZXNzX3ZhbGlkYXRpb25fbWVzc2FnZRgCIAEoCVI/c3BhY2VLbm93bGVkZ2VEb21haW5GaWxlUGFnZVBhcmFTZXJ2aWNlc0FjY2Vzc1ZhbGlkYXRpb25NZXNzYWdl');
@$core.Deprecated('Use spaceKnowledgeDomainFilePageParaServicesAccessAuthDetailsDescriptor instead')
const SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails$json = const {
  '1': 'SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails',
  '2': const [
    const {'1': 'space_knowledge_domain_file_page_para', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.SpaceKnowledgeDomainFilePagePara', '10': 'spaceKnowledgeDomainFilePagePara'},
    const {'1': 'space_knowledge_domain_file_page_para_services_access_session_token_details', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.PersistentSessionTokenDetails', '10': 'spaceKnowledgeDomainFilePageParaServicesAccessSessionTokenDetails'},
    const {'1': 'requested_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestedAt'},
  ],
};

/// Descriptor for `SpaceKnowledgeDomainFilePageParaServicesAccessAuthDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceKnowledgeDomainFilePageParaServicesAccessAuthDetailsDescriptor = $convert.base64Decode('CjlTcGFjZUtub3dsZWRnZURvbWFpbkZpbGVQYWdlUGFyYVNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHMSfwolc3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9maWxlX3BhZ2VfcGFyYRgBIAEoCzIuLmVsaW50LmVudGl0eS5TcGFjZUtub3dsZWRnZURvbWFpbkZpbGVQYWdlUGFyYVIgc3BhY2VLbm93bGVkZ2VEb21haW5GaWxlUGFnZVBhcmESwwEKS3NwYWNlX2tub3dsZWRnZV9kb21haW5fZmlsZV9wYWdlX3BhcmFfc2VydmljZXNfYWNjZXNzX3Nlc3Npb25fdG9rZW5fZGV0YWlscxgCIAEoCzIrLmVsaW50LmVudGl0eS5QZXJzaXN0ZW50U2Vzc2lvblRva2VuRGV0YWlsc1JBc3BhY2VLbm93bGVkZ2VEb21haW5GaWxlUGFnZVBhcmFTZXJ2aWNlc0FjY2Vzc1Nlc3Npb25Ub2tlbkRldGFpbHMSPQoMcmVxdWVzdGVkX2F0GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILcmVxdWVzdGVkQXQ=');
