///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/space/access_space.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use spaceAccessTokenResponseDescriptor instead')
const SpaceAccessTokenResponse$json = const {
  '1': 'SpaceAccessTokenResponse',
  '2': const [
    const {'1': 'space_services_access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.space.SpaceServicesAccessAuthDetails', '10': 'spaceServicesAccessAuthDetails'},
    const {'1': 'space_services_access_done', '3': 2, '4': 1, '5': 8, '10': 'spaceServicesAccessDone'},
    const {'1': 'space_services_access_message', '3': 3, '4': 1, '5': 9, '10': 'spaceServicesAccessMessage'},
  ],
};

/// Descriptor for `SpaceAccessTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceAccessTokenResponseDescriptor = $convert.base64Decode('ChhTcGFjZUFjY2Vzc1Rva2VuUmVzcG9uc2USkQEKInNwYWNlX3NlcnZpY2VzX2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsyRS5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmlkZW50aXR5LnNwYWNlLlNwYWNlU2VydmljZXNBY2Nlc3NBdXRoRGV0YWlsc1Iec3BhY2VTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzEjsKGnNwYWNlX3NlcnZpY2VzX2FjY2Vzc19kb25lGAIgASgIUhdzcGFjZVNlcnZpY2VzQWNjZXNzRG9uZRJBCh1zcGFjZV9zZXJ2aWNlc19hY2Nlc3NfbWVzc2FnZRgDIAEoCVIac3BhY2VTZXJ2aWNlc0FjY2Vzc01lc3NhZ2U=');
@$core.Deprecated('Use validateSpaceServicesResponseDescriptor instead')
const ValidateSpaceServicesResponse$json = const {
  '1': 'ValidateSpaceServicesResponse',
  '2': const [
    const {'1': 'space_service_access_validation_done', '3': 1, '4': 1, '5': 8, '10': 'spaceServiceAccessValidationDone'},
    const {'1': 'space_service_access_validation_message', '3': 2, '4': 1, '5': 9, '10': 'spaceServiceAccessValidationMessage'},
  ],
};

/// Descriptor for `ValidateSpaceServicesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateSpaceServicesResponseDescriptor = $convert.base64Decode('Ch1WYWxpZGF0ZVNwYWNlU2VydmljZXNSZXNwb25zZRJOCiRzcGFjZV9zZXJ2aWNlX2FjY2Vzc192YWxpZGF0aW9uX2RvbmUYASABKAhSIHNwYWNlU2VydmljZUFjY2Vzc1ZhbGlkYXRpb25Eb25lElQKJ3NwYWNlX3NlcnZpY2VfYWNjZXNzX3ZhbGlkYXRpb25fbWVzc2FnZRgCIAEoCVIjc3BhY2VTZXJ2aWNlQWNjZXNzVmFsaWRhdGlvbk1lc3NhZ2U=');
@$core.Deprecated('Use spaceServicesAccessAuthDetailsDescriptor instead')
const SpaceServicesAccessAuthDetails$json = const {
  '1': 'SpaceServicesAccessAuthDetails',
  '2': const [
    const {'1': 'space', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.Space', '10': 'space'},
    const {'1': 'space_services_access_session_token_details', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.PersistentSessionTokenDetails', '10': 'spaceServicesAccessSessionTokenDetails'},
    const {'1': 'requested_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestedAt'},
  ],
};

/// Descriptor for `SpaceServicesAccessAuthDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceServicesAccessAuthDetailsDescriptor = $convert.base64Decode('Ch5TcGFjZVNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHMSKQoFc3BhY2UYASABKAsyEy5lbGludC5lbnRpdHkuU3BhY2VSBXNwYWNlEogBCitzcGFjZV9zZXJ2aWNlc19hY2Nlc3Nfc2Vzc2lvbl90b2tlbl9kZXRhaWxzGAIgASgLMisuZWxpbnQuZW50aXR5LlBlcnNpc3RlbnRTZXNzaW9uVG9rZW5EZXRhaWxzUiZzcGFjZVNlcnZpY2VzQWNjZXNzU2Vzc2lvblRva2VuRGV0YWlscxI9CgxyZXF1ZXN0ZWRfYXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgtyZXF1ZXN0ZWRBdA==');
