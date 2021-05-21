///
//  Generated code. Do not modify.
//  source: ethos/elint/services/cognitive/assist/context/context_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use accountMessageDescriptor instead')
const AccountMessage$json = const {
  '1': 'AccountMessage',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.assistant.AccountAssistantServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `AccountMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountMessageDescriptor = $convert.base64Decode('Cg5BY2NvdW50TWVzc2FnZRKMAQoTYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJcLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuaWRlbnRpdHkuYWNjb3VudC5hc3Npc3RhbnQuQWNjb3VudEFzc2lzdGFudFNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSEWFjY2Vzc0F1dGhEZXRhaWxzEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use accountMessageContextDescriptor instead')
const AccountMessageContext$json = const {
  '1': 'AccountMessageContext',
  '2': const [
    const {'1': 'knowledge_space_actions', '3': 1, '4': 3, '5': 14, '6': '.elint.entity.SpaceKnowledgeAction', '10': 'knowledgeSpaceActions'},
  ],
};

/// Descriptor for `AccountMessageContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountMessageContextDescriptor = $convert.base64Decode('ChVBY2NvdW50TWVzc2FnZUNvbnRleHQSWgoXa25vd2xlZGdlX3NwYWNlX2FjdGlvbnMYASADKA4yIi5lbGludC5lbnRpdHkuU3BhY2VLbm93bGVkZ2VBY3Rpb25SFWtub3dsZWRnZVNwYWNlQWN0aW9ucw==');
