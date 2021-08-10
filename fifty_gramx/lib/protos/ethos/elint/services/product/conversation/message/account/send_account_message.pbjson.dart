///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/conversation/message/account/send_account_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use messageForAccountAssistantDescriptor instead')
const MessageForAccountAssistant$json = const {
  '1': 'MessageForAccountAssistant',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connected_account_assistant', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccountAssistant', '10': 'connectedAccountAssistant'},
    const {'1': 'space_knowledge_action', '3': 3, '4': 1, '5': 14, '6': '.elint.entity.SpaceKnowledgeAction', '10': 'spaceKnowledgeAction'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `MessageForAccountAssistant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageForAccountAssistantDescriptor = $convert.base64Decode('ChpNZXNzYWdlRm9yQWNjb3VudEFzc2lzdGFudBJ5ChNhY2Nlc3NfYXV0aF9kZXRhaWxzGAEgASgLMkkuZWxpbnQuc2VydmljZXMucHJvZHVjdC5pZGVudGl0eS5hY2NvdW50LkFjY291bnRTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUhFhY2Nlc3NBdXRoRGV0YWlscxJuChtjb25uZWN0ZWRfYWNjb3VudF9hc3Npc3RhbnQYAiABKAsyLi5lbGludC5lbnRpdHkuQWNjb3VudENvbm5lY3RlZEFjY291bnRBc3Npc3RhbnRSGWNvbm5lY3RlZEFjY291bnRBc3Npc3RhbnQSWAoWc3BhY2Vfa25vd2xlZGdlX2FjdGlvbhgDIAEoDjIiLmVsaW50LmVudGl0eS5TcGFjZUtub3dsZWRnZUFjdGlvblIUc3BhY2VLbm93bGVkZ2VBY3Rpb24SGAoHbWVzc2FnZRgEIAEoCVIHbWVzc2FnZQ==');
@$core.Deprecated('Use messageForAccountAssistantSentDescriptor instead')
const MessageForAccountAssistantSent$json = const {
  '1': 'MessageForAccountAssistantSent',
  '2': const [
    const {'1': 'account_assistant_sent_message_id', '3': 1, '4': 1, '5': 9, '10': 'accountAssistantSentMessageId'},
    const {'1': 'is_sent', '3': 2, '4': 1, '5': 8, '10': 'isSent'},
    const {'1': 'sent_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'sentAt'},
    const {'1': 'received_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'receivedAt'},
  ],
};

/// Descriptor for `MessageForAccountAssistantSent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageForAccountAssistantSentDescriptor = $convert.base64Decode('Ch5NZXNzYWdlRm9yQWNjb3VudEFzc2lzdGFudFNlbnQSSAohYWNjb3VudF9hc3Npc3RhbnRfc2VudF9tZXNzYWdlX2lkGAEgASgJUh1hY2NvdW50QXNzaXN0YW50U2VudE1lc3NhZ2VJZBIXCgdpc19zZW50GAIgASgIUgZpc1NlbnQSMwoHc2VudF9hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBnNlbnRBdBI7CgtyZWNlaXZlZF9hdBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCnJlY2VpdmVkQXQ=');
@$core.Deprecated('Use messageForAccountDescriptor instead')
const MessageForAccount$json = const {
  '1': 'MessageForAccount',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connected_account', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccount', '10': 'connectedAccount'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `MessageForAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageForAccountDescriptor = $convert.base64Decode('ChFNZXNzYWdlRm9yQWNjb3VudBJ5ChNhY2Nlc3NfYXV0aF9kZXRhaWxzGAEgASgLMkkuZWxpbnQuc2VydmljZXMucHJvZHVjdC5pZGVudGl0eS5hY2NvdW50LkFjY291bnRTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUhFhY2Nlc3NBdXRoRGV0YWlscxJSChFjb25uZWN0ZWRfYWNjb3VudBgCIAEoCzIlLmVsaW50LmVudGl0eS5BY2NvdW50Q29ubmVjdGVkQWNjb3VudFIQY29ubmVjdGVkQWNjb3VudBIYCgdtZXNzYWdlGAMgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use messageForAccountSentDescriptor instead')
const MessageForAccountSent$json = const {
  '1': 'MessageForAccountSent',
  '2': const [
    const {'1': 'account_sent_message_id', '3': 1, '4': 1, '5': 9, '10': 'accountSentMessageId'},
    const {'1': 'is_sent', '3': 2, '4': 1, '5': 8, '10': 'isSent'},
    const {'1': 'sent_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'sentAt'},
    const {'1': 'received_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'receivedAt'},
  ],
};

/// Descriptor for `MessageForAccountSent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageForAccountSentDescriptor = $convert.base64Decode('ChVNZXNzYWdlRm9yQWNjb3VudFNlbnQSNQoXYWNjb3VudF9zZW50X21lc3NhZ2VfaWQYASABKAlSFGFjY291bnRTZW50TWVzc2FnZUlkEhcKB2lzX3NlbnQYAiABKAhSBmlzU2VudBIzCgdzZW50X2F0GAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIGc2VudEF0EjsKC3JlY2VpdmVkX2F0GAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKcmVjZWl2ZWRBdA==');
@$core.Deprecated('Use fullMessageForAccountSentDescriptor instead')
const FullMessageForAccountSent$json = const {
  '1': 'FullMessageForAccountSent',
  '2': const [
    const {'1': 'message_for_account_sent', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.MessageForAccountSent', '10': 'messageForAccountSent'},
    const {'1': 'connected_account', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccount', '10': 'connectedAccount'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `FullMessageForAccountSent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fullMessageForAccountSentDescriptor = $convert.base64Decode('ChlGdWxsTWVzc2FnZUZvckFjY291bnRTZW50EoMBChhtZXNzYWdlX2Zvcl9hY2NvdW50X3NlbnQYASABKAsySi5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmNvbnZlcnNhdGlvbi5tZXNzYWdlLmFjY291bnQuTWVzc2FnZUZvckFjY291bnRTZW50UhVtZXNzYWdlRm9yQWNjb3VudFNlbnQSUgoRY29ubmVjdGVkX2FjY291bnQYAiABKAsyJS5lbGludC5lbnRpdHkuQWNjb3VudENvbm5lY3RlZEFjY291bnRSEGNvbm5lY3RlZEFjY291bnQSGAoHbWVzc2FnZRgDIAEoCVIHbWVzc2FnZQ==');
@$core.Deprecated('Use syncAccountSentMessagesResponseDescriptor instead')
const SyncAccountSentMessagesResponse$json = const {
  '1': 'SyncAccountSentMessagesResponse',
  '2': const [
    const {'1': 'account_sent_message', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountSentMessage', '10': 'accountSentMessage'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `SyncAccountSentMessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncAccountSentMessagesResponseDescriptor = $convert.base64Decode('Ch9TeW5jQWNjb3VudFNlbnRNZXNzYWdlc1Jlc3BvbnNlEnkKFGFjY291bnRfc2VudF9tZXNzYWdlGAEgASgLMkcuZWxpbnQuc2VydmljZXMucHJvZHVjdC5jb252ZXJzYXRpb24ubWVzc2FnZS5hY2NvdW50LkFjY291bnRTZW50TWVzc2FnZVISYWNjb3VudFNlbnRNZXNzYWdlEj8KDXJlc3BvbnNlX21ldGEYAiABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGE=');
@$core.Deprecated('Use syncAccountConnectedAccountSentMessagesRequestDescriptor instead')
const SyncAccountConnectedAccountSentMessagesRequest$json = const {
  '1': 'SyncAccountConnectedAccountSentMessagesRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connected_account', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccount', '10': 'connectedAccount'},
  ],
};

/// Descriptor for `SyncAccountConnectedAccountSentMessagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncAccountConnectedAccountSentMessagesRequestDescriptor = $convert.base64Decode('Ci5TeW5jQWNjb3VudENvbm5lY3RlZEFjY291bnRTZW50TWVzc2FnZXNSZXF1ZXN0EnkKE2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsySS5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmlkZW50aXR5LmFjY291bnQuQWNjb3VudFNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSEWFjY2Vzc0F1dGhEZXRhaWxzElIKEWNvbm5lY3RlZF9hY2NvdW50GAIgASgLMiUuZWxpbnQuZW50aXR5LkFjY291bnRDb25uZWN0ZWRBY2NvdW50UhBjb25uZWN0ZWRBY2NvdW50');
@$core.Deprecated('Use syncAccountConnectedAccountSentMessagesResponseDescriptor instead')
const SyncAccountConnectedAccountSentMessagesResponse$json = const {
  '1': 'SyncAccountConnectedAccountSentMessagesResponse',
  '2': const [
    const {'1': 'account_sent_message', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountSentMessage', '10': 'accountSentMessage'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
    const {'1': 'sync_progress', '3': 3, '4': 1, '5': 1, '10': 'syncProgress'},
  ],
};

/// Descriptor for `SyncAccountConnectedAccountSentMessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncAccountConnectedAccountSentMessagesResponseDescriptor = $convert.base64Decode('Ci9TeW5jQWNjb3VudENvbm5lY3RlZEFjY291bnRTZW50TWVzc2FnZXNSZXNwb25zZRJ5ChRhY2NvdW50X3NlbnRfbWVzc2FnZRgBIAEoCzJHLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuYWNjb3VudC5BY2NvdW50U2VudE1lc3NhZ2VSEmFjY291bnRTZW50TWVzc2FnZRI/Cg1yZXNwb25zZV9tZXRhGAIgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRhEiMKDXN5bmNfcHJvZ3Jlc3MYAyABKAFSDHN5bmNQcm9ncmVzcw==');
@$core.Deprecated('Use syncAccountConnectedAccountAssistantSentMessagesRequestDescriptor instead')
const SyncAccountConnectedAccountAssistantSentMessagesRequest$json = const {
  '1': 'SyncAccountConnectedAccountAssistantSentMessagesRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connected_account_assistant', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccountAssistant', '10': 'connectedAccountAssistant'},
  ],
};

/// Descriptor for `SyncAccountConnectedAccountAssistantSentMessagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncAccountConnectedAccountAssistantSentMessagesRequestDescriptor = $convert.base64Decode('CjdTeW5jQWNjb3VudENvbm5lY3RlZEFjY291bnRBc3Npc3RhbnRTZW50TWVzc2FnZXNSZXF1ZXN0EnkKE2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsySS5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmlkZW50aXR5LmFjY291bnQuQWNjb3VudFNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSEWFjY2Vzc0F1dGhEZXRhaWxzEm4KG2Nvbm5lY3RlZF9hY2NvdW50X2Fzc2lzdGFudBgCIAEoCzIuLmVsaW50LmVudGl0eS5BY2NvdW50Q29ubmVjdGVkQWNjb3VudEFzc2lzdGFudFIZY29ubmVjdGVkQWNjb3VudEFzc2lzdGFudA==');
@$core.Deprecated('Use syncAccountConnectedAccountAssistantSentMessagesResponseDescriptor instead')
const SyncAccountConnectedAccountAssistantSentMessagesResponse$json = const {
  '1': 'SyncAccountConnectedAccountAssistantSentMessagesResponse',
  '2': const [
    const {'1': 'account_assistant_sent_message', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountAssistantSentMessage', '10': 'accountAssistantSentMessage'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
    const {'1': 'sync_progress', '3': 3, '4': 1, '5': 1, '10': 'syncProgress'},
  ],
};

/// Descriptor for `SyncAccountConnectedAccountAssistantSentMessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncAccountConnectedAccountAssistantSentMessagesResponseDescriptor = $convert.base64Decode('CjhTeW5jQWNjb3VudENvbm5lY3RlZEFjY291bnRBc3Npc3RhbnRTZW50TWVzc2FnZXNSZXNwb25zZRKVAQoeYWNjb3VudF9hc3Npc3RhbnRfc2VudF9tZXNzYWdlGAEgASgLMlAuZWxpbnQuc2VydmljZXMucHJvZHVjdC5jb252ZXJzYXRpb24ubWVzc2FnZS5hY2NvdW50LkFjY291bnRBc3Npc3RhbnRTZW50TWVzc2FnZVIbYWNjb3VudEFzc2lzdGFudFNlbnRNZXNzYWdlEj8KDXJlc3BvbnNlX21ldGEYAiABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGESIwoNc3luY19wcm9ncmVzcxgDIAEoAVIMc3luY1Byb2dyZXNz');
@$core.Deprecated('Use getLast24ProductNSentMessagesRequestDescriptor instead')
const GetLast24ProductNSentMessagesRequest$json = const {
  '1': 'GetLast24ProductNSentMessagesRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'product_n', '3': 2, '4': 1, '5': 5, '10': 'productN'},
    const {'1': 'message_entity_enum', '3': 3, '4': 1, '5': 14, '6': '.elint.entity.MessageEntity', '10': 'messageEntityEnum'},
    const {'1': 'connected_account_assistant', '3': 4, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccountAssistant', '10': 'connectedAccountAssistant'},
    const {'1': 'connected_account', '3': 5, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccount', '10': 'connectedAccount'},
  ],
};

/// Descriptor for `GetLast24ProductNSentMessagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLast24ProductNSentMessagesRequestDescriptor = $convert.base64Decode('CiRHZXRMYXN0MjRQcm9kdWN0TlNlbnRNZXNzYWdlc1JlcXVlc3QSeQoTYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJJLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuaWRlbnRpdHkuYWNjb3VudC5BY2NvdW50U2VydmljZXNBY2Nlc3NBdXRoRGV0YWlsc1IRYWNjZXNzQXV0aERldGFpbHMSGwoJcHJvZHVjdF9uGAIgASgFUghwcm9kdWN0ThJLChNtZXNzYWdlX2VudGl0eV9lbnVtGAMgASgOMhsuZWxpbnQuZW50aXR5Lk1lc3NhZ2VFbnRpdHlSEW1lc3NhZ2VFbnRpdHlFbnVtEm4KG2Nvbm5lY3RlZF9hY2NvdW50X2Fzc2lzdGFudBgEIAEoCzIuLmVsaW50LmVudGl0eS5BY2NvdW50Q29ubmVjdGVkQWNjb3VudEFzc2lzdGFudFIZY29ubmVjdGVkQWNjb3VudEFzc2lzdGFudBJSChFjb25uZWN0ZWRfYWNjb3VudBgFIAEoCzIlLmVsaW50LmVudGl0eS5BY2NvdW50Q29ubmVjdGVkQWNjb3VudFIQY29ubmVjdGVkQWNjb3VudA==');
@$core.Deprecated('Use getLast24ProductNSentMessagesResponseDescriptor instead')
const GetLast24ProductNSentMessagesResponse$json = const {
  '1': 'GetLast24ProductNSentMessagesResponse',
  '2': const [
    const {'1': 'response_meta', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
    const {'1': 'account_sent_messages', '3': 2, '4': 3, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountSentMessage', '10': 'accountSentMessages'},
    const {'1': 'account_assistant_sent_messages', '3': 3, '4': 3, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountAssistantSentMessage', '10': 'accountAssistantSentMessages'},
  ],
};

/// Descriptor for `GetLast24ProductNSentMessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLast24ProductNSentMessagesResponseDescriptor = $convert.base64Decode('CiVHZXRMYXN0MjRQcm9kdWN0TlNlbnRNZXNzYWdlc1Jlc3BvbnNlEj8KDXJlc3BvbnNlX21ldGEYASABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGESewoVYWNjb3VudF9zZW50X21lc3NhZ2VzGAIgAygLMkcuZWxpbnQuc2VydmljZXMucHJvZHVjdC5jb252ZXJzYXRpb24ubWVzc2FnZS5hY2NvdW50LkFjY291bnRTZW50TWVzc2FnZVITYWNjb3VudFNlbnRNZXNzYWdlcxKXAQofYWNjb3VudF9hc3Npc3RhbnRfc2VudF9tZXNzYWdlcxgDIAMoCzJQLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuYWNjb3VudC5BY2NvdW50QXNzaXN0YW50U2VudE1lc3NhZ2VSHGFjY291bnRBc3Npc3RhbnRTZW50TWVzc2FnZXM=');
@$core.Deprecated('Use getAccountLastSentMessageRequestDescriptor instead')
const GetAccountLastSentMessageRequest$json = const {
  '1': 'GetAccountLastSentMessageRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connected_account_id', '3': 2, '4': 1, '5': 9, '10': 'connectedAccountId'},
  ],
};

/// Descriptor for `GetAccountLastSentMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountLastSentMessageRequestDescriptor = $convert.base64Decode('CiBHZXRBY2NvdW50TGFzdFNlbnRNZXNzYWdlUmVxdWVzdBJ5ChNhY2Nlc3NfYXV0aF9kZXRhaWxzGAEgASgLMkkuZWxpbnQuc2VydmljZXMucHJvZHVjdC5pZGVudGl0eS5hY2NvdW50LkFjY291bnRTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUhFhY2Nlc3NBdXRoRGV0YWlscxIwChRjb25uZWN0ZWRfYWNjb3VudF9pZBgCIAEoCVISY29ubmVjdGVkQWNjb3VudElk');
@$core.Deprecated('Use getAccountLastSentMessageResponseDescriptor instead')
const GetAccountLastSentMessageResponse$json = const {
  '1': 'GetAccountLastSentMessageResponse',
  '2': const [
    const {'1': 'response_meta', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
    const {'1': 'last_sent_message', '3': 2, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountSentMessage', '10': 'lastSentMessage'},
  ],
};

/// Descriptor for `GetAccountLastSentMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountLastSentMessageResponseDescriptor = $convert.base64Decode('CiFHZXRBY2NvdW50TGFzdFNlbnRNZXNzYWdlUmVzcG9uc2USPwoNcmVzcG9uc2VfbWV0YRgBIAEoCzIaLmVsaW50LmVudGl0eS5SZXNwb25zZU1ldGFSDHJlc3BvbnNlTWV0YRJzChFsYXN0X3NlbnRfbWVzc2FnZRgCIAEoCzJHLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuYWNjb3VudC5BY2NvdW50U2VudE1lc3NhZ2VSD2xhc3RTZW50TWVzc2FnZQ==');
@$core.Deprecated('Use getAccountAssistantLastSentMessageRequestDescriptor instead')
const GetAccountAssistantLastSentMessageRequest$json = const {
  '1': 'GetAccountAssistantLastSentMessageRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connected_account_assistant_id', '3': 2, '4': 1, '5': 9, '10': 'connectedAccountAssistantId'},
  ],
};

/// Descriptor for `GetAccountAssistantLastSentMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountAssistantLastSentMessageRequestDescriptor = $convert.base64Decode('CilHZXRBY2NvdW50QXNzaXN0YW50TGFzdFNlbnRNZXNzYWdlUmVxdWVzdBJ5ChNhY2Nlc3NfYXV0aF9kZXRhaWxzGAEgASgLMkkuZWxpbnQuc2VydmljZXMucHJvZHVjdC5pZGVudGl0eS5hY2NvdW50LkFjY291bnRTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUhFhY2Nlc3NBdXRoRGV0YWlscxJDCh5jb25uZWN0ZWRfYWNjb3VudF9hc3Npc3RhbnRfaWQYAiABKAlSG2Nvbm5lY3RlZEFjY291bnRBc3Npc3RhbnRJZA==');
@$core.Deprecated('Use getAccountAssistantLastSentMessageResponseDescriptor instead')
const GetAccountAssistantLastSentMessageResponse$json = const {
  '1': 'GetAccountAssistantLastSentMessageResponse',
  '2': const [
    const {'1': 'response_meta', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
    const {'1': 'last_sent_message', '3': 2, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountAssistantSentMessage', '10': 'lastSentMessage'},
  ],
};

/// Descriptor for `GetAccountAssistantLastSentMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountAssistantLastSentMessageResponseDescriptor = $convert.base64Decode('CipHZXRBY2NvdW50QXNzaXN0YW50TGFzdFNlbnRNZXNzYWdlUmVzcG9uc2USPwoNcmVzcG9uc2VfbWV0YRgBIAEoCzIaLmVsaW50LmVudGl0eS5SZXNwb25zZU1ldGFSDHJlc3BvbnNlTWV0YRJ8ChFsYXN0X3NlbnRfbWVzc2FnZRgCIAEoCzJQLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuYWNjb3VudC5BY2NvdW50QXNzaXN0YW50U2VudE1lc3NhZ2VSD2xhc3RTZW50TWVzc2FnZQ==');
@$core.Deprecated('Use getSentMessagesAccountsResponseDescriptor instead')
const GetSentMessagesAccountsResponse$json = const {
  '1': 'GetSentMessagesAccountsResponse',
  '2': const [
    const {'1': 'response_meta', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
    const {'1': 'sent_messages_accounts', '3': 2, '4': 3, '5': 11, '6': '.elint.entity.Account', '10': 'sentMessagesAccounts'},
  ],
};

/// Descriptor for `GetSentMessagesAccountsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSentMessagesAccountsResponseDescriptor = $convert.base64Decode('Ch9HZXRTZW50TWVzc2FnZXNBY2NvdW50c1Jlc3BvbnNlEj8KDXJlc3BvbnNlX21ldGEYASABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGESSwoWc2VudF9tZXNzYWdlc19hY2NvdW50cxgCIAMoCzIVLmVsaW50LmVudGl0eS5BY2NvdW50UhRzZW50TWVzc2FnZXNBY2NvdW50cw==');
@$core.Deprecated('Use getSentMessagesAccountAssistantsResponseDescriptor instead')
const GetSentMessagesAccountAssistantsResponse$json = const {
  '1': 'GetSentMessagesAccountAssistantsResponse',
  '2': const [
    const {'1': 'response_meta', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
    const {'1': 'sent_messages_account_assistants', '3': 2, '4': 3, '5': 11, '6': '.elint.entity.AccountAssistant', '10': 'sentMessagesAccountAssistants'},
  ],
};

/// Descriptor for `GetSentMessagesAccountAssistantsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSentMessagesAccountAssistantsResponseDescriptor = $convert.base64Decode('CihHZXRTZW50TWVzc2FnZXNBY2NvdW50QXNzaXN0YW50c1Jlc3BvbnNlEj8KDXJlc3BvbnNlX21ldGEYASABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGESZwogc2VudF9tZXNzYWdlc19hY2NvdW50X2Fzc2lzdGFudHMYAiADKAsyHi5lbGludC5lbnRpdHkuQWNjb3VudEFzc2lzdGFudFIdc2VudE1lc3NhZ2VzQWNjb3VudEFzc2lzdGFudHM=');
@$core.Deprecated('Use accountAssistantSentMessageDescriptor instead')
const AccountAssistantSentMessage$json = const {
  '1': 'AccountAssistantSentMessage',
  '2': const [
    const {'1': 'account_assistant_sent_message_id', '3': 1, '4': 1, '5': 9, '10': 'accountAssistantSentMessageId'},
    const {'1': 'account_assistant_id', '3': 2, '4': 1, '5': 9, '10': 'accountAssistantId'},
    const {'1': 'account_assistant_connection_id', '3': 3, '4': 1, '5': 9, '10': 'accountAssistantConnectionId'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'message_space', '3': 5, '4': 1, '5': 5, '10': 'messageSpace'},
    const {'1': 'message_space_action', '3': 6, '4': 1, '5': 5, '10': 'messageSpaceAction'},
    const {'1': 'sent_at', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'sentAt'},
    const {'1': 'received_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'receivedAt'},
    const {'1': 'message_info', '3': 9, '4': 1, '5': 11, '6': '.elint.entity.MessageInfo', '10': 'messageInfo'},
  ],
};

/// Descriptor for `AccountAssistantSentMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountAssistantSentMessageDescriptor = $convert.base64Decode('ChtBY2NvdW50QXNzaXN0YW50U2VudE1lc3NhZ2USSAohYWNjb3VudF9hc3Npc3RhbnRfc2VudF9tZXNzYWdlX2lkGAEgASgJUh1hY2NvdW50QXNzaXN0YW50U2VudE1lc3NhZ2VJZBIwChRhY2NvdW50X2Fzc2lzdGFudF9pZBgCIAEoCVISYWNjb3VudEFzc2lzdGFudElkEkUKH2FjY291bnRfYXNzaXN0YW50X2Nvbm5lY3Rpb25faWQYAyABKAlSHGFjY291bnRBc3Npc3RhbnRDb25uZWN0aW9uSWQSGAoHbWVzc2FnZRgEIAEoCVIHbWVzc2FnZRIjCg1tZXNzYWdlX3NwYWNlGAUgASgFUgxtZXNzYWdlU3BhY2USMAoUbWVzc2FnZV9zcGFjZV9hY3Rpb24YBiABKAVSEm1lc3NhZ2VTcGFjZUFjdGlvbhIzCgdzZW50X2F0GAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIGc2VudEF0EjsKC3JlY2VpdmVkX2F0GAggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKcmVjZWl2ZWRBdBI8CgxtZXNzYWdlX2luZm8YCSABKAsyGS5lbGludC5lbnRpdHkuTWVzc2FnZUluZm9SC21lc3NhZ2VJbmZv');
@$core.Deprecated('Use accountSentMessageDescriptor instead')
const AccountSentMessage$json = const {
  '1': 'AccountSentMessage',
  '2': const [
    const {'1': 'account_sent_message_id', '3': 1, '4': 1, '5': 9, '10': 'accountSentMessageId'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'account_connection_id', '3': 3, '4': 1, '5': 9, '10': 'accountConnectionId'},
    const {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'sent_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'sentAt'},
    const {'1': 'received_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'receivedAt'},
    const {'1': 'message_info', '3': 7, '4': 1, '5': 11, '6': '.elint.entity.MessageInfo', '10': 'messageInfo'},
  ],
};

/// Descriptor for `AccountSentMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountSentMessageDescriptor = $convert.base64Decode('ChJBY2NvdW50U2VudE1lc3NhZ2USNQoXYWNjb3VudF9zZW50X21lc3NhZ2VfaWQYASABKAlSFGFjY291bnRTZW50TWVzc2FnZUlkEh0KCmFjY291bnRfaWQYAiABKAlSCWFjY291bnRJZBIyChVhY2NvdW50X2Nvbm5lY3Rpb25faWQYAyABKAlSE2FjY291bnRDb25uZWN0aW9uSWQSGAoHbWVzc2FnZRgEIAEoCVIHbWVzc2FnZRIzCgdzZW50X2F0GAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIGc2VudEF0EjsKC3JlY2VpdmVkX2F0GAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKcmVjZWl2ZWRBdBI8CgxtZXNzYWdlX2luZm8YByABKAsyGS5lbGludC5lbnRpdHkuTWVzc2FnZUluZm9SC21lc3NhZ2VJbmZv');
@$core.Deprecated('Use accountSentMessagesCountResponseDescriptor instead')
const AccountSentMessagesCountResponse$json = const {
  '1': 'AccountSentMessagesCountResponse',
  '2': const [
    const {'1': 'account_sent_messages_count', '3': 1, '4': 1, '5': 5, '10': 'accountSentMessagesCount'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `AccountSentMessagesCountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountSentMessagesCountResponseDescriptor = $convert.base64Decode('CiBBY2NvdW50U2VudE1lc3NhZ2VzQ291bnRSZXNwb25zZRI9ChthY2NvdW50X3NlbnRfbWVzc2FnZXNfY291bnQYASABKAVSGGFjY291bnRTZW50TWVzc2FnZXNDb3VudBI/Cg1yZXNwb25zZV9tZXRhGAIgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRh');
@$core.Deprecated('Use accountAssistantSentMessagesCountResponseDescriptor instead')
const AccountAssistantSentMessagesCountResponse$json = const {
  '1': 'AccountAssistantSentMessagesCountResponse',
  '2': const [
    const {'1': 'account_assistant_sent_messages_count', '3': 1, '4': 1, '5': 5, '10': 'accountAssistantSentMessagesCount'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `AccountAssistantSentMessagesCountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountAssistantSentMessagesCountResponseDescriptor = $convert.base64Decode('CilBY2NvdW50QXNzaXN0YW50U2VudE1lc3NhZ2VzQ291bnRSZXNwb25zZRJQCiVhY2NvdW50X2Fzc2lzdGFudF9zZW50X21lc3NhZ2VzX2NvdW50GAEgASgFUiFhY2NvdW50QXNzaXN0YW50U2VudE1lc3NhZ2VzQ291bnQSPwoNcmVzcG9uc2VfbWV0YRgCIAEoCzIaLmVsaW50LmVudGl0eS5SZXNwb25zZU1ldGFSDHJlc3BvbnNlTWV0YQ==');
