///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/conversation/message/account_assistant/receive_account_assistant_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use messageFromAccountDescriptor instead')
const MessageFromAccount$json = const {
  '1': 'MessageFromAccount',
  '2': const [
    const {'1': 'account_assistant_id', '3': 1, '4': 1, '5': 9, '10': 'accountAssistantId'},
    const {'1': 'connected_account', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountAssistantConnectedAccount', '10': 'connectedAccount'},
    const {'1': 'space_knowledge_action', '3': 3, '4': 1, '5': 14, '6': '.elint.entity.SpaceKnowledgeAction', '10': 'spaceKnowledgeAction'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'account_received_message_id', '3': 5, '4': 1, '5': 9, '10': 'accountReceivedMessageId'},
  ],
};

/// Descriptor for `MessageFromAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageFromAccountDescriptor = $convert.base64Decode('ChJNZXNzYWdlRnJvbUFjY291bnQSMAoUYWNjb3VudF9hc3Npc3RhbnRfaWQYASABKAlSEmFjY291bnRBc3Npc3RhbnRJZBJbChFjb25uZWN0ZWRfYWNjb3VudBgCIAEoCzIuLmVsaW50LmVudGl0eS5BY2NvdW50QXNzaXN0YW50Q29ubmVjdGVkQWNjb3VudFIQY29ubmVjdGVkQWNjb3VudBJYChZzcGFjZV9rbm93bGVkZ2VfYWN0aW9uGAMgASgOMiIuZWxpbnQuZW50aXR5LlNwYWNlS25vd2xlZGdlQWN0aW9uUhRzcGFjZUtub3dsZWRnZUFjdGlvbhIYCgdtZXNzYWdlGAQgASgJUgdtZXNzYWdlEj0KG2FjY291bnRfcmVjZWl2ZWRfbWVzc2FnZV9pZBgFIAEoCVIYYWNjb3VudFJlY2VpdmVkTWVzc2FnZUlk');
@$core.Deprecated('Use messageFromAccountReceivedDescriptor instead')
const MessageFromAccountReceived$json = const {
  '1': 'MessageFromAccountReceived',
  '2': const [
    const {'1': 'is_received', '3': 1, '4': 1, '5': 8, '10': 'isReceived'},
    const {'1': 'received_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'receivedAt'},
  ],
};

/// Descriptor for `MessageFromAccountReceived`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageFromAccountReceivedDescriptor = $convert.base64Decode('ChpNZXNzYWdlRnJvbUFjY291bnRSZWNlaXZlZBIfCgtpc19yZWNlaXZlZBgBIAEoCFIKaXNSZWNlaXZlZBI7CgtyZWNlaXZlZF9hdBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCnJlY2VpdmVkQXQ=');
