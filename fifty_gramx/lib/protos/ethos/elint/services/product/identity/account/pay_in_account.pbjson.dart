///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/pay_in_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use accountPayInPublishableKeyDescriptor instead')
const AccountPayInPublishableKey$json = const {
  '1': 'AccountPayInPublishableKey',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `AccountPayInPublishableKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountPayInPublishableKeyDescriptor = $convert.base64Decode('ChpBY2NvdW50UGF5SW5QdWJsaXNoYWJsZUtleRIQCgNrZXkYASABKAlSA2tleRI/Cg1yZXNwb25zZV9tZXRhGAIgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRh');
@$core.Deprecated('Use accountPayInAccessKeyDescriptor instead')
const AccountPayInAccessKey$json = const {
  '1': 'AccountPayInAccessKey',
  '2': const [
    const {'1': 'json_key', '3': 1, '4': 1, '5': 9, '10': 'jsonKey'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `AccountPayInAccessKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountPayInAccessKeyDescriptor = $convert.base64Decode('ChVBY2NvdW50UGF5SW5BY2Nlc3NLZXkSGQoIanNvbl9rZXkYASABKAlSB2pzb25LZXkSPwoNcmVzcG9uc2VfbWV0YRgCIAEoCzIaLmVsaW50LmVudGl0eS5SZXNwb25zZU1ldGFSDHJlc3BvbnNlTWV0YQ==');
@$core.Deprecated('Use accountPayInSecretKeyDescriptor instead')
const AccountPayInSecretKey$json = const {
  '1': 'AccountPayInSecretKey',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `AccountPayInSecretKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountPayInSecretKeyDescriptor = $convert.base64Decode('ChVBY2NvdW50UGF5SW5TZWNyZXRLZXkSEAoDa2V5GAEgASgJUgNrZXk=');
@$core.Deprecated('Use getAccountPayInIntentRequestDescriptor instead')
const GetAccountPayInIntentRequest$json = const {
  '1': 'GetAccountPayInIntentRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'prefer_billing_annually', '3': 2, '4': 1, '5': 8, '10': 'preferBillingAnnually'},
  ],
};

/// Descriptor for `GetAccountPayInIntentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountPayInIntentRequestDescriptor = $convert.base64Decode('ChxHZXRBY2NvdW50UGF5SW5JbnRlbnRSZXF1ZXN0EnkKE2FjY2Vzc19hdXRoX2RldGFpbHMYASABKAsySS5lbGludC5zZXJ2aWNlcy5wcm9kdWN0LmlkZW50aXR5LmFjY291bnQuQWNjb3VudFNlcnZpY2VzQWNjZXNzQXV0aERldGFpbHNSEWFjY2Vzc0F1dGhEZXRhaWxzEjYKF3ByZWZlcl9iaWxsaW5nX2FubnVhbGx5GAIgASgIUhVwcmVmZXJCaWxsaW5nQW5udWFsbHk=');
@$core.Deprecated('Use getAccountPayInIntentResponseDescriptor instead')
const GetAccountPayInIntentResponse$json = const {
  '1': 'GetAccountPayInIntentResponse',
  '2': const [
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `GetAccountPayInIntentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountPayInIntentResponseDescriptor = $convert.base64Decode('Ch1HZXRBY2NvdW50UGF5SW5JbnRlbnRSZXNwb25zZRI/Cg1yZXNwb25zZV9tZXRhGAIgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRh');
@$core.Deprecated('Use listAllCardsResponseDescriptor instead')
const ListAllCardsResponse$json = const {
  '1': 'ListAllCardsResponse',
  '2': const [
    const {'1': 'account_pay_in_cards', '3': 1, '4': 3, '5': 11, '6': '.elint.entity.AccountPayInCardDetails', '10': 'accountPayInCards'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `ListAllCardsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAllCardsResponseDescriptor = $convert.base64Decode('ChRMaXN0QWxsQ2FyZHNSZXNwb25zZRJWChRhY2NvdW50X3BheV9pbl9jYXJkcxgBIAMoCzIlLmVsaW50LmVudGl0eS5BY2NvdW50UGF5SW5DYXJkRGV0YWlsc1IRYWNjb3VudFBheUluQ2FyZHMSPwoNcmVzcG9uc2VfbWV0YRgCIAEoCzIaLmVsaW50LmVudGl0eS5SZXNwb25zZU1ldGFSDHJlc3BvbnNlTWV0YQ==');
@$core.Deprecated('Use saveCardResponseDescriptor instead')
const SaveCardResponse$json = const {
  '1': 'SaveCardResponse',
  '2': const [
    const {'1': 'save_card_secret', '3': 1, '4': 1, '5': 9, '10': 'saveCardSecret'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `SaveCardResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveCardResponseDescriptor = $convert.base64Decode('ChBTYXZlQ2FyZFJlc3BvbnNlEigKEHNhdmVfY2FyZF9zZWNyZXQYASABKAlSDnNhdmVDYXJkU2VjcmV0Ej8KDXJlc3BvbnNlX21ldGEYAiABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGE=');
