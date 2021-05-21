///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/update_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use updateAccountProfilePictureRequestDescriptor instead')
const UpdateAccountProfilePictureRequest$json = const {
  '1': 'UpdateAccountProfilePictureRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'picture_chunks', '3': 2, '4': 3, '5': 12, '10': 'pictureChunks'},
  ],
};

/// Descriptor for `UpdateAccountProfilePictureRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAccountProfilePictureRequestDescriptor = $convert.base64Decode('CiJVcGRhdGVBY2NvdW50UHJvZmlsZVBpY3R1cmVSZXF1ZXN0EnkKE2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsySS5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmlkZW50aXR5LmFjY291bnQuQWNjb3VudFNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSEWFjY2Vzc0F1dGhEZXRhaWxzEiUKDnBpY3R1cmVfY2h1bmtzGAIgAygMUg1waWN0dXJlQ2h1bmtz');
@$core.Deprecated('Use updateAccountProfilePictureResponseDescriptor instead')
const UpdateAccountProfilePictureResponse$json = const {
  '1': 'UpdateAccountProfilePictureResponse',
  '2': const [
    const {'1': 'response_meta', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `UpdateAccountProfilePictureResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAccountProfilePictureResponseDescriptor = $convert.base64Decode('CiNVcGRhdGVBY2NvdW50UHJvZmlsZVBpY3R1cmVSZXNwb25zZRI/Cg1yZXNwb25zZV9tZXRhGAEgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRh');
