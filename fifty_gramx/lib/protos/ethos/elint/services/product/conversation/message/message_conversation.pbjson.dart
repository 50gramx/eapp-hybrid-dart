/*
 * ************************************************************************
 *
 *  AMIT KUMAR KHETAN CONFIDENTIAL
 *  __________________
 *
 *   [2017] - [2022] Amit Kumar Khetan
 *   All Rights Reserved.
 *
 *  NOTICE:  All information contained herein is, and remains
 *  the property of Amit Kumar Khetan and its suppliers,
 *  if any.  The intellectual and technical concepts contained
 *  herein are proprietary to Amit Kumar Khetan
 *  and its suppliers and may be covered by U.S. and Foreign Patents,
 *  patents in process, and are protected by trade secret or copyright law.
 *  Dissemination of this information or reproduction of this material
 *  is strictly forbidden unless prior written permission is obtained
 *  from Amit Kumar Khetan.
 * /
 */

///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/conversation/message/message_conversation.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use getAccountAndAssistantConversationsRequestDescriptor instead')
const GetAccountAndAssistantConversationsRequest$json = const {
  '1': 'GetAccountAndAssistantConversationsRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connected_account_assistant', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccountAssistant', '10': 'connectedAccountAssistant'},
    const {'1': 'is_account_connected', '3': 3, '4': 1, '5': 8, '10': 'isAccountConnected'},
    const {'1': 'connected_account', '3': 4, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccount', '10': 'connectedAccount'},
  ],
};

