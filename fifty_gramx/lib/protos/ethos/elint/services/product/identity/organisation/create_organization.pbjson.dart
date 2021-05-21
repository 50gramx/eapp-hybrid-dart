///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/organisation/create_organization.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use createOrganizationRequestDescriptor instead')
const CreateOrganizationRequest$json = const {
  '1': 'CreateOrganizationRequest',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.Account', '10': 'accountId'},
    const {'1': 'organization_name', '3': 2, '4': 1, '5': 9, '10': 'organizationName'},
    const {'1': 'organization_description', '3': 3, '4': 1, '5': 9, '10': 'organizationDescription'},
    const {'1': 'requested_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestedAt'},
  ],
};

/// Descriptor for `CreateOrganizationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrganizationRequestDescriptor = $convert.base64Decode('ChlDcmVhdGVPcmdhbml6YXRpb25SZXF1ZXN0EjQKCmFjY291bnRfaWQYASABKAsyFS5lbGludC5lbnRpdHkuQWNjb3VudFIJYWNjb3VudElkEisKEW9yZ2FuaXphdGlvbl9uYW1lGAIgASgJUhBvcmdhbml6YXRpb25OYW1lEjkKGG9yZ2FuaXphdGlvbl9kZXNjcmlwdGlvbhgDIAEoCVIXb3JnYW5pemF0aW9uRGVzY3JpcHRpb24SPQoMcmVxdWVzdGVkX2F0GAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILcmVxdWVzdGVkQXQ=');
@$core.Deprecated('Use createOrganizationResponseDescriptor instead')
const CreateOrganizationResponse$json = const {
  '1': 'CreateOrganizationResponse',
};

/// Descriptor for `CreateOrganizationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOrganizationResponseDescriptor = $convert.base64Decode('ChpDcmVhdGVPcmdhbml6YXRpb25SZXNwb25zZQ==');
