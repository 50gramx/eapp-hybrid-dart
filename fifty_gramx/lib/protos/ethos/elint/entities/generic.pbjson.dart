///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/generic.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use pictureSizeDescriptor instead')
const PictureSize$json = const {
  '1': 'PictureSize',
  '2': const [
    const {'1': 'x20', '2': 0},
    const {'1': 'x29', '2': 1},
    const {'1': 'x40', '2': 2},
    const {'1': 'x60', '2': 3},
    const {'1': 'x76', '2': 4},
    const {'1': 'x83p5', '2': 5},
  ],
};

/// Descriptor for `PictureSize`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pictureSizeDescriptor = $convert.base64Decode('CgtQaWN0dXJlU2l6ZRIHCgN4MjAQABIHCgN4MjkQARIHCgN4NDAQAhIHCgN4NjAQAxIHCgN4NzYQBBIJCgV4ODNwNRAF');
@$core.Deprecated('Use pictureScaleDescriptor instead')
const PictureScale$json = const {
  '1': 'PictureScale',
  '2': const [
    const {'1': 'x1', '2': 0},
    const {'1': 'x2', '2': 1},
    const {'1': 'x3', '2': 2},
  ],
};

/// Descriptor for `PictureScale`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pictureScaleDescriptor = $convert.base64Decode('CgxQaWN0dXJlU2NhbGUSBgoCeDEQABIGCgJ4MhABEgYKAngzEAI=');
@$core.Deprecated('Use persistentSessionTokenDetailsDescriptor instead')
const PersistentSessionTokenDetails$json = const {
  '1': 'PersistentSessionTokenDetails',
  '2': const [
    const {'1': 'session_token', '3': 1, '4': 1, '5': 9, '10': 'sessionToken'},
    const {'1': 'session_scope', '3': 2, '4': 1, '5': 9, '10': 'sessionScope'},
    const {'1': 'generated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'generatedAt'},
    const {'1': 'last_used_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastUsedAt'},
    const {'1': 'valid_till', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'validTill'},
  ],
};

/// Descriptor for `PersistentSessionTokenDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistentSessionTokenDetailsDescriptor = $convert.base64Decode('Ch1QZXJzaXN0ZW50U2Vzc2lvblRva2VuRGV0YWlscxIjCg1zZXNzaW9uX3Rva2VuGAEgASgJUgxzZXNzaW9uVG9rZW4SIwoNc2Vzc2lvbl9zY29wZRgCIAEoCVIMc2Vzc2lvblNjb3BlEj0KDGdlbmVyYXRlZF9hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC2dlbmVyYXRlZEF0EjwKDGxhc3RfdXNlZF9hdBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCmxhc3RVc2VkQXQSOQoKdmFsaWRfdGlsbBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXZhbGlkVGlsbA==');
@$core.Deprecated('Use temporarySessionTokenDetailsDescriptor instead')
const TemporarySessionTokenDetails$json = const {
  '1': 'TemporarySessionTokenDetails',
  '2': const [
    const {'1': 'session_token', '3': 1, '4': 1, '5': 9, '10': 'sessionToken'},
    const {'1': 'session_scope', '3': 2, '4': 1, '5': 9, '10': 'sessionScope'},
    const {'1': 'generated_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'generatedAt'},
    const {'1': 'valid_till', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'validTill'},
  ],
};

/// Descriptor for `TemporarySessionTokenDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List temporarySessionTokenDetailsDescriptor = $convert.base64Decode('ChxUZW1wb3JhcnlTZXNzaW9uVG9rZW5EZXRhaWxzEiMKDXNlc3Npb25fdG9rZW4YASABKAlSDHNlc3Npb25Ub2tlbhIjCg1zZXNzaW9uX3Njb3BlGAIgASgJUgxzZXNzaW9uU2NvcGUSPQoMZ2VuZXJhdGVkX2F0GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILZ2VuZXJhdGVkQXQSOQoKdmFsaWRfdGlsbBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXZhbGlkVGlsbA==');
@$core.Deprecated('Use persistentTokenDetailsDescriptor instead')
const PersistentTokenDetails$json = const {
  '1': 'PersistentTokenDetails',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'generated_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'generatedAt'},
    const {'1': 'last_used_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastUsedAt'},
    const {'1': 'valid_till', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'validTill'},
  ],
};

/// Descriptor for `PersistentTokenDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistentTokenDetailsDescriptor = $convert.base64Decode('ChZQZXJzaXN0ZW50VG9rZW5EZXRhaWxzEhQKBXRva2VuGAEgASgJUgV0b2tlbhI9CgxnZW5lcmF0ZWRfYXQYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgtnZW5lcmF0ZWRBdBI8CgxsYXN0X3VzZWRfYXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgpsYXN0VXNlZEF0EjkKCnZhbGlkX3RpbGwYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgl2YWxpZFRpbGw=');
@$core.Deprecated('Use temporaryTokenDetailsDescriptor instead')
const TemporaryTokenDetails$json = const {
  '1': 'TemporaryTokenDetails',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    const {'1': 'generated_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'generatedAt'},
    const {'1': 'valid_till', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'validTill'},
  ],
};

/// Descriptor for `TemporaryTokenDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List temporaryTokenDetailsDescriptor = $convert.base64Decode('ChVUZW1wb3JhcnlUb2tlbkRldGFpbHMSFAoFdG9rZW4YASABKAlSBXRva2VuEj0KDGdlbmVyYXRlZF9hdBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC2dlbmVyYXRlZEF0EjkKCnZhbGlkX3RpbGwYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgl2YWxpZFRpbGw=');
@$core.Deprecated('Use responseMetaDescriptor instead')
const ResponseMeta$json = const {
  '1': 'ResponseMeta',
  '2': const [
    const {'1': 'meta_done', '3': 1, '4': 1, '5': 8, '10': 'metaDone'},
    const {'1': 'meta_message', '3': 2, '4': 1, '5': 9, '10': 'metaMessage'},
  ],
};

/// Descriptor for `ResponseMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseMetaDescriptor = $convert.base64Decode('CgxSZXNwb25zZU1ldGESGwoJbWV0YV9kb25lGAEgASgIUghtZXRhRG9uZRIhCgxtZXRhX21lc3NhZ2UYAiABKAlSC21ldGFNZXNzYWdl');
