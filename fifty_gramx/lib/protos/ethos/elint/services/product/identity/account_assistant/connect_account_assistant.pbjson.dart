///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account_assistant/connect_account_assistant.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use isAccountConnectedRequestDescriptor instead')
const IsAccountConnectedRequest$json = const {
  '1': 'IsAccountConnectedRequest',
  '2': const [
    const {'1': 'account_assistant_id', '3': 1, '4': 1, '5': 9, '10': 'accountAssistantId'},
    const {'1': 'connected_account', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountAssistantConnectedAccount', '10': 'connectedAccount'},
  ],
};

/// Descriptor for `IsAccountConnectedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isAccountConnectedRequestDescriptor = $convert.base64Decode('ChlJc0FjY291bnRDb25uZWN0ZWRSZXF1ZXN0EjAKFGFjY291bnRfYXNzaXN0YW50X2lkGAEgASgJUhJhY2NvdW50QXNzaXN0YW50SWQSWwoRY29ubmVjdGVkX2FjY291bnQYAiABKAsyLi5lbGludC5lbnRpdHkuQWNjb3VudEFzc2lzdGFudENvbm5lY3RlZEFjY291bnRSEGNvbm5lY3RlZEFjY291bnQ=');
@$core.Deprecated('Use connectAccountRequestDescriptor instead')
const ConnectAccountRequest$json = const {
  '1': 'ConnectAccountRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.assistant.AccountAssistantServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connecting_account_id', '3': 2, '4': 1, '5': 9, '10': 'connectingAccountId'},
  ],
};

/// Descriptor for `ConnectAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectAccountRequestDescriptor = $convert.base64Decode('ChVDb25uZWN0QWNjb3VudFJlcXVlc3QSjAEKE2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsyXC5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmlkZW50aXR5LmFjY291bnQuYXNzaXN0YW50LkFjY291bnRBc3Npc3RhbnRTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUhFhY2Nlc3NBdXRoRGV0YWlscxIyChVjb25uZWN0aW5nX2FjY291bnRfaWQYAiABKAlSE2Nvbm5lY3RpbmdBY2NvdW50SWQ=');
@$core.Deprecated('Use connectAccountResponseDescriptor instead')
const ConnectAccountResponse$json = const {
  '1': 'ConnectAccountResponse',
  '2': const [
    const {'1': 'connected_account', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.AccountAssistantConnectedAccount', '10': 'connectedAccount'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `ConnectAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectAccountResponseDescriptor = $convert.base64Decode('ChZDb25uZWN0QWNjb3VudFJlc3BvbnNlElsKEWNvbm5lY3RlZF9hY2NvdW50GAEgASgLMi4uZWxpbnQuZW50aXR5LkFjY291bnRBc3Npc3RhbnRDb25uZWN0ZWRBY2NvdW50UhBjb25uZWN0ZWRBY2NvdW50Ej8KDXJlc3BvbnNlX21ldGEYAiABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGE=');
