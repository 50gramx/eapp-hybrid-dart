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
//  source: google/api/httpbody.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use httpBodyDescriptor instead')
const HttpBody$json = const {
  '1': 'HttpBody',
  '2': const [
    const {'1': 'content_type', '3': 1, '4': 1, '5': 9, '10': 'contentType'},
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
    const {'1': 'extensions', '3': 3, '4': 3, '5': 11, '6': '.google.protobuf.Any', '10': 'extensions'},
  ],
};

/// Descriptor for `HttpBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpBodyDescriptor = $convert.base64Decode('CghIdHRwQm9keRIhCgxjb250ZW50X3R5cGUYASABKAlSC2NvbnRlbnRUeXBlEhIKBGRhdGEYAiABKAxSBGRhdGESNAoKZXh0ZW5zaW9ucxgDIAMoCzIULmdvb2dsZS5wcm90b2J1Zi5BbnlSCmV4dGVuc2lvbnM=');
