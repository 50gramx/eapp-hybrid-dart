///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/community.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use communityDomainCodeDescriptor instead')
const CommunityDomainCode$json = const {
  '1': 'CommunityDomainCode',
  '2': const [
    const {'1': 'DOMAIN_CODE_UNDEFINED', '2': 0},
    const {'1': 'DOMAIN_CODE_LEGAL', '2': 51},
    const {'1': 'DOMAIN_CODE_AUTOMATION', '2': 70},
    const {'1': 'DOMAIN_CODE_EDUCATION', '2': 88},
    const {'1': 'DOMAIN_CODE_MEDICAL', '2': 80},
  ],
};

/// Descriptor for `CommunityDomainCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List communityDomainCodeDescriptor = $convert.base64Decode('ChNDb21tdW5pdHlEb21haW5Db2RlEhkKFURPTUFJTl9DT0RFX1VOREVGSU5FRBAAEhUKEURPTUFJTl9DT0RFX0xFR0FMEDMSGgoWRE9NQUlOX0NPREVfQVVUT01BVElPThBGEhkKFURPTUFJTl9DT0RFX0VEVUNBVElPThBYEhcKE0RPTUFJTl9DT0RFX01FRElDQUwQUA==');
@$core.Deprecated('Use communityDescriptor instead')
const Community$json = const {
  '1': 'Community',
  '2': const [
    const {'1': 'community_domain_code', '3': 1, '4': 1, '5': 14, '6': '.elint.entity.CommunityDomainCode', '10': 'communityDomainCode'},
    const {'1': 'recognised_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'recognisedAt'},
    const {'1': 'associated_organisations_count', '3': 3, '4': 1, '5': 3, '10': 'associatedOrganisationsCount'},
  ],
};

/// Descriptor for `Community`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List communityDescriptor = $convert.base64Decode('CglDb21tdW5pdHkSVQoVY29tbXVuaXR5X2RvbWFpbl9jb2RlGAEgASgOMiEuZWxpbnQuZW50aXR5LkNvbW11bml0eURvbWFpbkNvZGVSE2NvbW11bml0eURvbWFpbkNvZGUSPwoNcmVjb2duaXNlZF9hdBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDHJlY29nbmlzZWRBdBJECh5hc3NvY2lhdGVkX29yZ2FuaXNhdGlvbnNfY291bnQYAyABKANSHGFzc29jaWF0ZWRPcmdhbmlzYXRpb25zQ291bnQ=');
