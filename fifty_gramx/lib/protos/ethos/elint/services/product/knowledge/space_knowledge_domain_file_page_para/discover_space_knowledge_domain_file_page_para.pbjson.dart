///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file_page_para/discover_space_knowledge_domain_file_page_para.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use listOfParaIdsDescriptor instead')
const ListOfParaIds$json = const {
  '1': 'ListOfParaIds',
  '2': const [
    const {'1': 'space_knowledge_domain_file_page_para_ids', '3': 1, '4': 3, '5': 9, '10': 'spaceKnowledgeDomainFilePageParaIds'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `ListOfParaIds`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOfParaIdsDescriptor = $convert.base64Decode('Cg1MaXN0T2ZQYXJhSWRzElYKKXNwYWNlX2tub3dsZWRnZV9kb21haW5fZmlsZV9wYWdlX3BhcmFfaWRzGAEgAygJUiNzcGFjZUtub3dsZWRnZURvbWFpbkZpbGVQYWdlUGFyYUlkcxI/Cg1yZXNwb25zZV9tZXRhGAIgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRh');
@$core.Deprecated('Use getParaTextByIdReqDescriptor instead')
const GetParaTextByIdReq$json = const {
  '1': 'GetParaTextByIdReq',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.domain.SpaceKnowledgeDomainServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'space_knowledge_domain_file_page_para_id', '3': 2, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainFilePageParaId'},
  ],
};

/// Descriptor for `GetParaTextByIdReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getParaTextByIdReqDescriptor = $convert.base64Decode('ChJHZXRQYXJhVGV4dEJ5SWRSZXEShgEKE2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsyVi5lbGludC5zZXJ2aWNlcy5wcm9kdWN0Lmtub3dsZWRnZS5kb21haW4uU3BhY2VLbm93bGVkZ2VEb21haW5TZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUhFhY2Nlc3NBdXRoRGV0YWlscxJUCihzcGFjZV9rbm93bGVkZ2VfZG9tYWluX2ZpbGVfcGFnZV9wYXJhX2lkGAIgASgJUiJzcGFjZUtub3dsZWRnZURvbWFpbkZpbGVQYWdlUGFyYUlk');
@$core.Deprecated('Use getParaTextByIdResDescriptor instead')
const GetParaTextByIdRes$json = const {
  '1': 'GetParaTextByIdRes',
  '2': const [
    const {'1': 'para_text', '3': 1, '4': 1, '5': 9, '10': 'paraText'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `GetParaTextByIdRes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getParaTextByIdResDescriptor = $convert.base64Decode('ChJHZXRQYXJhVGV4dEJ5SWRSZXMSGwoJcGFyYV90ZXh0GAEgASgJUghwYXJhVGV4dBI/Cg1yZXNwb25zZV9tZXRhGAIgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRh');
@$core.Deprecated('Use getParaByIdRequestDescriptor instead')
const GetParaByIdRequest$json = const {
  '1': 'GetParaByIdRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.domain.SpaceKnowledgeDomainServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'space_knowledge_domain_file_page_para_id', '3': 2, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainFilePageParaId'},
  ],
};

/// Descriptor for `GetParaByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getParaByIdRequestDescriptor = $convert.base64Decode('ChJHZXRQYXJhQnlJZFJlcXVlc3QShgEKE2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsyVi5lbGludC5zZXJ2aWNlcy5wcm9kdWN0Lmtub3dsZWRnZS5kb21haW4uU3BhY2VLbm93bGVkZ2VEb21haW5TZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUhFhY2Nlc3NBdXRoRGV0YWlscxJUCihzcGFjZV9rbm93bGVkZ2VfZG9tYWluX2ZpbGVfcGFnZV9wYXJhX2lkGAIgASgJUiJzcGFjZUtub3dsZWRnZURvbWFpbkZpbGVQYWdlUGFyYUlk');
@$core.Deprecated('Use getParaByIdResponseDescriptor instead')
const GetParaByIdResponse$json = const {
  '1': 'GetParaByIdResponse',
  '2': const [
    const {'1': 'space_knowledge_domain_file_page_para', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.SpaceKnowledgeDomainFilePagePara', '10': 'spaceKnowledgeDomainFilePagePara'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `GetParaByIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getParaByIdResponseDescriptor = $convert.base64Decode('ChNHZXRQYXJhQnlJZFJlc3BvbnNlEn8KJXNwYWNlX2tub3dsZWRnZV9kb21haW5fZmlsZV9wYWdlX3BhcmEYASABKAsyLi5lbGludC5lbnRpdHkuU3BhY2VLbm93bGVkZ2VEb21haW5GaWxlUGFnZVBhcmFSIHNwYWNlS25vd2xlZGdlRG9tYWluRmlsZVBhZ2VQYXJhEj8KDXJlc3BvbnNlX21ldGEYAiABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGE=');
@$core.Deprecated('Use getParaImageByIdRequestDescriptor instead')
const GetParaImageByIdRequest$json = const {
  '1': 'GetParaImageByIdRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.domain.SpaceKnowledgeDomainServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'space_knowledge_domain_file_page_para_id', '3': 2, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainFilePageParaId'},
  ],
};

/// Descriptor for `GetParaImageByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getParaImageByIdRequestDescriptor = $convert.base64Decode('ChdHZXRQYXJhSW1hZ2VCeUlkUmVxdWVzdBKGAQoTYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJWLmVsaW50LnNlcnZpY2VzLnByb2R1Y3Qua25vd2xlZGdlLmRvbWFpbi5TcGFjZUtub3dsZWRnZURvbWFpblNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSEWFjY2Vzc0F1dGhEZXRhaWxzElQKKHNwYWNlX2tub3dsZWRnZV9kb21haW5fZmlsZV9wYWdlX3BhcmFfaWQYAiABKAlSInNwYWNlS25vd2xlZGdlRG9tYWluRmlsZVBhZ2VQYXJhSWQ=');
@$core.Deprecated('Use getParaImageByIdResponseDescriptor instead')
const GetParaImageByIdResponse$json = const {
  '1': 'GetParaImageByIdResponse',
  '2': const [
    const {'1': 'image_chunk', '3': 1, '4': 1, '5': 12, '10': 'imageChunk'},
  ],
};

/// Descriptor for `GetParaImageByIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getParaImageByIdResponseDescriptor = $convert.base64Decode('ChhHZXRQYXJhSW1hZ2VCeUlkUmVzcG9uc2USHwoLaW1hZ2VfY2h1bmsYASABKAxSCmltYWdlQ2h1bms=');
