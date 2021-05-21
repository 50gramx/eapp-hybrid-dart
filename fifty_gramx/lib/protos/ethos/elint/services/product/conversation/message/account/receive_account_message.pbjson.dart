///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/conversation/message/account/receive_account_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use messageFromAccountAssistantDescriptor instead')
const MessageFromAccountAssistant$json = const {
  '1': 'MessageFromAccountAssistant',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'connected_account_assistant', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccountAssistant', '10': 'connectedAccountAssistant'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'message_source', '3': 4, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'messageSource'},
    const {'1': 'account_assistant_received_message_id', '3': 5, '4': 1, '5': 9, '10': 'accountAssistantReceivedMessageId'},
  ],
};

/// Descriptor for `MessageFromAccountAssistant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageFromAccountAssistantDescriptor = $convert.base64Decode('ChtNZXNzYWdlRnJvbUFjY291bnRBc3Npc3RhbnQSHQoKYWNjb3VudF9pZBgBIAEoCVIJYWNjb3VudElkEm4KG2Nvbm5lY3RlZF9hY2NvdW50X2Fzc2lzdGFudBgCIAEoCzIuLmVsaW50LmVudGl0eS5BY2NvdW50Q29ubmVjdGVkQWNjb3VudEFzc2lzdGFudFIZY29ubmVjdGVkQWNjb3VudEFzc2lzdGFudBIYCgdtZXNzYWdlGAMgASgJUgdtZXNzYWdlEjsKDm1lc3NhZ2Vfc291cmNlGAQgAygLMhQuZ29vZ2xlLnByb3RvYnVmLkFueVINbWVzc2FnZVNvdXJjZRJQCiVhY2NvdW50X2Fzc2lzdGFudF9yZWNlaXZlZF9tZXNzYWdlX2lkGAUgASgJUiFhY2NvdW50QXNzaXN0YW50UmVjZWl2ZWRNZXNzYWdlSWQ=');
@$core.Deprecated('Use messageFromAccountAssistantReceivedDescriptor instead')
const MessageFromAccountAssistantReceived$json = const {
  '1': 'MessageFromAccountAssistantReceived',
  '2': const [
    const {'1': 'is_received', '3': 1, '4': 1, '5': 8, '10': 'isReceived'},
    const {'1': 'received_at', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'receivedAt'},
  ],
};

/// Descriptor for `MessageFromAccountAssistantReceived`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageFromAccountAssistantReceivedDescriptor = $convert.base64Decode('CiNNZXNzYWdlRnJvbUFjY291bnRBc3Npc3RhbnRSZWNlaXZlZBIfCgtpc19yZWNlaXZlZBgBIAEoCFIKaXNSZWNlaXZlZBI7CgtyZWNlaXZlZF9hdBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCnJlY2VpdmVkQXQ=');
@$core.Deprecated('Use messageFromAccountDescriptor instead')
const MessageFromAccount$json = const {
  '1': 'MessageFromAccount',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'connected_account', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccount', '10': 'connectedAccount'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'account_received_message_id', '3': 4, '4': 1, '5': 9, '10': 'accountReceivedMessageId'},
  ],
};

