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
  ],
};

/// Descriptor for `AccountAssistantSentMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountAssistantSentMessageDescriptor = $convert.base64Decode('ChtBY2NvdW50QXNzaXN0YW50U2VudE1lc3NhZ2USSAohYWNjb3VudF9hc3Npc3RhbnRfc2VudF9tZXNzYWdlX2lkGAEgASgJUh1hY2NvdW50QXNzaXN0YW50U2VudE1lc3NhZ2VJZBIwChRhY2NvdW50X2Fzc2lzdGFudF9pZBgCIAEoCVISYWNjb3VudEFzc2lzdGFudElkEkUKH2FjY291bnRfYXNzaXN0YW50X2Nvbm5lY3Rpb25faWQYAyABKAlSHGFjY291bnRBc3Npc3RhbnRDb25uZWN0aW9uSWQSGAoHbWVzc2FnZRgEIAEoCVIHbWVzc2FnZRIjCg1tZXNzYWdlX3NwYWNlGAUgASgFUgxtZXNzYWdlU3BhY2USMAoUbWVzc2FnZV9zcGFjZV9hY3Rpb24YBiABKAVSEm1lc3NhZ2VTcGFjZUFjdGlvbhIzCgdzZW50X2F0GAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIGc2VudEF0EjsKC3JlY2VpdmVkX2F0GAggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKcmVjZWl2ZWRBdA==');
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
  ],
};

/// Descriptor for `AccountSentMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountSentMessageDescriptor = $convert.base64Decode('ChJBY2NvdW50U2VudE1lc3NhZ2USNQoXYWNjb3VudF9zZW50X21lc3NhZ2VfaWQYASABKAlSFGFjY291bnRTZW50TWVzc2FnZUlkEh0KCmFjY291bnRfaWQYAiABKAlSCWFjY291bnRJZBIyChVhY2NvdW50X2Nvbm5lY3Rpb25faWQYAyABKAlSE2FjY291bnRDb25uZWN0aW9uSWQSGAoHbWVzc2FnZRgEIAEoCVIHbWVzc2FnZRIzCgdzZW50X2F0GAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIGc2VudEF0EjsKC3JlY2VpdmVkX2F0GAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKcmVjZWl2ZWRBdA==');
