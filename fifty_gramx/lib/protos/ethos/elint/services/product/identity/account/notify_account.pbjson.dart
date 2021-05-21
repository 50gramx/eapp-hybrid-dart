///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/notify_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use newReceivedMessageFromAccountAssistantRequestDescriptor instead')
const NewReceivedMessageFromAccountAssistantRequest$json = const {
  '1': 'NewReceivedMessageFromAccountAssistantRequest',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'connected_account_assistant', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccountAssistant', '10': 'connectedAccountAssistant'},
    const {'1': 'account_assistant_received_message_id', '3': 3, '4': 1, '5': 9, '10': 'accountAssistantReceivedMessageId'},
  ],
};

/// Descriptor for `NewReceivedMessageFromAccountAssistantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newReceivedMessageFromAccountAssistantRequestDescriptor = $convert.base64Decode('Ci1OZXdSZWNlaXZlZE1lc3NhZ2VGcm9tQWNjb3VudEFzc2lzdGFudFJlcXVlc3QSHQoKYWNjb3VudF9pZBgBIAEoCVIJYWNjb3VudElkEm4KG2Nvbm5lY3RlZF9hY2NvdW50X2Fzc2lzdGFudBgCIAEoCzIuLmVsaW50LmVudGl0eS5BY2NvdW50Q29ubmVjdGVkQWNjb3VudEFzc2lzdGFudFIZY29ubmVjdGVkQWNjb3VudEFzc2lzdGFudBJQCiVhY2NvdW50X2Fzc2lzdGFudF9yZWNlaXZlZF9tZXNzYWdlX2lkGAMgASgJUiFhY2NvdW50QXNzaXN0YW50UmVjZWl2ZWRNZXNzYWdlSWQ=');
@$core.Deprecated('Use newReceivedMessageFromAccountRequestDescriptor instead')
const NewReceivedMessageFromAccountRequest$json = const {
  '1': 'NewReceivedMessageFromAccountRequest',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'connecting_account_id', '3': 2, '4': 1, '5': 9, '10': 'connectingAccountId'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `NewReceivedMessageFromAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newReceivedMessageFromAccountRequestDescriptor = $convert.base64Decode('CiROZXdSZWNlaXZlZE1lc3NhZ2VGcm9tQWNjb3VudFJlcXVlc3QSHQoKYWNjb3VudF9pZBgBIAEoCVIJYWNjb3VudElkEjIKFWNvbm5lY3RpbmdfYWNjb3VudF9pZBgCIAEoCVITY29ubmVjdGluZ0FjY291bnRJZBIYCgdtZXNzYWdlGAMgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use accountConnectedAccountNotificationRequestDescriptor instead')
const AccountConnectedAccountNotificationRequest$json = const {
  '1': 'AccountConnectedAccountNotificationRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.Account', '10': 'account'},
    const {'1': 'connecting_account_connected_account', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccount', '10': 'connectingAccountConnectedAccount'},
  ],
};

/// Descriptor for `AccountConnectedAccountNotificationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountConnectedAccountNotificationRequestDescriptor = $convert.base64Decode('CipBY2NvdW50Q29ubmVjdGVkQWNjb3VudE5vdGlmaWNhdGlvblJlcXVlc3QSLwoHYWNjb3VudBgBIAEoCzIVLmVsaW50LmVudGl0eS5BY2NvdW50UgdhY2NvdW50EnYKJGNvbm5lY3RpbmdfYWNjb3VudF9jb25uZWN0ZWRfYWNjb3VudBgCIAEoCzIlLmVsaW50LmVudGl0eS5BY2NvdW50Q29ubmVjdGVkQWNjb3VudFIhY29ubmVjdGluZ0FjY291bnRDb25uZWN0ZWRBY2NvdW50');