/// Descriptor for `MessageFromAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageFromAccountDescriptor = $convert.base64Decode('ChJNZXNzYWdlRnJvbUFjY291bnQSHQoKYWNjb3VudF9pZBgBIAEoCVIJYWNjb3VudElkElIKEWNvbm5lY3RlZF9hY2NvdW50GAIgASgLMiUuZWxpbnQuZW50aXR5LkFjY291bnRDb25uZWN0ZWRBY2NvdW50UhBjb25uZWN0ZWRBY2NvdW50EhgKB21lc3NhZ2UYAyABKAlSB21lc3NhZ2USPQobYWNjb3VudF9yZWNlaXZlZF9tZXNzYWdlX2lkGAQgASgJUhhhY2NvdW50UmVjZWl2ZWRNZXNzYWdlSWQ=');
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
@$core.Deprecated('Use syncAccountReceivedMessagesResponseDescriptor instead')
const SyncAccountReceivedMessagesResponse$json = const {
  '1': 'SyncAccountReceivedMessagesResponse',
  '2': const [
    const {'1': 'account_received_message', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountReceivedMessage', '10': 'accountReceivedMessage'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `SyncAccountReceivedMessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncAccountReceivedMessagesResponseDescriptor = $convert.base64Decode('CiNTeW5jQWNjb3VudFJlY2VpdmVkTWVzc2FnZXNSZXNwb25zZRKFAQoYYWNjb3VudF9yZWNlaXZlZF9tZXNzYWdlGAEgASgLMksuZWxpbnQuc2VydmljZXMucHJvZHVjdC5jb252ZXJzYXRpb24ubWVzc2FnZS5hY2NvdW50LkFjY291bnRSZWNlaXZlZE1lc3NhZ2VSFmFjY291bnRSZWNlaXZlZE1lc3NhZ2USPwoNcmVzcG9uc2VfbWV0YRgCIAEoCzIaLmVsaW50LmVudGl0eS5SZXNwb25zZU1ldGFSDHJlc3BvbnNlTWV0YQ==');
@$core.Deprecated('Use syncAccountConnectedAccountReceivedMessagesRequestDescriptor instead')
const SyncAccountConnectedAccountReceivedMessagesRequest$json = const {
  '1': 'SyncAccountConnectedAccountReceivedMessagesRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connected_account', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccount', '10': 'connectedAccount'},
  ],
};

/// Descriptor for `SyncAccountConnectedAccountReceivedMessagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncAccountConnectedAccountReceivedMessagesRequestDescriptor = $convert.base64Decode('CjJTeW5jQWNjb3VudENvbm5lY3RlZEFjY291bnRSZWNlaXZlZE1lc3NhZ2VzUmVxdWVzdBJ5ChNhY2Nlc3NfYXV0aF9kZXRhaWxzGAEgASgLMkkuZWxpbnQuc2VydmljZXMucHJvZHVjdC5pZGVudGl0eS5hY2NvdW50LkFjY291bnRTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUhFhY2Nlc3NBdXRoRGV0YWlscxJSChFjb25uZWN0ZWRfYWNjb3VudBgCIAEoCzIlLmVsaW50LmVudGl0eS5BY2NvdW50Q29ubmVjdGVkQWNjb3VudFIQY29ubmVjdGVkQWNjb3VudA==');
@$core.Deprecated('Use syncAccountConnectedAccountReceivedMessagesResponseDescriptor instead')
const SyncAccountConnectedAccountReceivedMessagesResponse$json = const {
  '1': 'SyncAccountConnectedAccountReceivedMessagesResponse',
  '2': const [
    const {'1': 'account_received_message', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountReceivedMessage', '10': 'accountReceivedMessage'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
    const {'1': 'sync_progress', '3': 3, '4': 1, '5': 1, '10': 'syncProgress'},
  ],
};

/// Descriptor for `SyncAccountConnectedAccountReceivedMessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncAccountConnectedAccountReceivedMessagesResponseDescriptor = $convert.base64Decode('CjNTeW5jQWNjb3VudENvbm5lY3RlZEFjY291bnRSZWNlaXZlZE1lc3NhZ2VzUmVzcG9uc2UShQEKGGFjY291bnRfcmVjZWl2ZWRfbWVzc2FnZRgBIAEoCzJLLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuYWNjb3VudC5BY2NvdW50UmVjZWl2ZWRNZXNzYWdlUhZhY2NvdW50UmVjZWl2ZWRNZXNzYWdlEj8KDXJlc3BvbnNlX21ldGEYAiABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGESIwoNc3luY19wcm9ncmVzcxgDIAEoAVIMc3luY1Byb2dyZXNz');
@$core.Deprecated('Use listenForReceivedAccountAssistantMessagesRequestDescriptor instead')
const ListenForReceivedAccountAssistantMessagesRequest$json = const {
  '1': 'ListenForReceivedAccountAssistantMessagesRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connected_account_assistant', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccountAssistant', '10': 'connectedAccountAssistant'},
    const {'1': 'account_assistant_received_message_id', '3': 3, '4': 1, '5': 9, '10': 'accountAssistantReceivedMessageId'},
  ],
};

/// Descriptor for `ListenForReceivedAccountAssistantMessagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listenForReceivedAccountAssistantMessagesRequestDescriptor = $convert.base64Decode('CjBMaXN0ZW5Gb3JSZWNlaXZlZEFjY291bnRBc3Npc3RhbnRNZXNzYWdlc1JlcXVlc3QSeQoTYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJJLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuaWRlbnRpdHkuYWNjb3VudC5BY2NvdW50U2VydmljZXNBY2Nlc3NBdXRoRGV0YWlsc1IRYWNjZXNzQXV0aERldGFpbHMSbgobY29ubmVjdGVkX2FjY291bnRfYXNzaXN0YW50GAIgASgLMi4uZWxpbnQuZW50aXR5LkFjY291bnRDb25uZWN0ZWRBY2NvdW50QXNzaXN0YW50Uhljb25uZWN0ZWRBY2NvdW50QXNzaXN0YW50ElAKJWFjY291bnRfYXNzaXN0YW50X3JlY2VpdmVkX21lc3NhZ2VfaWQYAyABKAlSIWFjY291bnRBc3Npc3RhbnRSZWNlaXZlZE1lc3NhZ2VJZA==');
@$core.Deprecated('Use listenForReceivedAccountAssistantMessagesResponseDescriptor instead')
const ListenForReceivedAccountAssistantMessagesResponse$json = const {
  '1': 'ListenForReceivedAccountAssistantMessagesResponse',
  '2': const [
    const {'1': 'message_source', '3': 3, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'messageSource'},
    const {'1': 'received_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'receivedAt'},
    const {'1': 'response_meta', '3': 5, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `ListenForReceivedAccountAssistantMessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listenForReceivedAccountAssistantMessagesResponseDescriptor = $convert.base64Decode('CjFMaXN0ZW5Gb3JSZWNlaXZlZEFjY291bnRBc3Npc3RhbnRNZXNzYWdlc1Jlc3BvbnNlEjsKDm1lc3NhZ2Vfc291cmNlGAMgAygLMhQuZ29vZ2xlLnByb3RvYnVmLkFueVINbWVzc2FnZVNvdXJjZRI7CgtyZWNlaXZlZF9hdBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCnJlY2VpdmVkQXQSPwoNcmVzcG9uc2VfbWV0YRgFIAEoCzIaLmVsaW50LmVudGl0eS5SZXNwb25zZU1ldGFSDHJlc3BvbnNlTWV0YQ==');
@$core.Deprecated('Use listenForReceivedAccountMessagesRequestDescriptor instead')
const ListenForReceivedAccountMessagesRequest$json = const {
  '1': 'ListenForReceivedAccountMessagesRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
  ],
};

/// Descriptor for `ListenForReceivedAccountMessagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listenForReceivedAccountMessagesRequestDescriptor = $convert.base64Decode('CidMaXN0ZW5Gb3JSZWNlaXZlZEFjY291bnRNZXNzYWdlc1JlcXVlc3QSeQoTYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJJLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuaWRlbnRpdHkuYWNjb3VudC5BY2NvdW50U2VydmljZXNBY2Nlc3NBdXRoRGV0YWlsc1IRYWNjZXNzQXV0aERldGFpbHM=');
@$core.Deprecated('Use listenForReceivedAccountMessagesResponseDescriptor instead')
const ListenForReceivedAccountMessagesResponse$json = const {
  '1': 'ListenForReceivedAccountMessagesResponse',
  '2': const [
    const {'1': 'messages_from_account', '3': 1, '4': 3, '5': 11, '6': '.elint.services.product.conversation.message.account.MessageFromAccount', '10': 'messagesFromAccount'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `ListenForReceivedAccountMessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listenForReceivedAccountMessagesResponseDescriptor = $convert.base64Decode('CihMaXN0ZW5Gb3JSZWNlaXZlZEFjY291bnRNZXNzYWdlc1Jlc3BvbnNlEnsKFW1lc3NhZ2VzX2Zyb21fYWNjb3VudBgBIAMoCzJHLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuYWNjb3VudC5NZXNzYWdlRnJvbUFjY291bnRSE21lc3NhZ2VzRnJvbUFjY291bnQSPwoNcmVzcG9uc2VfbWV0YRgCIAEoCzIaLmVsaW50LmVudGl0eS5SZXNwb25zZU1ldGFSDHJlc3BvbnNlTWV0YQ==');
@$core.Deprecated('Use listenForReceivedAccountSpeedMessagesResponseDescriptor instead')
const ListenForReceivedAccountSpeedMessagesResponse$json = const {
  '1': 'ListenForReceivedAccountSpeedMessagesResponse',
  '2': const [
    const {'1': 'messages_from_account', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.MessageFromAccount', '10': 'messagesFromAccount'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `ListenForReceivedAccountSpeedMessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listenForReceivedAccountSpeedMessagesResponseDescriptor = $convert.base64Decode('Ci1MaXN0ZW5Gb3JSZWNlaXZlZEFjY291bnRTcGVlZE1lc3NhZ2VzUmVzcG9uc2USewoVbWVzc2FnZXNfZnJvbV9hY2NvdW50GAEgASgLMkcuZWxpbnQuc2VydmljZXMucHJvZHVjdC5jb252ZXJzYXRpb24ubWVzc2FnZS5hY2NvdW50Lk1lc3NhZ2VGcm9tQWNjb3VudFITbWVzc2FnZXNGcm9tQWNjb3VudBI/Cg1yZXNwb25zZV9tZXRhGAIgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRh');
@$core.Deprecated('Use accountAssistantReceivedMessageDescriptor instead')
const AccountAssistantReceivedMessage$json = const {
  '1': 'AccountAssistantReceivedMessage',
  '2': const [
    const {'1': 'account_assistant_received_message_id', '3': 1, '4': 1, '5': 9, '10': 'accountAssistantReceivedMessageId'},
    const {'1': 'account_assistant_id', '3': 2, '4': 1, '5': 9, '10': 'accountAssistantId'},
    const {'1': 'account_assistant_connection_id', '3': 3, '4': 1, '5': 9, '10': 'accountAssistantConnectionId'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'message_source_space_id', '3': 5, '4': 1, '5': 9, '10': 'messageSourceSpaceId'},
    const {'1': 'message_source_space_type_id', '3': 6, '4': 1, '5': 9, '10': 'messageSourceSpaceTypeId'},
    const {'1': 'message_source_space_domain_id', '3': 7, '4': 1, '5': 9, '10': 'messageSourceSpaceDomainId'},
    const {'1': 'message_source_space_domain_action', '3': 8, '4': 1, '5': 5, '10': 'messageSourceSpaceDomainAction'},
    const {'1': 'message_source_space_domain_action_context_id', '3': 9, '4': 1, '5': 9, '10': 'messageSourceSpaceDomainActionContextId'},
    const {'1': 'received_at', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'receivedAt'},
  ],
};

/// Descriptor for `AccountAssistantReceivedMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountAssistantReceivedMessageDescriptor = $convert.base64Decode('Ch9BY2NvdW50QXNzaXN0YW50UmVjZWl2ZWRNZXNzYWdlElAKJWFjY291bnRfYXNzaXN0YW50X3JlY2VpdmVkX21lc3NhZ2VfaWQYASABKAlSIWFjY291bnRBc3Npc3RhbnRSZWNlaXZlZE1lc3NhZ2VJZBIwChRhY2NvdW50X2Fzc2lzdGFudF9pZBgCIAEoCVISYWNjb3VudEFzc2lzdGFudElkEkUKH2FjY291bnRfYXNzaXN0YW50X2Nvbm5lY3Rpb25faWQYAyABKAlSHGFjY291bnRBc3Npc3RhbnRDb25uZWN0aW9uSWQSGAoHbWVzc2FnZRgEIAEoCVIHbWVzc2FnZRI1ChdtZXNzYWdlX3NvdXJjZV9zcGFjZV9pZBgFIAEoCVIUbWVzc2FnZVNvdXJjZVNwYWNlSWQSPgocbWVzc2FnZV9zb3VyY2Vfc3BhY2VfdHlwZV9pZBgGIAEoCVIYbWVzc2FnZVNvdXJjZVNwYWNlVHlwZUlkEkIKHm1lc3NhZ2Vfc291cmNlX3NwYWNlX2RvbWFpbl9pZBgHIAEoCVIabWVzc2FnZVNvdXJjZVNwYWNlRG9tYWluSWQSSgoibWVzc2FnZV9zb3VyY2Vfc3BhY2VfZG9tYWluX2FjdGlvbhgIIAEoBVIebWVzc2FnZVNvdXJjZVNwYWNlRG9tYWluQWN0aW9uEl4KLW1lc3NhZ2Vfc291cmNlX3NwYWNlX2RvbWFpbl9hY3Rpb25fY29udGV4dF9pZBgJIAEoCVInbWVzc2FnZVNvdXJjZVNwYWNlRG9tYWluQWN0aW9uQ29udGV4dElkEjsKC3JlY2VpdmVkX2F0GAogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKcmVjZWl2ZWRBdA==');
@$core.Deprecated('Use accountReceivedMessageDescriptor instead')
const AccountReceivedMessage$json = const {
  '1': 'AccountReceivedMessage',
  '2': const [
    const {'1': 'account_received_message_id', '3': 1, '4': 1, '5': 9, '10': 'accountReceivedMessageId'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'account_connection_id', '3': 3, '4': 1, '5': 9, '10': 'accountConnectionId'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'received_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'receivedAt'},
  ],
};

/// Descriptor for `AccountReceivedMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountReceivedMessageDescriptor = $convert.base64Decode('ChZBY2NvdW50UmVjZWl2ZWRNZXNzYWdlEj0KG2FjY291bnRfcmVjZWl2ZWRfbWVzc2FnZV9pZBgBIAEoCVIYYWNjb3VudFJlY2VpdmVkTWVzc2FnZUlkEh0KCmFjY291bnRfaWQYAiABKAlSCWFjY291bnRJZBIyChVhY2NvdW50X2Nvbm5lY3Rpb25faWQYAyABKAlSE2FjY291bnRDb25uZWN0aW9uSWQSGAoHbWVzc2FnZRgEIAEoCVIHbWVzc2FnZRI7CgtyZWNlaXZlZF9hdBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCnJlY2VpdmVkQXQ=');
