///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/conversation/message/account_assistant/send_account_assistant_message.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use messageForAccountDescriptor instead')
const MessageForAccount$json = const {
  '1': 'MessageForAccount',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.assistant.AccountAssistantServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connected_account', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountAssistantConnectedAccount', '10': 'connectedAccount'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'message_source_space_id', '3': 4, '4': 1, '5': 9, '10': 'messageSourceSpaceId'},
    const {'1': 'message_source_space_type_id', '3': 5, '4': 1, '5': 9, '10': 'messageSourceSpaceTypeId'},
    const {'1': 'message_source_space_domain_id', '3': 6, '4': 1, '5': 9, '10': 'messageSourceSpaceDomainId'},
    const {'1': 'message_source_space_domain_action', '3': 7, '4': 1, '5': 5, '10': 'messageSourceSpaceDomainAction'},
    const {'1': 'message_source_space_domain_action_context_id', '3': 8, '4': 1, '5': 9, '10': 'messageSourceSpaceDomainActionContextId'},
    const {'1': 'message_source', '3': 9, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'messageSource'},
  ],
};

/// Descriptor for `MessageForAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageForAccountDescriptor = $convert.base64Decode('ChFNZXNzYWdlRm9yQWNjb3VudBKMAQoTYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJcLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuaWRlbnRpdHkuYWNjb3VudC5hc3Npc3RhbnQuQWNjb3VudEFzc2lzdGFudFNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSEWFjY2Vzc0F1dGhEZXRhaWxzElsKEWNvbm5lY3RlZF9hY2NvdW50GAIgASgLMi4uZWxpbnQuZW50aXR5LkFjY291bnRBc3Npc3RhbnRDb25uZWN0ZWRBY2NvdW50UhBjb25uZWN0ZWRBY2NvdW50EhgKB21lc3NhZ2UYAyABKAlSB21lc3NhZ2USNQoXbWVzc2FnZV9zb3VyY2Vfc3BhY2VfaWQYBCABKAlSFG1lc3NhZ2VTb3VyY2VTcGFjZUlkEj4KHG1lc3NhZ2Vfc291cmNlX3NwYWNlX3R5cGVfaWQYBSABKAlSGG1lc3NhZ2VTb3VyY2VTcGFjZVR5cGVJZBJCCh5tZXNzYWdlX3NvdXJjZV9zcGFjZV9kb21haW5faWQYBiABKAlSGm1lc3NhZ2VTb3VyY2VTcGFjZURvbWFpbklkEkoKIm1lc3NhZ2Vfc291cmNlX3NwYWNlX2RvbWFpbl9hY3Rpb24YByABKAVSHm1lc3NhZ2VTb3VyY2VTcGFjZURvbWFpbkFjdGlvbhJeCi1tZXNzYWdlX3NvdXJjZV9zcGFjZV9kb21haW5fYWN0aW9uX2NvbnRleHRfaWQYCCABKAlSJ21lc3NhZ2VTb3VyY2VTcGFjZURvbWFpbkFjdGlvbkNvbnRleHRJZBI7Cg5tZXNzYWdlX3NvdXJjZRgJIAMoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSDW1lc3NhZ2VTb3VyY2U=');
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
