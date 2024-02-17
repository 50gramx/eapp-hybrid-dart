///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/team.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use teamDescriptor instead')
const Team$json = const {
  '1': 'Team',
  '2': const [
    const {'1': 'admin_associate', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.Associate', '10': 'adminAssociate'},
    const {'1': 'of_organisation', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.Organisation', '10': 'ofOrganisation'},
    const {'1': 'team_id', '3': 3, '4': 1, '5': 5, '10': 'teamId'},
    const {'1': 'team_description', '3': 4, '4': 1, '5': 9, '10': 'teamDescription'},
    const {'1': 'team_members', '3': 5, '4': 3, '5': 11, '6': '.elint.entity.Associate', '10': 'teamMembers'},
    const {'1': 'team_tags', '3': 6, '4': 3, '5': 11, '6': '.elint.entity.TeamTag', '10': 'teamTags'},
    const {'1': 'created_at', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `Team`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List teamDescriptor = $convert.base64Decode('CgRUZWFtEkAKD2FkbWluX2Fzc29jaWF0ZRgBIAEoCzIXLmVsaW50LmVudGl0eS5Bc3NvY2lhdGVSDmFkbWluQXNzb2NpYXRlEkMKD29mX29yZ2FuaXNhdGlvbhgCIAEoCzIaLmVsaW50LmVudGl0eS5PcmdhbmlzYXRpb25SDm9mT3JnYW5pc2F0aW9uEhcKB3RlYW1faWQYAyABKAVSBnRlYW1JZBIpChB0ZWFtX2Rlc2NyaXB0aW9uGAQgASgJUg90ZWFtRGVzY3JpcHRpb24SOgoMdGVhbV9tZW1iZXJzGAUgAygLMhcuZWxpbnQuZW50aXR5LkFzc29jaWF0ZVILdGVhbU1lbWJlcnMSMgoJdGVhbV90YWdzGAYgAygLMhUuZWxpbnQuZW50aXR5LlRlYW1UYWdSCHRlYW1UYWdzEjkKCmNyZWF0ZWRfYXQYCiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQ=');
@$core.Deprecated('Use teamTagDescriptor instead')
const TeamTag$json = const {
  '1': 'TeamTag',
  '2': const [
    const {'1': 'team_tag_id', '3': 1, '4': 1, '5': 9, '10': 'teamTagId'},
    const {'1': 'team_tag_name', '3': 2, '4': 1, '5': 9, '10': 'teamTagName'},
  ],
};

/// Descriptor for `TeamTag`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List teamTagDescriptor = $convert.base64Decode('CgdUZWFtVGFnEh4KC3RlYW1fdGFnX2lkGAEgASgJUgl0ZWFtVGFnSWQSIgoNdGVhbV90YWdfbmFtZRgCIAEoCVILdGVhbVRhZ05hbWU=');
