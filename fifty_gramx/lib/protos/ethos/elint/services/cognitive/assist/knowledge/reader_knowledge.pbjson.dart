///
//  Generated code. Do not modify.
//  source: ethos/elint/services/cognitive/assist/knowledge/reader_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use readPageQuestionRequestDescriptor instead')
const ReadPageQuestionRequest$json = const {
  '1': 'ReadPageQuestionRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.domain.SpaceKnowledgeDomainServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'page', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.SpaceKnowledgeDomainFilePage', '10': 'page'},
    const {'1': 'question', '3': 3, '4': 1, '5': 9, '10': 'question'},
  ],
};

/// Descriptor for `ReadPageQuestionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readPageQuestionRequestDescriptor = $convert.base64Decode('ChdSZWFkUGFnZVF1ZXN0aW9uUmVxdWVzdBKGAQoTYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJWLmVsaW50LnNlcnZpY2VzLnByb2R1Y3Qua25vd2xlZGdlLmRvbWFpbi5TcGFjZUtub3dsZWRnZURvbWFpblNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSEWFjY2Vzc0F1dGhEZXRhaWxzEj4KBHBhZ2UYAiABKAsyKi5lbGludC5lbnRpdHkuU3BhY2VLbm93bGVkZ2VEb21haW5GaWxlUGFnZVIEcGFnZRIaCghxdWVzdGlvbhgDIAEoCVIIcXVlc3Rpb24=');
@$core.Deprecated('Use readPageQuestionResponseDescriptor instead')
const ReadPageQuestionResponse$json = const {
  '1': 'ReadPageQuestionResponse',
  '2': const [
    const {'1': 'page_answer', '3': 1, '4': 1, '5': 11, '6': '.elint.services.cognitive.assist.knowledge.reader.PageAnswer', '10': 'pageAnswer'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `ReadPageQuestionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readPageQuestionResponseDescriptor = $convert.base64Decode('ChhSZWFkUGFnZVF1ZXN0aW9uUmVzcG9uc2USXQoLcGFnZV9hbnN3ZXIYASABKAsyPC5lbGludC5zZXJ2aWNlcy5jb2duaXRpdmUuYXNzaXN0Lmtub3dsZWRnZS5yZWFkZXIuUGFnZUFuc3dlclIKcGFnZUFuc3dlchI/Cg1yZXNwb25zZV9tZXRhGAIgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRh');
@$core.Deprecated('Use readParaQuestionRequestDescriptor instead')
const ReadParaQuestionRequest$json = const {
  '1': 'ReadParaQuestionRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.knowledge.domain.SpaceKnowledgeDomainServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'para', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.SpaceKnowledgeDomainFilePagePara', '10': 'para'},
    const {'1': 'question', '3': 3, '4': 1, '5': 9, '10': 'question'},
  ],
};

/// Descriptor for `ReadParaQuestionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readParaQuestionRequestDescriptor = $convert.base64Decode('ChdSZWFkUGFyYVF1ZXN0aW9uUmVxdWVzdBKGAQoTYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJWLmVsaW50LnNlcnZpY2VzLnByb2R1Y3Qua25vd2xlZGdlLmRvbWFpbi5TcGFjZUtub3dsZWRnZURvbWFpblNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSEWFjY2Vzc0F1dGhEZXRhaWxzEkIKBHBhcmEYAiABKAsyLi5lbGludC5lbnRpdHkuU3BhY2VLbm93bGVkZ2VEb21haW5GaWxlUGFnZVBhcmFSBHBhcmESGgoIcXVlc3Rpb24YAyABKAlSCHF1ZXN0aW9u');
@$core.Deprecated('Use readParaQuestionResponseDescriptor instead')
const ReadParaQuestionResponse$json = const {
  '1': 'ReadParaQuestionResponse',
  '2': const [
    const {'1': 'para_answer', '3': 1, '4': 1, '5': 11, '6': '.elint.services.cognitive.assist.knowledge.reader.ParaAnswer', '10': 'paraAnswer'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `ReadParaQuestionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readParaQuestionResponseDescriptor = $convert.base64Decode('ChhSZWFkUGFyYVF1ZXN0aW9uUmVzcG9uc2USXQoLcGFyYV9hbnN3ZXIYASABKAsyPC5lbGludC5zZXJ2aWNlcy5jb2duaXRpdmUuYXNzaXN0Lmtub3dsZWRnZS5yZWFkZXIuUGFyYUFuc3dlclIKcGFyYUFuc3dlchI/Cg1yZXNwb25zZV9tZXRhGAIgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRh');
@$core.Deprecated('Use pageAnswerDescriptor instead')
const PageAnswer$json = const {
  '1': 'PageAnswer',
  '2': const [
    const {'1': 'answer', '3': 1, '4': 1, '5': 9, '10': 'answer'},
    const {'1': 'page_text', '3': 2, '4': 1, '5': 9, '10': 'pageText'},
  ],
};

/// Descriptor for `PageAnswer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pageAnswerDescriptor = $convert.base64Decode('CgpQYWdlQW5zd2VyEhYKBmFuc3dlchgBIAEoCVIGYW5zd2VyEhsKCXBhZ2VfdGV4dBgCIAEoCVIIcGFnZVRleHQ=');
@$core.Deprecated('Use paraAnswerDescriptor instead')
const ParaAnswer$json = const {
  '1': 'ParaAnswer',
  '2': const [
    const {'1': 'answer', '3': 1, '4': 1, '5': 9, '10': 'answer'},
    const {'1': 'para_text', '3': 2, '4': 1, '5': 9, '10': 'paraText'},
  ],
};

/// Descriptor for `ParaAnswer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paraAnswerDescriptor = $convert.base64Decode('CgpQYXJhQW5zd2VyEhYKBmFuc3dlchgBIAEoCVIGYW5zd2VyEhsKCXBhcmFfdGV4dBgCIAEoCVIIcGFyYVRleHQ=');
