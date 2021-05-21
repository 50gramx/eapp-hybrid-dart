///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file/create_space_knowledge_domain_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use uploadSpaceKnowledgeDomainFileRequestDescriptor instead')
const UploadSpaceKnowledgeDomainFileRequest$json = const {
  '1': 'UploadSpaceKnowledgeDomainFileRequest',
  '2': const [
    const {'1': 'space_knowledge_domain_services_access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.domain.SpaceKnowledgeDomainServicesAccessAuthDetails', '10': 'spaceKnowledgeDomainServicesAccessAuthDetails'},
    const {'1': 'space_knowledge_domain_file_name', '3': 2, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainFileName'},
    const {'1': 'space_knowledge_domain_file_size', '3': 3, '4': 1, '5': 5, '10': 'spaceKnowledgeDomainFileSize'},
    const {'1': 'space_knowledge_domain_file_extension_type', '3': 4, '4': 1, '5': 14, '6': '.elint.entity.ExtentionType', '10': 'spaceKnowledgeDomainFileExtensionType'},
    const {'1': 'space_knowledge_domain_file_tags', '3': 5, '4': 3, '5': 11, '6': '.elint.entity.FileTag', '10': 'spaceKnowledgeDomainFileTags'},
    const {'1': 'file_buffer', '3': 6, '4': 1, '5': 12, '10': 'fileBuffer'},
  ],
};

/// Descriptor for `UploadSpaceKnowledgeDomainFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadSpaceKnowledgeDomainFileRequestDescriptor = $convert.base64Decode('CiVVcGxvYWRTcGFjZUtub3dsZWRnZURvbWFpbkZpbGVSZXF1ZXN0EsIBCjNzcGFjZV9rbm93bGVkZ2VfZG9tYWluX3NlcnZpY2VzX2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsyVi5lbGludC5zZXJ2aWNlcy5wcm9kdWN0Lmtub3dsZWRnZS5kb21haW4uU3BhY2VLbm93bGVkZ2VEb21haW5TZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUi1zcGFjZUtub3dsZWRnZURvbWFpblNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHMSRgogc3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9maWxlX25hbWUYAiABKAlSHHNwYWNlS25vd2xlZGdlRG9tYWluRmlsZU5hbWUSRgogc3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9maWxlX3NpemUYAyABKAVSHHNwYWNlS25vd2xlZGdlRG9tYWluRmlsZVNpemUSdgoqc3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9maWxlX2V4dGVuc2lvbl90eXBlGAQgASgOMhsuZWxpbnQuZW50aXR5LkV4dGVudGlvblR5cGVSJXNwYWNlS25vd2xlZGdlRG9tYWluRmlsZUV4dGVuc2lvblR5cGUSXQogc3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9maWxlX3RhZ3MYBSADKAsyFS5lbGludC5lbnRpdHkuRmlsZVRhZ1Icc3BhY2VLbm93bGVkZ2VEb21haW5GaWxlVGFncxIfCgtmaWxlX2J1ZmZlchgGIAEoDFIKZmlsZUJ1ZmZlcg==');
@$core.Deprecated('Use uploadSpaceKnowledgeDomainFileResponseDescriptor instead')
const UploadSpaceKnowledgeDomainFileResponse$json = const {
  '1': 'UploadSpaceKnowledgeDomainFileResponse',
  '2': const [
    const {'1': 'space_knowledge_domain_file_service_access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.file.SpaceKnowledgeDomainFileServicesAccessAuthDetails', '10': 'spaceKnowledgeDomainFileServiceAccessAuthDetails'},
    const {'1': 'length', '3': 2, '4': 1, '5': 5, '10': 'length'},
    const {'1': 'space_knowledge_domain_file_upload_done', '3': 3, '4': 1, '5': 8, '10': 'spaceKnowledgeDomainFileUploadDone'},
    const {'1': 'space_knowledge_domain_file_upload_message', '3': 4, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainFileUploadMessage'},
  ],
};

/// Descriptor for `UploadSpaceKnowledgeDomainFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadSpaceKnowledgeDomainFileResponseDescriptor = $convert.base64Decode('CiZVcGxvYWRTcGFjZUtub3dsZWRnZURvbWFpbkZpbGVSZXNwb25zZRLLAQo3c3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9maWxlX3NlcnZpY2VfYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJYLmVsaW50LnNlcnZpY2VzLnByb2R1Y3Qua25vd2xlZGdlLmZpbGUuU3BhY2VLbm93bGVkZ2VEb21haW5GaWxlU2VydmljZXNBY2Nlc3NBdXRoRGV0YWlsc1Iwc3BhY2VLbm93bGVkZ2VEb21haW5GaWxlU2VydmljZUFjY2Vzc0F1dGhEZXRhaWxzEhYKBmxlbmd0aBgCIAEoBVIGbGVuZ3RoElMKJ3NwYWNlX2tub3dsZWRnZV9kb21haW5fZmlsZV91cGxvYWRfZG9uZRgDIAEoCFIic3BhY2VLbm93bGVkZ2VEb21haW5GaWxlVXBsb2FkRG9uZRJZCipzcGFjZV9rbm93bGVkZ2VfZG9tYWluX2ZpbGVfdXBsb2FkX21lc3NhZ2UYBCABKAlSJXNwYWNlS25vd2xlZGdlRG9tYWluRmlsZVVwbG9hZE1lc3NhZ2U=');
