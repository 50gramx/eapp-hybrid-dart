///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/space_knowledge_domain_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ExtentionType extends $pb.ProtobufEnum {
  static const ExtentionType PNG = ExtentionType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PNG');
  static const ExtentionType JPEG = ExtentionType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'JPEG');
  static const ExtentionType PDF = ExtentionType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PDF');
  static const ExtentionType TEXT = ExtentionType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEXT');

  static const $core.List<ExtentionType> values = <ExtentionType> [
    PNG,
    JPEG,
    PDF,
    TEXT,
  ];

  static final $core.Map<$core.int, ExtentionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ExtentionType? valueOf($core.int value) => _byValue[value];

  const ExtentionType._($core.int v, $core.String n) : super(v, n);
}

