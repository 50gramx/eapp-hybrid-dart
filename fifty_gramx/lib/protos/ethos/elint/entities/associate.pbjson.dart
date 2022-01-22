///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/associate.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use associateLevelDescriptor instead')
const AssociateLevel$json = const {
  '1': 'AssociateLevel',
  '2': const [
    const {'1': 'LEVEL_0', '2': 0},
    const {'1': 'LEVEL_1', '2': 1},
    const {'1': 'LEVEL_2', '2': 2},
    const {'1': 'LEVEL_3', '2': 3},
    const {'1': 'LEVEL_4', '2': 4},
    const {'1': 'LEVEL_5', '2': 5},
  ],
};

/// Descriptor for `AssociateLevel`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List associateLevelDescriptor = $convert.base64Decode('Cg5Bc3NvY2lhdGVMZXZlbBILCgdMRVZFTF8wEAASCwoHTEVWRUxfMRABEgsKB0xFVkVMXzIQAhILCgdMRVZFTF8zEAMSCwoHTEVWRUxfNBAEEgsKB0xFVkVMXzUQBQ==');
@$core.Deprecated('Use associateDepartmentDescriptor instead')
const AssociateDepartment$json = const {
  '1': 'AssociateDepartment',
  '2': const [
    const {'1': 'ACCOUNTING', '2': 0},
    const {'1': 'HUMAN_RESOURCE', '2': 1},
    const {'1': 'INFORMATION_TECHNOLOGY', '2': 2},
    const {'1': 'LOGISTICS', '2': 3},
    const {'1': 'MARKETING', '2': 4},
    const {'1': 'PRODUCTION', '2': 5},
    const {'1': 'SALES', '2': 6},
    const {'1': 'WORKS', '2': 7},
  ],
};

/// Descriptor for `AssociateDepartment`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List associateDepartmentDescriptor = $convert.base64Decode('ChNBc3NvY2lhdGVEZXBhcnRtZW50Eg4KCkFDQ09VTlRJTkcQABISCg5IVU1BTl9SRVNPVVJDRRABEhoKFklORk9STUFUSU9OX1RFQ0hOT0xPR1kQAhINCglMT0dJU1RJQ1MQAxINCglNQVJLRVRJTkcQBBIOCgpQUk9EVUNUSU9OEAUSCQoFU0FMRVMQBhIJCgVXT1JLUxAH');
@$core.Deprecated('Use associateDescriptor instead')
const Associate$json = const {
  '1': 'Associate',
  '2': const [
    const {'1': 'associated_account', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.Account', '10': 'associatedAccount'},
    const {'1': 'associated_organisation', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.Organisation', '10': 'associatedOrganisation'},
    const {'1': 'associate_id', '3': 3, '4': 1, '5': 5, '10': 'associateId'},
    const {'1': 'associate_level', '3': 4, '4': 1, '5': 14, '6': '.elint.entity.AssociateLevel', '10': 'associateLevel'},
    const {'1': 'associate_department', '3': 5, '4': 1, '5': 14, '6': '.elint.entity.AssociateDepartment', '10': 'associateDepartment'},
    const {'1': 'associate_designation', '3': 6, '4': 1, '5': 9, '10': 'associateDesignation'},
    const {'1': 'reports_to_associate_id', '3': 7, '4': 1, '5': 5, '10': 'reportsToAssociateId'},
    const {'1': 'associated_at', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'associatedAt'},
  ],
};

/// Descriptor for `Associate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List associateDescriptor = $convert.base64Decode('CglBc3NvY2lhdGUSRAoSYXNzb2NpYXRlZF9hY2NvdW50GAEgASgLMhUuZWxpbnQuZW50aXR5LkFjY291bnRSEWFzc29jaWF0ZWRBY2NvdW50ElMKF2Fzc29jaWF0ZWRfb3JnYW5pc2F0aW9uGAIgASgLMhouZWxpbnQuZW50aXR5Lk9yZ2FuaXNhdGlvblIWYXNzb2NpYXRlZE9yZ2FuaXNhdGlvbhIhCgxhc3NvY2lhdGVfaWQYAyABKAVSC2Fzc29jaWF0ZUlkEkUKD2Fzc29jaWF0ZV9sZXZlbBgEIAEoDjIcLmVsaW50LmVudGl0eS5Bc3NvY2lhdGVMZXZlbFIOYXNzb2NpYXRlTGV2ZWwSVAoUYXNzb2NpYXRlX2RlcGFydG1lbnQYBSABKA4yIS5lbGludC5lbnRpdHkuQXNzb2NpYXRlRGVwYXJ0bWVudFITYXNzb2NpYXRlRGVwYXJ0bWVudBIzChVhc3NvY2lhdGVfZGVzaWduYXRpb24YBiABKAlSFGFzc29jaWF0ZURlc2lnbmF0aW9uEjUKF3JlcG9ydHNfdG9fYXNzb2NpYXRlX2lkGAcgASgFUhRyZXBvcnRzVG9Bc3NvY2lhdGVJZBI/Cg1hc3NvY2lhdGVkX2F0GAogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIMYXNzb2NpYXRlZEF0');
