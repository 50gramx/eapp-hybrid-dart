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
//  source: ethos/elint/services/product/identity/account/notify_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use newReceivedMessageFromAccountAssistantRequestDescriptor instead')
const NewReceivedMessageFromAccountAssistantRequest$json = const {
  '1': 'NewReceivedMessageFromAccountAssistantRequest',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'connecting_account_assistant_id', '3': 2, '4': 1, '5': 9, '10': 'connectingAccountAssistantId'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `NewReceivedMessageFromAccountAssistantRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newReceivedMessageFromAccountAssistantRequestDescriptor = $convert.base64Decode('Ci1OZXdSZWNlaXZlZE1lc3NhZ2VGcm9tQWNjb3VudEFzc2lzdGFudFJlcXVlc3QSHQoKYWNjb3VudF9pZBgBIAEoCVIJYWNjb3VudElkEkUKH2Nvbm5lY3RpbmdfYWNjb3VudF9hc3Npc3RhbnRfaWQYAiABKAlSHGNvbm5lY3RpbmdBY2NvdW50QXNzaXN0YW50SWQSGAoHbWVzc2FnZRgDIAEoCVIHbWVzc2FnZQ==');
@$core.Deprecated('Use newReceivedMessageFromAccountRequestDescriptor instead')
const NewReceivedMessageFromAccountRequest$json = const {
  '1': 'NewReceivedMessageFromAccountRequest',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'connecting_account_id', '3': 2, '4': 1, '5': 9, '10': 'connectingAccountId'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `NewReceivedMessageFromAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newReceivedMessageFromAccountRequestDescriptor = $convert.base64Decode('CiROZXdSZWNlaXZlZE1lc3NhZ2VGcm9tQWNjb3VudFJlcXVlc3QSHQoKYWNjb3VudF9pZBgBIAEoCVIJYWNjb3VudElkEjIKFWNvbm5lY3RpbmdfYWNjb3VudF9pZBgCIAEoCVITY29ubmVjdGluZ0FjY291bnRJZBIYCgdtZXNzYWdlGAMgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use accountConnectedAccountNotificationRequestDescriptor instead')
const AccountConnectedAccountNotificationRequest$json = const {
  '1': 'AccountConnectedAccountNotificationRequest',
  '2': const [
    const {'1': 'account', '3': 1, '4': 1, '5': 11, '6': '.elint.entity.Account', '10': 'account'},
    const {'1': 'connecting_account_connected_account', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountConnectedAccount', '10': 'connectingAccountConnectedAccount'},
  ],
};

/// Descriptor for `AccountConnectedAccountNotificationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountConnectedAccountNotificationRequestDescriptor = $convert.base64Decode('CipBY2NvdW50Q29ubmVjdGVkQWNjb3VudE5vdGlmaWNhdGlvblJlcXVlc3QSLwoHYWNjb3VudBgBIAEoCzIVLmVsaW50LmVudGl0eS5BY2NvdW50UgdhY2NvdW50EnYKJGNvbm5lY3RpbmdfYWNjb3VudF9jb25uZWN0ZWRfYWNjb3VudBgCIAEoCzIlLmVsaW50LmVudGl0eS5BY2NvdW50Q29ubmVjdGVkQWNjb3VudFIhY29ubmVjdGluZ0FjY291bnRDb25uZWN0ZWRBY2NvdW50');
@$core.Deprecated('Use updateAccountDeviceDetailsRequestDescriptor instead')
const UpdateAccountDeviceDetailsRequest$json = const {
  '1': 'UpdateAccountDeviceDetailsRequest',
  '2': const [
    const {'1': 'access_auth_details', '3': 1, '4': 1, '5': 11, '6': '.elint.services.product.identity.account.AccountServicesAccessAuthDetails', '10': 'accessAuthDetails'},
    const {'1': 'account_device_details', '3': 2, '4': 1, '5': 11, '6': '.elint.entity.AccountDeviceDetails', '10': 'accountDeviceDetails'},
  ],
};

/// Descriptor for `UpdateAccountDeviceDetailsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAccountDeviceDetailsRequestDescriptor = $convert.base64Decode('CiFVcGRhdGVBY2NvdW50RGV2aWNlRGV0YWlsc1JlcXVlc3QSeQoTYWNjZXNzX2F1dGhfZGV0YWlscxgBIAEoCzJJLmVsaW50LnNlcnZpY2VzLnByb2R1Y3QuaWRlbnRpdHkuYWNjb3VudC5BY2NvdW50U2VydmljZXNBY2Nlc3NBdXRoRGV0YWlsc1IRYWNjZXNzQXV0aERldGFpbHMSWAoWYWNjb3VudF9kZXZpY2VfZGV0YWlscxgCIAEoCzIiLmVsaW50LmVudGl0eS5BY2NvdW50RGV2aWNlRGV0YWlsc1IUYWNjb3VudERldmljZURldGFpbHM=');
