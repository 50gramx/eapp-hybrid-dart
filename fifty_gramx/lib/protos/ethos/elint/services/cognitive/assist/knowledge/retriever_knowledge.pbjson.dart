///
//  Generated code. Do not modify.
//  source: ethos/elint/services/cognitive/assist/knowledge/retriever_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use retrieveClosestPagesReqDescriptor instead')
const RetrieveClosestPagesReq$json = const {
  '1': 'RetrieveClosestPagesReq',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.domain.SpaceKnowledgeDomainServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'retrieve_page_count', '3': 3, '4': 1, '5': 5, '10': 'retrievePageCount'},
  ],
};

/// Descriptor for `RetrieveClosestPagesReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List retrieveClosestPagesReqDescriptor = $convert.base64Decode('ChdSZXRyaWV2ZUNsb3Nlc3RQYWdlc1JlcRKGAQoTYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJWLmVsaW50LnNlcnZpY2VzLnByb2R1Y3Qua25vd2xlZGdlLmRvbWFpbi5TcGFjZUtub3dsZWRnZURvbWFpblNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSEWFjY2Vzc0F1dGhEZXRhaWxzEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2USLgoTcmV0cmlldmVfcGFnZV9jb3VudBgDIAEoBVIRcmV0cmlldmVQYWdlQ291bnQ=');
@$core.Deprecated('Use retrieveClosestParasRequestDescriptor instead')
const RetrieveClosestParasRequest$json = const {
  '1': 'RetrieveClosestParasRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.domain.SpaceKnowledgeDomainServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'retrieve_para_count', '3': 3, '4': 1, '5': 5, '10': 'retrieveParaCount'},
  ],
};

/// Descriptor for `RetrieveClosestParasRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List retrieveClosestParasRequestDescriptor = $convert.base64Decode('ChtSZXRyaWV2ZUNsb3Nlc3RQYXJhc1JlcXVlc3QShgEKE2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsyVi5lbGludC5zZXJ2aWNlcy5wcm9kdWN0Lmtub3dsZWRnZS5kb21haW4uU3BhY2VLbm93bGVkZ2VEb21haW5TZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUhFhY2Nlc3NBdXRoRGV0YWlscxIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdlEi4KE3JldHJpZXZlX3BhcmFfY291bnQYAyABKAVSEXJldHJpZXZlUGFyYUNvdW50');
@$core.Deprecated('Use closestPagesDescriptor instead')
const ClosestPages$json = const {
  '1': 'ClosestPages',
  '2': const [
    const {'1': 'ranked_pages', '3': 1, '4': 3, '5': 11, '6': '.elint.services.cognitive.assist.knowledge.retriever.RankedPage', '10': 'rankedPages'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `ClosestPages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closestPagesDescriptor = $convert.base64Decode('CgxDbG9zZXN0UGFnZXMSYgoMcmFua2VkX3BhZ2VzGAEgAygLMj8uZWxpbnQuc2VydmljZXMuY29nbml0aXZlLmFzc2lzdC5rbm93bGVkZ2UucmV0cmlldmVyLlJhbmtlZFBhZ2VSC3JhbmtlZFBhZ2VzEj8KDXJlc3BvbnNlX21ldGEYAiABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGE=');
@$core.Deprecated('Use closestParasDescriptor instead')
const ClosestParas$json = const {
  '1': 'ClosestParas',
  '2': const [
    const {'1': 'ranked_paras', '3': 1, '4': 3, '5': 11, '6': '.elint.services.cognitive.assist.knowledge.retriever.RankedPara', '10': 'rankedParas'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `ClosestParas`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closestParasDescriptor = $convert.base64Decode('CgxDbG9zZXN0UGFyYXMSYgoMcmFua2VkX3BhcmFzGAEgAygLMj8uZWxpbnQuc2VydmljZXMuY29nbml0aXZlLmFzc2lzdC5rbm93bGVkZ2UucmV0cmlldmVyLlJhbmtlZFBhcmFSC3JhbmtlZFBhcmFzEj8KDXJlc3BvbnNlX21ldGEYAiABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGE=');
@$core.Deprecated('Use rankedPageDescriptor instead')
const RankedPage$json = const {
  '1': 'RankedPage',
  '2': const [
    const {'1': 'page', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.SpaceKnowledgeDomainFilePage', '10': 'page'},
    const {'1': 'page_rank', '3': 2, '4': 1, '5': 2, '10': 'pageRank'},
  ],
};

/// Descriptor for `RankedPage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rankedPageDescriptor = $convert.base64Decode('CgpSYW5rZWRQYWdlEj4KBHBhZ2UYASABKAsyKi5lbGludC5lbnRpdHkuU3BhY2VLbm93bGVkZ2VEb21haW5GaWxlUGFnZVIEcGFnZRIbCglwYWdlX3JhbmsYAiABKAJSCHBhZ2VSYW5r');
@$core.Deprecated('Use rankedParaDescriptor instead')
const RankedPara$json = const {
  '1': 'RankedPara',
  '2': const [
    const {'1': 'para', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.SpaceKnowledgeDomainFilePagePara', '10': 'para'},
    const {'1': 'para_rank', '3': 2, '4': 1, '5': 2, '10': 'paraRank'},
  ],
};

/// Descriptor for `RankedPara`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rankedParaDescriptor = $convert.base64Decode('CgpSYW5rZWRQYXJhEkIKBHBhcmEYASABKAsyLi5lbGludC5lbnRpdHkuU3BhY2VLbm93bGVkZ2VEb21haW5GaWxlUGFnZVBhcmFSBHBhcmESGwoJcGFyYV9yYW5rGAIgASgCUghwYXJhUmFuaw==');
