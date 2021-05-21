///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file/discover_space_knowledge_domain_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getFileDetailsRequestDescriptor instead')
const GetFileDetailsRequest$json = const {
  '1': 'GetFileDetailsRequest',
  '2': const [
    const {'1': 'account_knowledge_domain_file_access_meta', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.AccountSpaceKnowledgeDomainFileAccessMeta', '10': 'accountKnowledgeDomainFileAccessMeta'},
    const {'1': 'file_id', '3': 2, '4': 1, '5': 9, '10': 'fileId'},
  ],
};

/// Descriptor for `GetFileDetailsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFileDetailsRequestDescriptor = $convert.base64Decode('ChVHZXRGaWxlRGV0YWlsc1JlcXVlc3QSkAEKKWFjY291bnRfa25vd2xlZGdlX2RvbWFpbl9maWxlX2FjY2Vzc19tZXRhGAEgASgLMjcuZWxpbnQuZW50aXR5LkFjY291bnRTcGFjZUtub3dsZWRnZURvbWFpbkZpbGVBY2Nlc3NNZXRhUiRhY2NvdW50S25vd2xlZGdlRG9tYWluRmlsZUFjY2Vzc01ldGESFwoHZmlsZV9pZBgCIAEoCVIGZmlsZUlk');
@$core.Deprecated('Use fileExistsByIDRequestDescriptor instead')
const FileExistsByIDRequest$json = const {
  '1': 'FileExistsByIDRequest',
  '2': const [
    const {'1': 'account_knowledge_domain_file_access_meta', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.AccountSpaceKnowledgeDomainFileAccessMeta', '10': 'accountKnowledgeDomainFileAccessMeta'},
    const {'1': 'file_id', '3': 2, '4': 1, '5': 9, '10': 'fileId'},
  ],
};

/// Descriptor for `FileExistsByIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileExistsByIDRequestDescriptor = $convert.base64Decode('ChVGaWxlRXhpc3RzQnlJRFJlcXVlc3QSkAEKKWFjY291bnRfa25vd2xlZGdlX2RvbWFpbl9maWxlX2FjY2Vzc19tZXRhGAEgASgLMjcuZWxpbnQuZW50aXR5LkFjY291bnRTcGFjZUtub3dsZWRnZURvbWFpbkZpbGVBY2Nlc3NNZXRhUiRhY2NvdW50S25vd2xlZGdlRG9tYWluRmlsZUFjY2Vzc01ldGESFwoHZmlsZV9pZBgCIAEoCVIGZmlsZUlk');
@$core.Deprecated('Use fileExistsByIDResponseDescriptor instead')
const FileExistsByIDResponse$json = const {
  '1': 'FileExistsByIDResponse',
  '2': const [
    const {'1': 'file_exists', '3': 1, '4': 1, '5': 8, '10': 'fileExists'},
  ],
};

/// Descriptor for `FileExistsByIDResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileExistsByIDResponseDescriptor = $convert.base64Decode('ChZGaWxlRXhpc3RzQnlJRFJlc3BvbnNlEh8KC2ZpbGVfZXhpc3RzGAEgASgIUgpmaWxlRXhpc3Rz');
