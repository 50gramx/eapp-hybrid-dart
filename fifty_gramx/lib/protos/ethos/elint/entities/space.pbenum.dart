///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/space.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SpaceKind extends $pb.ProtobufEnum {
  static const SpaceKind KNOWLEDGE = SpaceKind._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'KNOWLEDGE');
  static const SpaceKind PRODUCT = SpaceKind._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRODUCT');
  static const SpaceKind SERVICE = SpaceKind._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SERVICE');
  static const SpaceKind THING = SpaceKind._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'THING');

  static const $core.List<SpaceKind> values = <SpaceKind> [
    KNOWLEDGE,
    PRODUCT,
    SERVICE,
    THING,
  ];

  static final $core.Map<$core.int, SpaceKind> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SpaceKind? valueOf($core.int value) => _byValue[value];

  const SpaceKind._($core.int v, $core.String n) : super(v, n);
}

class SpaceAccessibilityType extends $pb.ProtobufEnum {
  static const SpaceAccessibilityType CLOSED = SpaceAccessibilityType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLOSED');
  static const SpaceAccessibilityType OPEN = SpaceAccessibilityType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OPEN');

  static const $core.List<SpaceAccessibilityType> values = <SpaceAccessibilityType> [
    CLOSED,
    OPEN,
  ];

  static final $core.Map<$core.int, SpaceAccessibilityType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SpaceAccessibilityType? valueOf($core.int value) => _byValue[value];

  const SpaceAccessibilityType._($core.int v, $core.String n) : super(v, n);
}

class SpaceIsolationType extends $pb.ProtobufEnum {
  static const SpaceIsolationType NOT_ISOLATED = SpaceIsolationType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NOT_ISOLATED');
  static const SpaceIsolationType ISOLATED = SpaceIsolationType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ISOLATED');

  static const $core.List<SpaceIsolationType> values = <SpaceIsolationType> [
    NOT_ISOLATED,
    ISOLATED,
  ];

  static final $core.Map<$core.int, SpaceIsolationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SpaceIsolationType? valueOf($core.int value) => _byValue[value];

  const SpaceIsolationType._($core.int v, $core.String n) : super(v, n);
}

class SpaceEntityType extends $pb.ProtobufEnum {
  static const SpaceEntityType ACCOUNT = SpaceEntityType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCOUNT');
  static const SpaceEntityType ORGANIZATION = SpaceEntityType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ORGANIZATION');

  static const $core.List<SpaceEntityType> values = <SpaceEntityType> [
    ACCOUNT,
    ORGANIZATION,
  ];

  static final $core.Map<$core.int, SpaceEntityType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SpaceEntityType? valueOf($core.int value) => _byValue[value];

  const SpaceEntityType._($core.int v, $core.String n) : super(v, n);
}

