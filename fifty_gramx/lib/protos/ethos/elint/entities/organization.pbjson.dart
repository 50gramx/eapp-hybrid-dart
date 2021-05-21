///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/organization.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use organizationDescriptor instead')
const Organization$json = const {
  '1': 'Organization',
  '2': const [
    const {'1': 'organization_id', '3': 1, '4': 1, '5': 9, '10': 'organizationId'},
    const {'1': 'organization_name', '3': 2, '4': 1, '5': 9, '10': 'organizationName'},
    const {'1': 'organization_space_id', '3': 3, '4': 1, '5': 9, '10': 'organizationSpaceId'},
    const {'1': 'admin_account_id', '3': 4, '4': 1, '5': 9, '10': 'adminAccountId'},
    const {'1': 'active', '3': 5, '4': 1, '5': 8, '10': 'active'},
    const {'1': 'billing_active', '3': 6, '4': 1, '5': 8, '10': 'billingActive'},
    const {'1': 'created_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `Organization`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List organizationDescriptor = $convert.base64Decode('CgxPcmdhbml6YXRpb24SJwoPb3JnYW5pemF0aW9uX2lkGAEgASgJUg5vcmdhbml6YXRpb25JZBIrChFvcmdhbml6YXRpb25fbmFtZRgCIAEoCVIQb3JnYW5pemF0aW9uTmFtZRIyChVvcmdhbml6YXRpb25fc3BhY2VfaWQYAyABKAlSE29yZ2FuaXphdGlvblNwYWNlSWQSKAoQYWRtaW5fYWNjb3VudF9pZBgEIAEoCVIOYWRtaW5BY2NvdW50SWQSFgoGYWN0aXZlGAUgASgIUgZhY3RpdmUSJQoOYmlsbGluZ19hY3RpdmUYBiABKAhSDWJpbGxpbmdBY3RpdmUSOQoKY3JlYXRlZF9hdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdA==');
@$core.Deprecated('Use reserveOrganizationRequestDescriptor instead')
const ReserveOrganizationRequest$json = const {
  '1': 'ReserveOrganizationRequest',
  '2': const [
    const {'1': 'organization_space', '3': 1, '4': 1, '5': 9, '10': 'organizationSpace'},
    const {'1': 'created_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `ReserveOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reserveOrganizationRequestDescriptor = $convert.base64Decode('ChpSZXNlcnZlT3JnYW5pemF0aW9uUmVxdWVzdBItChJvcmdhbml6YXRpb25fc3BhY2UYASABKAlSEW9yZ2FuaXphdGlvblNwYWNlEjkKCmNyZWF0ZWRfYXQYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQ=');
@$core.Deprecated('Use reserveOrganizationResponseDescriptor instead')
const ReserveOrganizationResponse$json = const {
  '1': 'ReserveOrganizationResponse',
  '2': const [
    const {'1': 'organization_space', '3': 1, '4': 1, '5': 9, '10': 'organizationSpace'},
    const {'1': 'organization_space_reserved', '3': 2, '4': 1, '5': 8, '10': 'organizationSpaceReserved'},
    const {'1': 'account_email_id', '3': 3, '4': 1, '5': 9, '10': 'accountEmailId'},
    const {'1': 'account_email_id_verified', '3': 4, '4': 1, '5': 8, '10': 'accountEmailIdVerified'},
    const {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ReserveOrganizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reserveOrganizationResponseDescriptor = $convert.base64Decode('ChtSZXNlcnZlT3JnYW5pemF0aW9uUmVzcG9uc2USLQoSb3JnYW5pemF0aW9uX3NwYWNlGAEgASgJUhFvcmdhbml6YXRpb25TcGFjZRI+Chtvcmdhbml6YXRpb25fc3BhY2VfcmVzZXJ2ZWQYAiABKAhSGW9yZ2FuaXphdGlvblNwYWNlUmVzZXJ2ZWQSKAoQYWNjb3VudF9lbWFpbF9pZBgDIAEoCVIOYWNjb3VudEVtYWlsSWQSOQoZYWNjb3VudF9lbWFpbF9pZF92ZXJpZmllZBgEIAEoCFIWYWNjb3VudEVtYWlsSWRWZXJpZmllZBIYCgdtZXNzYWdlGAUgASgJUgdtZXNzYWdl');
