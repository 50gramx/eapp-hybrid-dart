///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/identity/account/connect_account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ConnectedAssistantBelongsTo extends $pb.ProtobufEnum {
  static const ConnectedAssistantBelongsTo ACCOUNT = ConnectedAssistantBelongsTo._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCOUNT');
  static const ConnectedAssistantBelongsTo ORGANIZATION = ConnectedAssistantBelongsTo._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ORGANIZATION');

  static const $core.List<ConnectedAssistantBelongsTo> values = <ConnectedAssistantBelongsTo> [
    ACCOUNT,
    ORGANIZATION,
  ];

  static final $core.Map<$core.int, ConnectedAssistantBelongsTo> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConnectedAssistantBelongsTo? valueOf($core.int value) => _byValue[value];

  const ConnectedAssistantBelongsTo._($core.int v, $core.String n) : super(v, n);
}

