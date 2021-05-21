///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/space_knowledge_domain.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use spaceKnowledgeDomainCollarEnumDescriptor instead')
const SpaceKnowledgeDomainCollarEnum$json = const {
  '1': 'SpaceKnowledgeDomainCollarEnum',
  '2': const [
    const {'1': 'WHITE_COLLAR', '2': 0},
    const {'1': 'BLUE_COLLAR', '2': 1},
    const {'1': 'PINK_COLLAR', '2': 2},
    const {'1': 'GOLD_COLLAR', '2': 3},
    const {'1': 'RED_COLLAR', '2': 4},
    const {'1': 'PURPLE_COLLAR', '2': 5},
    const {'1': 'NEW_COLLAR', '2': 6},
    const {'1': 'NO_COLLAR', '2': 7},
    const {'1': 'ORANGE_COLLAR', '2': 8},
    const {'1': 'GREEN_COLLAR', '2': 9},
    const {'1': 'SCARLET_COLLAR', '2': 10},
    const {'1': 'BROWN_COLLAR', '2': 11},
    const {'1': 'STEEL_COLLAR', '2': 12},
    const {'1': 'BLACK_COLLAR', '2': 13},
    const {'1': 'GREY_COLLAR', '2': 14},
  ],
};

/// Descriptor for `SpaceKnowledgeDomainCollarEnum`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List spaceKnowledgeDomainCollarEnumDescriptor = $convert.base64Decode('Ch5TcGFjZUtub3dsZWRnZURvbWFpbkNvbGxhckVudW0SEAoMV0hJVEVfQ09MTEFSEAASDwoLQkxVRV9DT0xMQVIQARIPCgtQSU5LX0NPTExBUhACEg8KC0dPTERfQ09MTEFSEAMSDgoKUkVEX0NPTExBUhAEEhEKDVBVUlBMRV9DT0xMQVIQBRIOCgpORVdfQ09MTEFSEAYSDQoJTk9fQ09MTEFSEAcSEQoNT1JBTkdFX0NPTExBUhAIEhAKDEdSRUVOX0NPTExBUhAJEhIKDlNDQVJMRVRfQ09MTEFSEAoSEAoMQlJPV05fQ09MTEFSEAsSEAoMU1RFRUxfQ09MTEFSEAwSEAoMQkxBQ0tfQ09MTEFSEA0SDwoLR1JFWV9DT0xMQVIQDg==');
@$core.Deprecated('Use spaceKnowledgeDomainDescriptor instead')
const SpaceKnowledgeDomain$json = const {
  '1': 'SpaceKnowledgeDomain',
  '2': const [
    const {'1': 'space_knowledge_domain_id', '3': 1, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainId'},
    const {'1': 'space_knowledge_domain_name', '3': 2, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainName'},
    const {'1': 'space_knowledge_domain_description', '3': 3, '4': 1, '5': 9, '10': 'spaceKnowledgeDomainDescription'},
    const {'1': 'space_knowledge_domain_collar_enum', '3': 4, '4': 1, '5': 14, '6': '.elint.entity.SpaceKnowledgeDomainCollarEnum', '10': 'spaceKnowledgeDomainCollarEnum'},
    const {'1': 'space_knowledge_domain_isolated', '3': 5, '4': 1, '5': 8, '10': 'spaceKnowledgeDomainIsolated'},
    const {'1': 'space_knowledge', '3': 6, '4': 1, '5': 11, '6': '.elint.entity.SpaceKnowledge', '10': 'spaceKnowledge'},
    const {'1': 'created_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'last_updated_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastUpdatedAt'},
  ],
};

/// Descriptor for `SpaceKnowledgeDomain`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceKnowledgeDomainDescriptor = $convert.base64Decode('ChRTcGFjZUtub3dsZWRnZURvbWFpbhI5ChlzcGFjZV9rbm93bGVkZ2VfZG9tYWluX2lkGAEgASgJUhZzcGFjZUtub3dsZWRnZURvbWFpbklkEj0KG3NwYWNlX2tub3dsZWRnZV9kb21haW5fbmFtZRgCIAEoCVIYc3BhY2VLbm93bGVkZ2VEb21haW5OYW1lEksKInNwYWNlX2tub3dsZWRnZV9kb21haW5fZGVzY3JpcHRpb24YAyABKAlSH3NwYWNlS25vd2xlZGdlRG9tYWluRGVzY3JpcHRpb24SeAoic3BhY2Vfa25vd2xlZGdlX2RvbWFpbl9jb2xsYXJfZW51bRgEIAEoDjIsLmVsaW50LmVudGl0eS5TcGFjZUtub3dsZWRnZURvbWFpbkNvbGxhckVudW1SHnNwYWNlS25vd2xlZGdlRG9tYWluQ29sbGFyRW51bRJFCh9zcGFjZV9rbm93bGVkZ2VfZG9tYWluX2lzb2xhdGVkGAUgASgIUhxzcGFjZUtub3dsZWRnZURvbWFpbklzb2xhdGVkEkUKD3NwYWNlX2tub3dsZWRnZRgGIAEoCzIcLmVsaW50LmVudGl0eS5TcGFjZUtub3dsZWRnZVIOc3BhY2VLbm93bGVkZ2USOQoKY3JlYXRlZF9hdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBJCCg9sYXN0X3VwZGF0ZWRfYXQYCCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg1sYXN0VXBkYXRlZEF0');
@$core.Deprecated('Use spaceKnowledgeDomainInferringAccountDescriptor instead')
const SpaceKnowledgeDomainInferringAccount$json = const {
  '1': 'SpaceKnowledgeDomainInferringAccount',
  '2': const [
    const {'1': 'inferring_account_id', '3': 1, '4': 1, '5': 9, '10': 'inferringAccountId'},
    const {'1': 'space_knowledge_id', '3': 2, '4': 1, '5': 9, '10': 'spaceKnowledgeId'},
    const {'1': 'account_id', '3': 3, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'inferred_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'inferredAt'},
  ],
};

/// Descriptor for `SpaceKnowledgeDomainInferringAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceKnowledgeDomainInferringAccountDescriptor = $convert.base64Decode('CiRTcGFjZUtub3dsZWRnZURvbWFpbkluZmVycmluZ0FjY291bnQSMAoUaW5mZXJyaW5nX2FjY291bnRfaWQYASABKAlSEmluZmVycmluZ0FjY291bnRJZBIsChJzcGFjZV9rbm93bGVkZ2VfaWQYAiABKAlSEHNwYWNlS25vd2xlZGdlSWQSHQoKYWNjb3VudF9pZBgDIAEoCVIJYWNjb3VudElkEjsKC2luZmVycmVkX2F0GAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKaW5mZXJyZWRBdA==');
@$core.Deprecated('Use rankedAnswerDescriptor instead')
const RankedAnswer$json = const {
  '1': 'RankedAnswer',
  '2': const [
    const {'1': 'context_id', '3': 1, '4': 1, '5': 9, '10': 'contextId'},
    const {'1': 'para_rank', '3': 2, '4': 1, '5': 2, '10': 'paraRank'},
    const {'1': 'answer', '3': 3, '4': 1, '5': 9, '10': 'answer'},
  ],
};

/// Descriptor for `RankedAnswer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rankedAnswerDescriptor = $convert.base64Decode('CgxSYW5rZWRBbnN3ZXISHQoKY29udGV4dF9pZBgBIAEoCVIJY29udGV4dElkEhsKCXBhcmFfcmFuaxgCIAEoAlIIcGFyYVJhbmsSFgoGYW5zd2VyGAMgASgJUgZhbnN3ZXI=');
