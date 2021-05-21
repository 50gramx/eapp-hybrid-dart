///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/access_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use accountAssistantAccessTokenResponseDescriptor instead')
const AccountAssistantAccessTokenResponse$json = const {
  '1': 'AccountAssistantAccessTokenResponse',
  '2': const [
    const {'1': 'account_assistant_services_access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.assistant.AccountAssistantServicesAccessAuthDetails', '10': 'accountAssistantServicesAccessAuthDetails'},
    const {'1': 'meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'meta'},
  ],
};

/// Descriptor for `AccountAssistantAccessTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountAssistantAccessTokenResponseDescriptor = $convert.base64Decode('CiNBY2NvdW50QXNzaXN0YW50QWNjZXNzVG9rZW5SZXNwb25zZRK/AQouYWNjb3VudF9hc3Npc3RhbnRfc2VydmljZXNfYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJcLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuaWRlbnRpdHkuYWNjb3VudC5hc3Npc3RhbnQuQWNjb3VudEFzc2lzdGFudFNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSKWFjY291bnRBc3Npc3RhbnRTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzEi4KBG1ldGEYAiABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgRtZXRh');
@$core.Deprecated('Use accountAssistantAccessTokenWithMasterConnectionRequestDescriptor instead')
const AccountAssistantAccessTokenWithMasterConnectionRequest$json = const {
  '1': 'AccountAssistantAccessTokenWithMasterConnectionRequest',
  '2': const [
    const {'1': 'account_assistant_id', '3': 1, '4': 1, '5': 9, '10': 'accountAssistantId'},
    const {'1': 'connected_account', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountAssistantConnectedAccount', '10': 'connectedAccount'},
  ],
};

/// Descriptor for `AccountAssistantAccessTokenWithMasterConnectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountAssistantAccessTokenWithMasterConnectionRequestDescriptor = $convert.base64Decode('CjZBY2NvdW50QXNzaXN0YW50QWNjZXNzVG9rZW5XaXRoTWFzdGVyQ29ubmVjdGlvblJlcXVlc3QSMAoUYWNjb3VudF9hc3Npc3RhbnRfaWQYASABKAlSEmFjY291bnRBc3Npc3RhbnRJZBJbChFjb25uZWN0ZWRfYWNjb3VudBgCIAEoCzIuLmVsaW50LmVudGl0eS5BY2NvdW50QXNzaXN0YW50Q29ubmVjdGVkQWNjb3VudFIQY29ubmVjdGVkQWNjb3VudA==');
@$core.Deprecated('Use accessMetaDescriptor instead')
const AccessMeta$json = const {
  '1': 'AccessMeta',
  '2': const [
    const {'1': 'access_done', '3': 2, '4': 1, '5': 8, '10': 'accessDone'},
    const {'1': 'access_message', '3': 3, '4': 1, '5': 9, '10': 'accessMessage'},
  ],
};

/// Descriptor for `AccessMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessMetaDescriptor = $convert.base64Decode('CgpBY2Nlc3NNZXRhEh8KC2FjY2Vzc19kb25lGAIgASgIUgphY2Nlc3NEb25lEiUKDmFjY2Vzc19tZXNzYWdlGAMgASgJUg1hY2Nlc3NNZXNzYWdl');
@$core.Deprecated('Use validateAccessMetaDescriptor instead')
const ValidateAccessMeta$json = const {
  '1': 'ValidateAccessMeta',
  '2': const [
    const {'1': 'validation_done', '3': 1, '4': 1, '5': 8, '10': 'validationDone'},
    const {'1': 'validation_message', '3': 2, '4': 1, '5': 9, '10': 'validationMessage'},
  ],
};

/// Descriptor for `ValidateAccessMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateAccessMetaDescriptor = $convert.base64Decode('ChJWYWxpZGF0ZUFjY2Vzc01ldGESJwoPdmFsaWRhdGlvbl9kb25lGAEgASgIUg52YWxpZGF0aW9uRG9uZRItChJ2YWxpZGF0aW9uX21lc3NhZ2UYAiABKAlSEXZhbGlkYXRpb25NZXNzYWdl');
@$core.Deprecated('Use accountAssistantServicesAccessAuthDetailsDescriptor instead')
const AccountAssistantServicesAccessAuthDetails$json = const {
  '1': 'AccountAssistantServicesAccessAuthDetails',
  '2': const [
    const {'1': 'account_assistant', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.AccountAssistant', '10': 'accountAssistant'},
    const {'1': 'account_assistant_services_access_session_token_details', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.PersistentSessionTokenDetails', '10': 'accountAssistantServicesAccessSessionTokenDetails'},
    const {'1': 'requested_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'requestedAt'},
  ],
};

/// Descriptor for `AccountAssistantServicesAccessAuthDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountAssistantServicesAccessAuthDetailsDescriptor = $convert.base64Decode('CilBY2NvdW50QXNzaXN0YW50U2VydmljZXNBY2Nlc3NBdXRoRGV0YWlscxJLChFhY2NvdW50X2Fzc2lzdGFudBgBIAEoCzIeLmVsaW50LmVudGl0eS5BY2NvdW50QXNzaXN0YW50UhBhY2NvdW50QXNzaXN0YW50Ep8BCjdhY2NvdW50X2Fzc2lzdGFudF9zZXJ2aWNlc19hY2Nlc3Nfc2Vzc2lvbl90b2tlbl9kZXRhaWxzGAIgASgLMisuZWxpbnQuZW50aXR5LlBlcnNpc3RlbnRTZXNzaW9uVG9rZW5EZXRhaWxzUjFhY2NvdW50QXNzaXN0YW50U2VydmljZXNBY2Nlc3NTZXNzaW9uVG9rZW5EZXRhaWxzEj0KDHJlcXVlc3RlZF9hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC3JlcXVlc3RlZEF0');
