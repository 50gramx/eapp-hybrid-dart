///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/connect_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use connectedAccountAssistantsDescriptor instead')
const ConnectedAccountAssistants$json = const {
  '1': 'ConnectedAccountAssistants',
  '2': const [
    const {'1': 'connected_account_assistants', '3': 1, '4': 3, '5': 11, '6': '.elint.entity.AccountConnectedAccountAssistant', '10': 'connectedAccountAssistants'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `ConnectedAccountAssistants`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectedAccountAssistantsDescriptor = $convert.base64Decode('ChpDb25uZWN0ZWRBY2NvdW50QXNzaXN0YW50cxJwChxjb25uZWN0ZWRfYWNjb3VudF9hc3Npc3RhbnRzGAEgAygLMi4uZWxpbnQuZW50aXR5LkFjY291bnRDb25uZWN0ZWRBY2NvdW50QXNzaXN0YW50Uhpjb25uZWN0ZWRBY2NvdW50QXNzaXN0YW50cxI/Cg1yZXNwb25zZV9tZXRhGAIgASgLMhouZWxpbnQuZW50aXR5LlJlc3BvbnNlTWV0YVIMcmVzcG9uc2VNZXRh');
@$core.Deprecated('Use connectedAccountsDescriptor instead')
const ConnectedAccounts$json = const {
  '1': 'ConnectedAccounts',
  '2': const [
    const {'1': 'connected_accounts', '3': 1, '4': 3, '5': 11, '6': '.elint.entity.AccountConnectedAccount', '10': 'connectedAccounts'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `ConnectedAccounts`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectedAccountsDescriptor = $convert.base64Decode('ChFDb25uZWN0ZWRBY2NvdW50cxJUChJjb25uZWN0ZWRfYWNjb3VudHMYASADKAsyJS5lbGludC5lbnRpdHkuQWNjb3VudENvbm5lY3RlZEFjY291bnRSEWNvbm5lY3RlZEFjY291bnRzEj8KDXJlc3BvbnNlX21ldGEYAiABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGE=');
@$core.Deprecated('Use isAccountAssistantConnectedRequestDescriptor instead')
const IsAccountAssistantConnectedRequest$json = const {
  '1': 'IsAccountAssistantConnectedRequest',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'connected_account_assistant', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccountAssistant', '10': 'connectedAccountAssistant'},
  ],
};

/// Descriptor for `IsAccountAssistantConnectedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isAccountAssistantConnectedRequestDescriptor = $convert.base64Decode('CiJJc0FjY291bnRBc3Npc3RhbnRDb25uZWN0ZWRSZXF1ZXN0Eh0KCmFjY291bnRfaWQYASABKAlSCWFjY291bnRJZBJuChtjb25uZWN0ZWRfYWNjb3VudF9hc3Npc3RhbnQYAiABKAsyLi5lbGludC5lbnRpdHkuQWNjb3VudENvbm5lY3RlZEFjY291bnRBc3Npc3RhbnRSGWNvbm5lY3RlZEFjY291bnRBc3Npc3RhbnQ=');
@$core.Deprecated('Use isAccountConnectedRequestDescriptor instead')
const IsAccountConnectedRequest$json = const {
  '1': 'IsAccountConnectedRequest',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'connected_account', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccount', '10': 'connectedAccount'},
  ],
};

/// Descriptor for `IsAccountConnectedRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List isAccountConnectedRequestDescriptor = $convert.base64Decode('ChlJc0FjY291bnRDb25uZWN0ZWRSZXF1ZXN0Eh0KCmFjY291bnRfaWQYASABKAlSCWFjY291bnRJZBJSChFjb25uZWN0ZWRfYWNjb3VudBgCIAEoCzIlLmVsaW50LmVudGl0eS5BY2NvdW50Q29ubmVjdGVkQWNjb3VudFIQY29ubmVjdGVkQWNjb3VudA==');
@$core.Deprecated('Use parseAccountMobilesRequestDescriptor instead')
const ParseAccountMobilesRequest$json = const {
  '1': 'ParseAccountMobilesRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connecting_account_mobile_numbers', '3': 2, '4': 3, '5': 9, '10': 'connectingAccountMobileNumbers'},
  ],
};

/// Descriptor for `ParseAccountMobilesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List parseAccountMobilesRequestDescriptor = $convert.base64Decode('ChpQYXJzZUFjY291bnRNb2JpbGVzUmVxdWVzdBJ5ChNhY2Nlc3NfYXV0aF9kZXRhaWxzGAEgASgLMkkuZWxpbnQuc2VydmljZXMucHJvZHVjdC5pZGVudGl0eS5hY2NvdW50LkFjY291bnRTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUhFhY2Nlc3NBdXRoRGV0YWlscxJJCiFjb25uZWN0aW5nX2FjY291bnRfbW9iaWxlX251bWJlcnMYAiADKAlSHmNvbm5lY3RpbmdBY2NvdW50TW9iaWxlTnVtYmVycw==');
@$core.Deprecated('Use parseAccountMobilesResponseDescriptor instead')
const ParseAccountMobilesResponse$json = const {
  '1': 'ParseAccountMobilesResponse',
  '2': const [
    const {'1': 'account_mobiles', '3': 1, '4': 3, '5': 11, '6': '.elint.entity.AccountMobile', '10': 'accountMobiles'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `ParseAccountMobilesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List parseAccountMobilesResponseDescriptor = $convert.base64Decode('ChtQYXJzZUFjY291bnRNb2JpbGVzUmVzcG9uc2USRAoPYWNjb3VudF9tb2JpbGVzGAEgAygLMhsuZWxpbnQuZW50aXR5LkFjY291bnRNb2JpbGVSDmFjY291bnRNb2JpbGVzEj8KDXJlc3BvbnNlX21ldGEYAiABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGE=');
@$core.Deprecated('Use syncAccountConnectionsRequestDescriptor instead')
const SyncAccountConnectionsRequest$json = const {
  '1': 'SyncAccountConnectionsRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connecting_account_mobile', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountMobile', '10': 'connectingAccountMobile'},
  ],
};

/// Descriptor for `SyncAccountConnectionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncAccountConnectionsRequestDescriptor = $convert.base64Decode('Ch1TeW5jQWNjb3VudENvbm5lY3Rpb25zUmVxdWVzdBJ5ChNhY2Nlc3NfYXV0aF9kZXRhaWxzGAEgASgLMkkuZWxpbnQuc2VydmljZXMucHJvZHVjdC5pZGVudGl0eS5hY2NvdW50LkFjY291bnRTZXJ2aWNlc0FjY2Vzc0F1dGhEZXRhaWxzUhFhY2Nlc3NBdXRoRGV0YWlscxJXChljb25uZWN0aW5nX2FjY291bnRfbW9iaWxlGAIgASgLMhsuZWxpbnQuZW50aXR5LkFjY291bnRNb2JpbGVSF2Nvbm5lY3RpbmdBY2NvdW50TW9iaWxl');
@$core.Deprecated('Use syncAccountConnectionsResponseDescriptor instead')
const SyncAccountConnectionsResponse$json = const {
  '1': 'SyncAccountConnectionsResponse',
  '2': const [
    const {'1': 'connected_account', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.SyncAccountConnectionsResponse.ConnectedAccount', '10': 'connectedAccount'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
  '3': const [SyncAccountConnectionsResponse_ConnectedAccount$json],
};

@$core.Deprecated('Use syncAccountConnectionsResponseDescriptor instead')
const SyncAccountConnectionsResponse_ConnectedAccount$json = const {
  '1': 'ConnectedAccount',
  '2': const [
    const {'1': 'connected_account', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccount', '10': 'connectedAccount'},
    const {'1': 'connected_account_mobile', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountMobile', '10': 'connectedAccountMobile'},
  ],
};

/// Descriptor for `SyncAccountConnectionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List syncAccountConnectionsResponseDescriptor = $convert.base64Decode('Ch5TeW5jQWNjb3VudENvbm5lY3Rpb25zUmVzcG9uc2UShQEKEWNvbm5lY3RlZF9hY2NvdW50GAEgASgLMlguZWxpbnQuc2VydmljZXMucHJvZHVjdC5pZGVudGl0eS5hY2NvdW50LlN5bmNBY2NvdW50Q29ubmVjdGlvbnNSZXNwb25zZS5Db25uZWN0ZWRBY2NvdW50UhBjb25uZWN0ZWRBY2NvdW50Ej8KDXJlc3BvbnNlX21ldGEYAiABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGEavQEKEENvbm5lY3RlZEFjY291bnQSUgoRY29ubmVjdGVkX2FjY291bnQYASABKAsyJS5lbGludC5lbnRpdHkuQWNjb3VudENvbm5lY3RlZEFjY291bnRSEGNvbm5lY3RlZEFjY291bnQSVQoYY29ubmVjdGVkX2FjY291bnRfbW9iaWxlGAIgASgLMhsuZWxpbnQuZW50aXR5LkFjY291bnRNb2JpbGVSFmNvbm5lY3RlZEFjY291bnRNb2JpbGU=');
@$core.Deprecated('Use connectAccountRequestDescriptor instead')
const ConnectAccountRequest$json = const {
  '1': 'ConnectAccountRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'connecting_account_id', '3': 2, '4': 1, '5': 9, '10': 'connectingAccountId'},
  ],
};

/// Descriptor for `ConnectAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectAccountRequestDescriptor = $convert.base64Decode('ChVDb25uZWN0QWNjb3VudFJlcXVlc3QSeQoTYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJJLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuaWRlbnRpdHkuYWNjb3VudC5BY2NvdW50U2VydmljZXNBY2Nlc3NBdXRoRGV0YWlsc1IRYWNjZXNzQXV0aERldGFpbHMSMgoVY29ubmVjdGluZ19hY2NvdW50X2lkGAIgASgJUhNjb25uZWN0aW5nQWNjb3VudElk');
@$core.Deprecated('Use connectAccountResponseDescriptor instead')
const ConnectAccountResponse$json = const {
  '1': 'ConnectAccountResponse',
  '2': const [
    const {'1': 'connected_account', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccount', '10': 'connectedAccount'},
    const {'1': 'response_meta', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.ResponseMeta', '10': 'responseMeta'},
  ],
};

/// Descriptor for `ConnectAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectAccountResponseDescriptor = $convert.base64Decode('ChZDb25uZWN0QWNjb3VudFJlc3BvbnNlElIKEWNvbm5lY3RlZF9hY2NvdW50GAEgASgLMiUuZWxpbnQuZW50aXR5LkFjY291bnRDb25uZWN0ZWRBY2NvdW50UhBjb25uZWN0ZWRBY2NvdW50Ej8KDXJlc3BvbnNlX21ldGEYAiABKAsyGi5lbGludC5lbnRpdHkuUmVzcG9uc2VNZXRhUgxyZXNwb25zZU1ldGE=');
