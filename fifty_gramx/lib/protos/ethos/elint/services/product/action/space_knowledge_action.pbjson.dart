///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/action/space_knowledge_action.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use askQuestionRequestDescriptor instead')
const AskQuestionRequest$json = const {
  '1': 'AskQuestionRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.assistant.AccountAssistantServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `AskQuestionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List askQuestionRequestDescriptor = $convert.base64Decode('ChJBc2tRdWVzdGlvblJlcXVlc3QSjAEKE2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsyXC5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmlkZW50aXR5LmFjY291bnQuYXNzaXN0YW50LkFjY291bnRBc3Npc3RhbnRTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUhFhY2Nlc3NBdXRoRGV0YWlscxIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use askQuestionResponseDescriptor instead')
const AskQuestionResponse$json = const {
  '1': 'AskQuestionResponse',
  '2': const [
    const {'1': 'domains_ranked_answers', '3': 1, '4': 3, '5': 11, '6': '.elint.services.product.action.space.knowledge.DomainRankedAnswers', '10': 'domainsRankedAnswers'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `AskQuestionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List askQuestionResponseDescriptor = $convert.base64Decode('ChNBc2tRdWVzdGlvblJlc3BvbnNlEngKFmRvbWFpbnNfcmFua2VkX2Fuc3dlcnMYASADKAsyQi5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmFjdGlvbi5zcGFjZS5rbm93bGVkZ2UuRG9tYWluUmFua2VkQW5zd2Vyc1IUZG9tYWluc1JhbmtlZEFuc3dlcnMSPwoNcmVzcG9uc2VfbWV0YRgCIAEoCzIaLmVsaW50LmVudGl0eS5SZXNwb25zZU1ldGFSDHJlc3BvbnNlTWV0YQ==');
@$core.Deprecated('Use domainRankedAnswersDescriptor instead')
const DomainRankedAnswers$json = const {
  '1': 'DomainRankedAnswers',
  '2': const [
    const {'1': 'space_knowledge_domain', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.SpaceKnowledgeDomain', '10': 'spaceKnowledgeDomain'},
    const {'1': 'ranked_answers', '3': 2, '4': 3, '5': 11, '6': '.elint.entity.RankedAnswer', '10': 'rankedAnswers'},
  ],
};

/// Descriptor for `DomainRankedAnswers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List domainRankedAnswersDescriptor = $convert.base64Decode('ChNEb21haW5SYW5rZWRBbnN3ZXJzElgKFnNwYWNlX2tub3dsZWRnZV9kb21haW4YASABKAsyIi5lbGludC5lbnRpdHkuU3BhY2VLbm93bGVkZ2VEb21haW5SFHNwYWNlS25vd2xlZGdlRG9tYWluEkEKDnJhbmtlZF9hbnN3ZXJzGAIgAygLMhouZWxpbnQuZW50aXR5LlJhbmtlZEFuc3dlclINcmFua2VkQW5zd2Vycw==');