/// Descriptor for `GetAccountAndAssistantConversationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountAndAssistantConversationsRequestDescriptor = $convert.base64Decode('CipHZXRBY2NvdW50QW5kQXNzaXN0YW50Q29udmVyc2F0aW9uc1JlcXVlc3QSeQoTYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJJLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuaWRlbnRpdHkuYWNjb3VudC5BY2NvdW50U2VydmljZXNBY2Nlc3NBdXRoRGV0YWlsc1IRYWNjZXNzQXV0aERldGFpbHMSbgobY29ubmVjdGVkX2FjY291bnRfYXNzaXN0YW50GAIgASgLMi4uZWxpbnQuZW50aXR5LkFjY291bnRDb25uZWN0ZWRBY2NvdW50QXNzaXN0YW50Uhljb25uZWN0ZWRBY2NvdW50QXNzaXN0YW50EjAKFGlzX2FjY291bnRfY29ubmVjdGVkGAMgASgIUhJpc0FjY291bnRDb25uZWN0ZWQSUgoRY29ubmVjdGVkX2FjY291bnQYBCABKAsyJS5lbGludC5lbnRpdHkuQWNjb3VudENvbm5lY3RlZEFjY291bnRSEGNvbm5lY3RlZEFjY291bnQ=');
@$core.Deprecated('Use getAccountAndAssistantConversationsResponseDescriptor instead')
const GetAccountAndAssistantConversationsResponse$json = const {
  '1': 'GetAccountAndAssistantConversationsResponse',
  '2': const [
    const {'1': 'account_and_assistant_conversations_messages', '3': 1, '4': 3, '5': 11, '6': '.elint.services.product.conversation.message.AccountAndAssistantConversationsMessages', '10': 'accountAndAssistantConversationsMessages'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `GetAccountAndAssistantConversationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountAndAssistantConversationsResponseDescriptor = $convert.base64Decode('CitHZXRBY2NvdW50QW5kQXNzaXN0YW50Q29udmVyc2F0aW9uc1Jlc3BvbnNlErUBCixhY2NvdW50X2FuZF9hc3Npc3RhbnRfY29udmVyc2F0aW9uc19tZXNzYWdlcxgBIAMoCzJVLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuQWNjb3VudEFuZEFzc2lzdGFudENvbnZlcnNhdGlvbnNNZXNzYWdlc1IoYWNjb3VudEFuZEFzc2lzdGFudENvbnZlcnNhdGlvbnNNZXNzYWdlcxI/Cg1yZXNwb25zZV9tZXRhGAIgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRh');
@$core.Deprecated('Use accountAndAssistantConversationsMessagesDescriptor instead')
const AccountAndAssistantConversationsMessages$json = const {
  '1': 'AccountAndAssistantConversationsMessages',
  '2': const [
    const {'1': 'is_message_entity_account_assistant', '3': 1, '4': 1, '5': 8, '10': 'isMessageEntityAccountAssistant'},
    const {'1': 'is_message_sent', '3': 2, '4': 1, '5': 8, '10': 'isMessageSent'},
    const {'1': 'account_assistant_received_message', '3': 3, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountAssistantReceivedMessage', '10': 'accountAssistantReceivedMessage'},
    const {'1': 'account_received_message', '3': 4, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountReceivedMessage', '10': 'accountReceivedMessage'},
    const {'1': 'account_assistant_sent_message', '3': 5, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountAssistantSentMessage', '10': 'accountAssistantSentMessage'},
    const {'1': 'account_sent_message', '3': 6, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountSentMessage', '10': 'accountSentMessage'},
  ],
};

/// Descriptor for `AccountAndAssistantConversationsMessages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountAndAssistantConversationsMessagesDescriptor = $convert.base64Decode('CihBY2NvdW50QW5kQXNzaXN0YW50Q29udmVyc2F0aW9uc01lc3NhZ2VzEkwKI2lzX21lc3NhZ2VfZW50aXR5X2FjY291bnRfYXNzaXN0YW50GAEgASgIUh9pc01lc3NhZ2VFbnRpdHlBY2NvdW50QXNzaXN0YW50EiYKD2lzX21lc3NhZ2Vfc2VudBgCIAEoCFINaXNNZXNzYWdlU2VudBKhAQoiYWNjb3VudF9hc3Npc3RhbnRfcmVjZWl2ZWRfbWVzc2FnZRgDIAEoCzJULmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuYWNjb3VudC5BY2NvdW50QXNzaXN0YW50UmVjZWl2ZWRNZXNzYWdlUh9hY2NvdW50QXNzaXN0YW50UmVjZWl2ZWRNZXNzYWdlEoUBChhhY2NvdW50X3JlY2VpdmVkX21lc3NhZ2UYBCABKAsySy5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmNvbnZlcnNhdGlvbi5tZXNzYWdlLmFjY291bnQuQWNjb3VudFJlY2VpdmVkTWVzc2FnZVIWYWNjb3VudFJlY2VpdmVkTWVzc2FnZRKVAQoeYWNjb3VudF9hc3Npc3RhbnRfc2VudF9tZXNzYWdlGAUgASgLMlAuZWxpbnQuc2VydmljZXMucHJvZHVjdC5jb252ZXJzYXRpb24ubWVzc2FnZS5hY2NvdW50LkFjY291bnRBc3Npc3RhbnRTZW50TWVzc2FnZVIbYWNjb3VudEFzc2lzdGFudFNlbnRNZXNzYWdlEnkKFGFjY291bnRfc2VudF9tZXNzYWdlGAYgASgLMkcuZWxpbnQuc2VydmljZXMucHJvZHVjdC5jb252ZXJzYXRpb24ubWVzc2FnZS5hY2NvdW50LkFjY291bnRTZW50TWVzc2FnZVISYWNjb3VudFNlbnRNZXNzYWdl');
@$core.Deprecated('Use getLast24ProductNConversationMessagesRequestDescriptor instead')
const GetLast24ProductNConversationMessagesRequest$json = const {
  '1': 'GetLast24ProductNConversationMessagesRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'product_n', '3': 2, '4': 1, '5': 5, '10': 'productN'},
    const {'1': 'message_entity_enum', '3': 3, '4': 1, '5': 14, '6': '.elint.entity.MessageEntity', '10': 'messageEntityEnum'},
    const {'1': 'connected_account_assistant', '3': 4, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccountAssistant', '10': 'connectedAccountAssistant'},
    const {'1': 'connected_account', '3': 5, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccount', '10': 'connectedAccount'},
  ],
};

/// Descriptor for `GetLast24ProductNConversationMessagesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLast24ProductNConversationMessagesRequestDescriptor = $convert.base64Decode('CixHZXRMYXN0MjRQcm9kdWN0TkNvbnZlcnNhdGlvbk1lc3NhZ2VzUmVxdWVzdBJ5ChNhY2Nlc3NfYXV0aF9kZXRhaWxzGAEgASgLMkkuZWxpbnQuc2VydmljZXMucHJvZHVjdC5pZGVudGl0eS5hY2NvdW50LkFjY291bnRTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUhFhY2Nlc3NBdXRoRGV0YWlscxIbCglwcm9kdWN0X24YAiABKAVSCHByb2R1Y3ROEksKE21lc3NhZ2VfZW50aXR5X2VudW0YAyABKA4yGy5lbGludC5lbnRpdHkuTWVzc2FnZUVudGl0eVIRbWVzc2FnZUVudGl0eUVudW0SbgobY29ubmVjdGVkX2FjY291bnRfYXNzaXN0YW50GAQgASgLMi4uZWxpbnQuZW50aXR5LkFjY291bnRDb25uZWN0ZWRBY2NvdW50QXNzaXN0YW50Uhljb25uZWN0ZWRBY2NvdW50QXNzaXN0YW50ElIKEWNvbm5lY3RlZF9hY2NvdW50GAUgASgLMiUuZWxpbnQuZW50aXR5LkFjY291bnRDb25uZWN0ZWRBY2NvdW50UhBjb25uZWN0ZWRBY2NvdW50');
@$core.Deprecated('Use getLast24ProductNConversationMessagesResponseDescriptor instead')
const GetLast24ProductNConversationMessagesResponse$json = const {
  '1': 'GetLast24ProductNConversationMessagesResponse',
  '2': const [
    const {'1': 'response_meta', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
    const {'1': 'conversation_messages', '3': 2, '4': 3, '5': 11, '6': '.elint.services.product.conversation.message.ConversationMessage', '10': 'conversationMessages'},
  ],
};

/// Descriptor for `GetLast24ProductNConversationMessagesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLast24ProductNConversationMessagesResponseDescriptor = $convert.base64Decode('Ci1HZXRMYXN0MjRQcm9kdWN0TkNvbnZlcnNhdGlvbk1lc3NhZ2VzUmVzcG9uc2USPwoNcmVzcG9uc2VfbWV0YRgBIAEoCzIaLmVsaW50LmVudGl0eS5SZXNwb25zZU1ldGFSDHJlc3BvbnNlTWV0YRJ1ChVjb252ZXJzYXRpb25fbWVzc2FnZXMYAiADKAsyQC5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmNvbnZlcnNhdGlvbi5tZXNzYWdlLkNvbnZlcnNhdGlvbk1lc3NhZ2VSFGNvbnZlcnNhdGlvbk1lc3NhZ2Vz');
@$core.Deprecated('Use getAccountLastMessageRequestDescriptor instead')
const GetAccountLastMessageRequest$json = const {
  '1': 'GetAccountLastMessageRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connected_account_id', '3': 2, '4': 1, '5': 9, '10': 'connectedAccountId'},
  ],
};

/// Descriptor for `GetAccountLastMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountLastMessageRequestDescriptor = $convert.base64Decode('ChxHZXRBY2NvdW50TGFzdE1lc3NhZ2VSZXF1ZXN0EnkKE2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsySS5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmlkZW50aXR5LmFjY291bnQuQWNjb3VudFNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSEWFjY2Vzc0F1dGhEZXRhaWxzEjAKFGNvbm5lY3RlZF9hY2NvdW50X2lkGAIgASgJUhJjb25uZWN0ZWRBY2NvdW50SWQ=');
@$core.Deprecated('Use getAccountLastMessageResponseDescriptor instead')
const GetAccountLastMessageResponse$json = const {
  '1': 'GetAccountLastMessageResponse',
  '2': const [
    const {'1': 'response_meta', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
    const {'1': 'is_message_sent', '3': 2, '4': 1, '5': 8, '10': 'isMessageSent'},
    const {'1': 'account_received_message', '3': 3, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountReceivedMessage', '9': 0, '10': 'accountReceivedMessage'},
    const {'1': 'account_sent_message', '3': 4, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountSentMessage', '9': 0, '10': 'accountSentMessage'},
  ],
  '8': const [
    const {'1': 'last_message'},
  ],
};

/// Descriptor for `GetAccountLastMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountLastMessageResponseDescriptor = $convert.base64Decode('Ch1HZXRBY2NvdW50TGFzdE1lc3NhZ2VSZXNwb25zZRI/Cg1yZXNwb25zZV9tZXRhGAEgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRhEiYKD2lzX21lc3NhZ2Vfc2VudBgCIAEoCFINaXNNZXNzYWdlU2VudBKHAQoYYWNjb3VudF9yZWNlaXZlZF9tZXNzYWdlGAMgASgLMksuZWxpbnQuc2VydmljZXMucHJvZHVjdC5jb252ZXJzYXRpb24ubWVzc2FnZS5hY2NvdW50LkFjY291bnRSZWNlaXZlZE1lc3NhZ2VIAFIWYWNjb3VudFJlY2VpdmVkTWVzc2FnZRJ7ChRhY2NvdW50X3NlbnRfbWVzc2FnZRgEIAEoCzJHLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuYWNjb3VudC5BY2NvdW50U2VudE1lc3NhZ2VIAFISYWNjb3VudFNlbnRNZXNzYWdlQg4KDGxhc3RfbWVzc2FnZQ==');
@$core.Deprecated('Use getAccountAssistantLastMessageRequestDescriptor instead')
const GetAccountAssistantLastMessageRequest$json = const {
  '1': 'GetAccountAssistantLastMessageRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connected_account_assistant_id', '3': 2, '4': 1, '5': 9, '10': 'connectedAccountAssistantId'},
  ],
};

/// Descriptor for `GetAccountAssistantLastMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountAssistantLastMessageRequestDescriptor = $convert.base64Decode('CiVHZXRBY2NvdW50QXNzaXN0YW50TGFzdE1lc3NhZ2VSZXF1ZXN0EnkKE2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsySS5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmlkZW50aXR5LmFjY291bnQuQWNjb3VudFNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSEWFjY2Vzc0F1dGhEZXRhaWxzEkMKHmNvbm5lY3RlZF9hY2NvdW50X2Fzc2lzdGFudF9pZBgCIAEoCVIbY29ubmVjdGVkQWNjb3VudEFzc2lzdGFudElk');
@$core.Deprecated('Use getAccountAssistantLastMessageResponseDescriptor instead')
const GetAccountAssistantLastMessageResponse$json = const {
  '1': 'GetAccountAssistantLastMessageResponse',
  '2': const [
    const {'1': 'response_meta', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
    const {'1': 'is_message_sent', '3': 2, '4': 1, '5': 8, '10': 'isMessageSent'},
    const {'1': 'account_assistant_received_message', '3': 3, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountAssistantReceivedMessage', '9': 0, '10': 'accountAssistantReceivedMessage'},
    const {'1': 'account_assistant_sent_message', '3': 4, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountAssistantSentMessage', '9': 0, '10': 'accountAssistantSentMessage'},
  ],
  '8': const [
    const {'1': 'last_message'},
  ],
};

/// Descriptor for `GetAccountAssistantLastMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountAssistantLastMessageResponseDescriptor = $convert.base64Decode('CiZHZXRBY2NvdW50QXNzaXN0YW50TGFzdE1lc3NhZ2VSZXNwb25zZRI/Cg1yZXNwb25zZV9tZXRhGAEgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRhEiYKD2lzX21lc3NhZ2Vfc2VudBgCIAEoCFINaXNNZXNzYWdlU2VudBKjAQoiYWNjb3VudF9hc3Npc3RhbnRfcmVjZWl2ZWRfbWVzc2FnZRgDIAEoCzJULmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuYWNjb3VudC5BY2NvdW50QXNzaXN0YW50UmVjZWl2ZWRNZXNzYWdlSABSH2FjY291bnRBc3Npc3RhbnRSZWNlaXZlZE1lc3NhZ2USlwEKHmFjY291bnRfYXNzaXN0YW50X3NlbnRfbWVzc2FnZRgEIAEoCzJQLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuYWNjb3VudC5BY2NvdW50QXNzaXN0YW50U2VudE1lc3NhZ2VIAFIbYWNjb3VudEFzc2lzdGFudFNlbnRNZXNzYWdlQg4KDGxhc3RfbWVzc2FnZQ==');
@$core.Deprecated('Use getConversedAccountsResponseDescriptor instead')
const GetConversedAccountsResponse$json = const {
  '1': 'GetConversedAccountsResponse',
  '2': const [
    const {'1': 'response_meta', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
    const {'1': 'conversed_accounts', '3': 2, '4': 3, '5': 11, '6': '.elint.entity.Account', '10': 'conversedAccounts'},
  ],
};

/// Descriptor for `GetConversedAccountsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConversedAccountsResponseDescriptor = $convert.base64Decode('ChxHZXRDb252ZXJzZWRBY2NvdW50c1Jlc3BvbnNlEj8KDXJlc3BvbnNlX21ldGEYASABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGESRAoSY29udmVyc2VkX2FjY291bnRzGAIgAygLMhUuZWxpbnQuZW50aXR5LkFjY291bnRSEWNvbnZlcnNlZEFjY291bnRz');
@$core.Deprecated('Use getConversedAccountAssistantsResponseDescriptor instead')
const GetConversedAccountAssistantsResponse$json = const {
  '1': 'GetConversedAccountAssistantsResponse',
  '2': const [
    const {'1': 'response_meta', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
    const {'1': 'conversed_account_assistants', '3': 2, '4': 3, '5': 11, '6': '.elint.entity.AccountAssistant', '10': 'conversedAccountAssistants'},
  ],
};

/// Descriptor for `GetConversedAccountAssistantsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConversedAccountAssistantsResponseDescriptor = $convert.base64Decode('CiVHZXRDb252ZXJzZWRBY2NvdW50QXNzaXN0YW50c1Jlc3BvbnNlEj8KDXJlc3BvbnNlX21ldGEYASABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGESYAocY29udmVyc2VkX2FjY291bnRfYXNzaXN0YW50cxgCIAMoCzIeLmVsaW50LmVudGl0eS5BY2NvdW50QXNzaXN0YW50Uhpjb252ZXJzZWRBY2NvdW50QXNzaXN0YW50cw==');
@$core.Deprecated('Use getConversedAccountAndAssistantsResponseDescriptor instead')
const GetConversedAccountAndAssistantsResponse$json = const {
  '1': 'GetConversedAccountAndAssistantsResponse',
  '2': const [
    const {'1': 'response_meta', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
    const {'1': 'conversed_entity_with_last_conversation_message', '3': 2, '4': 3, '5': 11, '6': '.elint.services.product.conversation.message.ConversedEntityWithLastConversationMessage', '10': 'conversedEntityWithLastConversationMessage'},
  ],
};

/// Descriptor for `GetConversedAccountAndAssistantsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getConversedAccountAndAssistantsResponseDescriptor = $convert.base64Decode('CihHZXRDb252ZXJzZWRBY2NvdW50QW5kQXNzaXN0YW50c1Jlc3BvbnNlEj8KDXJlc3BvbnNlX21ldGEYASABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGESvAEKL2NvbnZlcnNlZF9lbnRpdHlfd2l0aF9sYXN0X2NvbnZlcnNhdGlvbl9tZXNzYWdlGAIgAygLMlcuZWxpbnQuc2VydmljZXMucHJvZHVjdC5jb252ZXJzYXRpb24ubWVzc2FnZS5Db252ZXJzZWRFbnRpdHlXaXRoTGFzdENvbnZlcnNhdGlvbk1lc3NhZ2VSKmNvbnZlcnNlZEVudGl0eVdpdGhMYXN0Q29udmVyc2F0aW9uTWVzc2FnZQ==');
@$core.Deprecated('Use conversedEntityWithLastConversationMessageDescriptor instead')
const ConversedEntityWithLastConversationMessage$json = const {
  '1': 'ConversedEntityWithLastConversationMessage',
  '2': const [
    const {'1': 'conversed_account', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.Account', '9': 0, '10': 'conversedAccount'},
    const {'1': 'conversed_account_assistant', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountAssistant', '9': 0, '10': 'conversedAccountAssistant'},
    const {'1': 'last_conversation_message', '3': 3, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.ConversationMessage', '10': 'lastConversationMessage'},
  ],
  '8': const [
    const {'1': 'conversed_entity'},
  ],
};

/// Descriptor for `ConversedEntityWithLastConversationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conversedEntityWithLastConversationMessageDescriptor = $convert.base64Decode('CipDb252ZXJzZWRFbnRpdHlXaXRoTGFzdENvbnZlcnNhdGlvbk1lc3NhZ2USRAoRY29udmVyc2VkX2FjY291bnQYASABKAsyFS5lbGludC5lbnRpdHkuQWNjb3VudEgAUhBjb252ZXJzZWRBY2NvdW50EmAKG2NvbnZlcnNlZF9hY2NvdW50X2Fzc2lzdGFudBgCIAEoCzIeLmVsaW50LmVudGl0eS5BY2NvdW50QXNzaXN0YW50SABSGWNvbnZlcnNlZEFjY291bnRBc3Npc3RhbnQSfAoZbGFzdF9jb252ZXJzYXRpb25fbWVzc2FnZRgDIAEoCzJALmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuQ29udmVyc2F0aW9uTWVzc2FnZVIXbGFzdENvbnZlcnNhdGlvbk1lc3NhZ2VCEgoQY29udmVyc2VkX2VudGl0eQ==');
@$core.Deprecated('Use conversationMessageDescriptor instead')
const ConversationMessage$json = const {
  '1': 'ConversationMessage',
  '2': const [
    const {'1': 'is_message_entity_account_assistant', '3': 1, '4': 1, '5': 8, '10': 'isMessageEntityAccountAssistant'},
    const {'1': 'is_message_sent', '3': 2, '4': 1, '5': 8, '10': 'isMessageSent'},
    const {'1': 'account_assistant_received_message', '3': 3, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountAssistantReceivedMessage', '9': 0, '10': 'accountAssistantReceivedMessage'},
    const {'1': 'account_received_message', '3': 4, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountReceivedMessage', '9': 0, '10': 'accountReceivedMessage'},
    const {'1': 'account_assistant_sent_message', '3': 5, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountAssistantSentMessage', '9': 0, '10': 'accountAssistantSentMessage'},
    const {'1': 'account_sent_message', '3': 6, '4': 1, '5': 11, '6': '.elint.services.product.conversation.message.account.AccountSentMessage', '9': 0, '10': 'accountSentMessage'},
  ],
  '8': const [
    const {'1': 'conversation_message'},
  ],
};

/// Descriptor for `ConversationMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conversationMessageDescriptor = $convert.base64Decode('ChNDb252ZXJzYXRpb25NZXNzYWdlEkwKI2lzX21lc3NhZ2VfZW50aXR5X2FjY291bnRfYXNzaXN0YW50GAEgASgIUh9pc01lc3NhZ2VFbnRpdHlBY2NvdW50QXNzaXN0YW50EiYKD2lzX21lc3NhZ2Vfc2VudBgCIAEoCFINaXNNZXNzYWdlU2VudBKjAQoiYWNjb3VudF9hc3Npc3RhbnRfcmVjZWl2ZWRfbWVzc2FnZRgDIAEoCzJULmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuYWNjb3VudC5BY2NvdW50QXNzaXN0YW50UmVjZWl2ZWRNZXNzYWdlSABSH2FjY291bnRBc3Npc3RhbnRSZWNlaXZlZE1lc3NhZ2UShwEKGGFjY291bnRfcmVjZWl2ZWRfbWVzc2FnZRgEIAEoCzJLLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuYWNjb3VudC5BY2NvdW50UmVjZWl2ZWRNZXNzYWdlSABSFmFjY291bnRSZWNlaXZlZE1lc3NhZ2USlwEKHmFjY291bnRfYXNzaXN0YW50X3NlbnRfbWVzc2FnZRgFIAEoCzJQLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuY29udmVyc2F0aW9uLm1lc3NhZ2UuYWNjb3VudC5BY2NvdW50QXNzaXN0YW50U2VudE1lc3NhZ2VIAFIbYWNjb3VudEFzc2lzdGFudFNlbnRNZXNzYWdlEnsKFGFjY291bnRfc2VudF9tZXNzYWdlGAYgASgLMkcuZWxpbnQuc2VydmljZXMucHJvZHVjdC5jb252ZXJzYXRpb24ubWVzc2FnZS5hY2NvdW50LkFjY291bnRTZW50TWVzc2FnZUgAUhJhY2NvdW50U2VudE1lc3NhZ2VCFgoUY29udmVyc2F0aW9uX21lc3NhZ2U=');
