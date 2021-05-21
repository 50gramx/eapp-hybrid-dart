///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/organization_space.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use organizationSpaceDescriptor instead')
const OrganizationSpace$json = const {
  '1': 'OrganizationSpace',
  '2': const [
    const {'1': 'space_id', '3': 1, '4': 1, '5': 9, '10': 'spaceId'},
    const {'1': 'space_name', '3': 2, '4': 1, '5': 9, '10': 'spaceName'},
    const {'1': 'white_knowledge_domain_id', '3': 3, '4': 1, '5': 9, '10': 'whiteKnowledgeDomainId'},
    const {'1': 'white_knowledge_domain_name', '3': 4, '4': 1, '5': 9, '10': 'whiteKnowledgeDomainName'},
    const {'1': 'organization_id', '3': 5, '4': 1, '5': 9, '10': 'organizationId'},
    const {'1': 'created_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `OrganizationSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List organizationSpaceDescriptor = $convert.base64Decode('ChFPcmdhbml6YXRpb25TcGFjZRIZCghzcGFjZV9pZBgBIAEoCVIHc3BhY2VJZBIdCgpzcGFjZV9uYW1lGAIgASgJUglzcGFjZU5hbWUSOQoZd2hpdGVfa25vd2xlZGdlX2RvbWFpbl9pZBgDIAEoCVIWd2hpdGVLbm93bGVkZ2VEb21haW5JZBI9Cht3aGl0ZV9rbm93bGVkZ2VfZG9tYWluX25hbWUYBCABKAlSGHdoaXRlS25vd2xlZGdlRG9tYWluTmFtZRInCg9vcmdhbml6YXRpb25faWQYBSABKAlSDm9yZ2FuaXphdGlvbklkEjkKCmNyZWF0ZWRfYXQYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQ=');
@$core.Deprecated('Use claimOrganizationSpaceRequestDescriptor instead')
const ClaimOrganizationSpaceRequest$json = const {
  '1': 'ClaimOrganizationSpaceRequest',
  '2': const [
    const {'1': 'organization_space_name', '3': 1, '4': 1, '5': 9, '10': 'organizationSpaceName'},
    const {'1': 'requested_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestedAt'},
  ],
};

/// Descriptor for `ClaimOrganizationSpaceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List claimOrganizationSpaceRequestDescriptor = $convert.base64Decode('Ch1DbGFpbU9yZ2FuaXphdGlvblNwYWNlUmVxdWVzdBI2Chdvcmdhbml6YXRpb25fc3BhY2VfbmFtZRgBIAEoCVIVb3JnYW5pemF0aW9uU3BhY2VOYW1lEj0KDHJlcXVlc3RlZF9hdBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC3JlcXVlc3RlZEF0');
@$core.Deprecated('Use claimOrganizationSpaceResponseDescriptor instead')
const ClaimOrganizationSpaceResponse$json = const {
  '1': 'ClaimOrganizationSpaceResponse',
  '2': const [
    const {'1': 'organization_space_available', '3': 1, '4': 1, '5': 8, '10': 'organizationSpaceAvailable'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ClaimOrganizationSpaceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List claimOrganizationSpaceResponseDescriptor = $convert.base64Decode('Ch5DbGFpbU9yZ2FuaXphdGlvblNwYWNlUmVzcG9uc2USQAocb3JnYW5pemF0aW9uX3NwYWNlX2F2YWlsYWJsZRgBIAEoCFIab3JnYW5pemF0aW9uU3BhY2VBdmFpbGFibGUSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZQ==');
