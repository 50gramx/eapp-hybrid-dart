///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/space_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use spaceKnowledgeActionDescriptor instead')
const SpaceKnowledgeAction$json = const {
  '1': 'SpaceKnowledgeAction',
  '2': const [
    const {'1': 'ASK_QUESTION', '2': 0},
  ],
};

/// Descriptor for `SpaceKnowledgeAction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List spaceKnowledgeActionDescriptor = $convert.base64Decode('ChRTcGFjZUtub3dsZWRnZUFjdGlvbhIQCgxBU0tfUVVFU1RJT04QAA==');
@$core.Deprecated('Use spaceKnowledgeDescriptor instead')
const SpaceKnowledge$json = const {
  '1': 'SpaceKnowledge',
  '2': const [
    const {'1': 'space_knowledge_name', '3': 1, '4': 1, '5': 9, '10': 'spaceKnowledgeName'},
    const {'1': 'space_knowledge_id', '3': 2, '4': 1, '5': 9, '10': 'spaceKnowledgeId'},
    const {'1': 'space_knowledge_admin_account_id', '3': 3, '4': 1, '5': 9, '10': 'spaceKnowledgeAdminAccountId'},
    const {'1': 'space', '3': 4, '4': 1, '5': 11, '6': '.elint.entity.Space', '10': 'space'},
    const {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `SpaceKnowledge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceKnowledgeDescriptor = $convert.base64Decode('Cg5TcGFjZUtub3dsZWRnZRIwChRzcGFjZV9rbm93bGVkZ2VfbmFtZRgBIAEoCVISc3BhY2VLbm93bGVkZ2VOYW1lEiwKEnNwYWNlX2tub3dsZWRnZV9pZBgCIAEoCVIQc3BhY2VLbm93bGVkZ2VJZBJGCiBzcGFjZV9rbm93bGVkZ2VfYWRtaW5fYWNjb3VudF9pZBgDIAEoCVIcc3BhY2VLbm93bGVkZ2VBZG1pbkFjY291bnRJZBIpCgVzcGFjZRgEIAEoCzITLmVsaW50LmVudGl0eS5TcGFjZVIFc3BhY2USOQoKY3JlYXRlZF9hdBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdA==');
@$core.Deprecated('Use spaceKnowledgeInferredDomainDescriptor instead')
const SpaceKnowledgeInferredDomain$json = const {
  '1': 'SpaceKnowledgeInferredDomain',
  '2': const [
    const {'1': 'inferred_domain_id', '3': 1, '4': 1, '5': 9, '10': 'inferredDomainId'},
    const {'1': 'space_knowledge_id', '3': 2, '4': 1, '5': 9, '10': 'spaceKnowledgeId'},
    const {'1': 'space_knowledge_domain_id', '3': 3, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainId'},
    const {'1': 'inferred_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'inferredAt'},
  ],
};

/// Descriptor for `SpaceKnowledgeInferredDomain`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceKnowledgeInferredDomainDescriptor = $convert.base64Decode('ChxTcGFjZUtub3dsZWRnZUluZmVycmVkRG9tYWluEiwKEmluZmVycmVkX2RvbWFpbl9pZBgBIAEoCVIQaW5mZXJyZWREb21haW5JZBIsChJzcGFjZV9rbm93bGVkZ2VfaWQYAiABKAlSEHNwYWNlS25vd2xlZGdlSWQSOQoZc3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9pZBgDIAEoCVIWc3BhY2VLbm93bGVkZ2VEb21haW5JZBI7CgtpbmZlcnJlZF9hdBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCmluZmVycmVkQXQ=');
