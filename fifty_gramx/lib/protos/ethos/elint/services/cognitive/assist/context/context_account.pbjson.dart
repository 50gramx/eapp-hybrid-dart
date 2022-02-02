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
    const {'1': 'knowledge_contextual_actions', '3': 1, '4': 3, '5': 11, '6': '.elint.services.cognitive.assist.context.account.KnowledgeContextualAction', '10': 'knowledgeContextualActions'},
  ],
};

/// Descriptor for `AccountMessageContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountMessageContextDescriptor = $convert.base64Decode('ChVBY2NvdW50TWVzc2FnZUNvbnRleHQSjAEKHGtub3dsZWRnZV9jb250ZXh0dWFsX2FjdGlvbnMYASADKAsySi5lbGludC5zZXJ2aWNlcy5jb2duaXRpdmUuYXNzaXN0LmNvbnRleHQuYWNjb3VudC5Lbm93bGVkZ2VDb250ZXh0dWFsQWN0aW9uUhprbm93bGVkZ2VDb250ZXh0dWFsQWN0aW9ucw==');
@$core.Deprecated('Use knowledgeContextualActionDescriptor instead')
const KnowledgeContextualAction$json = const {
  '1': 'KnowledgeContextualAction',
  '2': const [
    const {'1': 'knowledge_context_action_id', '3': 1, '4': 1, '5': 9, '10': 'knowledgeContextActionId'},
    const {'1': 'knowledge_space_action', '3': 2, '4': 1, '5': 14, '6': '.elint.entity.SpaceKnowledgeAction', '10': 'knowledgeSpaceAction'},
    const {'1': 'knowledge_context_confidence', '3': 3, '4': 1, '5': 2, '10': 'knowledgeContextConfidence'},
  ],
};

/// Descriptor for `KnowledgeContextualAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List knowledgeContextualActionDescriptor = $convert.base64Decode('ChlLbm93bGVkZ2VDb250ZXh0dWFsQWN0aW9uEj0KG2tub3dsZWRnZV9jb250ZXh0X2FjdGlvbl9pZBgBIAEoCVIYa25vd2xlZGdlQ29udGV4dEFjdGlvbklkElgKFmtub3dsZWRnZV9zcGFjZV9hY3Rpb24YAiABKA4yIi5lbGludC5lbnRpdHkuU3BhY2VLbm93bGVkZ2VBY3Rpb25SFGtub3dsZWRnZVNwYWNlQWN0aW9uEkAKHGtub3dsZWRnZV9jb250ZXh0X2NvbmZpZGVuY2UYAyABKAJSGmtub3dsZWRnZUNvbnRleHRDb25maWRlbmNl');
