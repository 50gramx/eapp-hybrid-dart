///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/space.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use spaceKindDescriptor instead')
const SpaceKind$json = const {
  '1': 'SpaceKind',
  '2': const [
    const {'1': 'KNOWLEDGE', '2': 0},
    const {'1': 'PRODUCT', '2': 1},
    const {'1': 'SERVICE', '2': 2},
    const {'1': 'THING', '2': 3},
  ],
};

/// Descriptor for `SpaceKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List spaceKindDescriptor = $convert.base64Decode('CglTcGFjZUtpbmQSDQoJS05PV0xFREdFEAASCwoHUFJPRFVDVBABEgsKB1NFUlZJQ0UQAhIJCgVUSElORxAD');
@$core.Deprecated('Use spaceAccessibilityTypeDescriptor instead')
const SpaceAccessibilityType$json = const {
  '1': 'SpaceAccessibilityType',
  '2': const [
    const {'1': 'CLOSED', '2': 0},
    const {'1': 'OPEN', '2': 1},
  ],
};

/// Descriptor for `SpaceAccessibilityType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List spaceAccessibilityTypeDescriptor = $convert.base64Decode('ChZTcGFjZUFjY2Vzc2liaWxpdHlUeXBlEgoKBkNMT1NFRBAAEggKBE9QRU4QAQ==');
@$core.Deprecated('Use spaceIsolationTypeDescriptor instead')
const SpaceIsolationType$json = const {
  '1': 'SpaceIsolationType',
  '2': const [
    const {'1': 'NOT_ISOLATED', '2': 0},
    const {'1': 'ISOLATED', '2': 1},
  ],
};

/// Descriptor for `SpaceIsolationType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List spaceIsolationTypeDescriptor = $convert.base64Decode('ChJTcGFjZUlzb2xhdGlvblR5cGUSEAoMTk9UX0lTT0xBVEVEEAASDAoISVNPTEFURUQQAQ==');
@$core.Deprecated('Use spaceEntityTypeDescriptor instead')
const SpaceEntityType$json = const {
  '1': 'SpaceEntityType',
  '2': const [
    const {'1': 'ACCOUNT', '2': 0},
    const {'1': 'ORGANIZATION', '2': 1},
  ],
};

/// Descriptor for `SpaceEntityType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List spaceEntityTypeDescriptor = $convert.base64Decode('Cg9TcGFjZUVudGl0eVR5cGUSCwoHQUNDT1VOVBAAEhAKDE9SR0FOSVpBVElPThAB');
@$core.Deprecated('Use spaceDescriptor instead')
const Space$json = const {
  '1': 'Space',
  '2': const [
    const {'1': 'galaxy', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.Galaxy', '10': 'galaxy'},
    const {'1': 'space_id', '3': 2, '4': 1, '5': 9, '10': 'spaceId'},
    const {'1': 'space_accessibility_type', '3': 3, '4': 1, '5': 14, '6': '.elint.entity.SpaceAccessibilityType', '10': 'spaceAccessibilityType'},
    const {'1': 'space_isolation_type', '3': 4, '4': 1, '5': 14, '6': '.elint.entity.SpaceIsolationType', '10': 'spaceIsolationType'},
    const {'1': 'space_entity_type', '3': 5, '4': 1, '5': 14, '6': '.elint.entity.SpaceEntityType', '10': 'spaceEntityType'},
    const {'1': 'space_admin_id', '3': 6, '4': 1, '5': 9, '10': 'spaceAdminId'},
    const {'1': 'space_created_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'spaceCreatedAt'},
  ],
};

/// Descriptor for `Space`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceDescriptor = $convert.base64Decode('CgVTcGFjZRIsCgZnYWxheHkYASABKAsyFC5lbGludC5lbnRpdHkuR2FsYXh5UgZnYWxheHkSGQoIc3BhY2VfaWQYAiABKAlSB3NwYWNlSWQSXgoYc3BhY2VfYWNjZXNzaWJpbGl0eV90eXBlGAMgASgOMiQuZWxpbnQuZW50aXR5LlNwYWNlQWNjZXNzaWJpbGl0eVR5cGVSFnNwYWNlQWNjZXNzaWJpbGl0eVR5cGUSUgoUc3BhY2VfaXNvbGF0aW9uX3R5cGUYBCABKA4yIC5lbGludC5lbnRpdHkuU3BhY2VJc29sYXRpb25UeXBlUhJzcGFjZUlzb2xhdGlvblR5cGUSSQoRc3BhY2VfZW50aXR5X3R5cGUYBSABKA4yHS5lbGludC5lbnRpdHkuU3BhY2VFbnRpdHlUeXBlUg9zcGFjZUVudGl0eVR5cGUSJAoOc3BhY2VfYWRtaW5faWQYBiABKAlSDHNwYWNlQWRtaW5JZBJEChBzcGFjZV9jcmVhdGVkX2F0GAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIOc3BhY2VDcmVhdGVkQXQ=');
