///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/associate.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AssociateLevel extends $pb.ProtobufEnum {
  static const AssociateLevel LEVEL_0 = AssociateLevel._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LEVEL_0');
  static const AssociateLevel LEVEL_1 = AssociateLevel._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LEVEL_1');
  static const AssociateLevel LEVEL_2 = AssociateLevel._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LEVEL_2');
  static const AssociateLevel LEVEL_3 = AssociateLevel._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LEVEL_3');
  static const AssociateLevel LEVEL_4 = AssociateLevel._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LEVEL_4');
  static const AssociateLevel LEVEL_5 = AssociateLevel._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LEVEL_5');

  static const $core.List<AssociateLevel> values = <AssociateLevel> [
    LEVEL_0,
    LEVEL_1,
    LEVEL_2,
    LEVEL_3,
    LEVEL_4,
    LEVEL_5,
  ];

  static final $core.Map<$core.int, AssociateLevel> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AssociateLevel? valueOf($core.int value) => _byValue[value];

  const AssociateLevel._($core.int v, $core.String n) : super(v, n);
}

class AssociateDepartment extends $pb.ProtobufEnum {
  static const AssociateDepartment ACCOUNTING = AssociateDepartment._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCOUNTING');
  static const AssociateDepartment HUMAN_RESOURCE = AssociateDepartment._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HUMAN_RESOURCE');
  static const AssociateDepartment INFORMATION_TECHNOLOGY = AssociateDepartment._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INFORMATION_TECHNOLOGY');
  static const AssociateDepartment LOGISTICS = AssociateDepartment._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOGISTICS');
  static const AssociateDepartment MARKETING = AssociateDepartment._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MARKETING');
  static const AssociateDepartment PRODUCTION = AssociateDepartment._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRODUCTION');
  static const AssociateDepartment SALES = AssociateDepartment._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SALES');
  static const AssociateDepartment WORKS = AssociateDepartment._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WORKS');

  static const $core.List<AssociateDepartment> values = <AssociateDepartment> [
    ACCOUNTING,
    HUMAN_RESOURCE,
    INFORMATION_TECHNOLOGY,
    LOGISTICS,
    MARKETING,
    PRODUCTION,
    SALES,
    WORKS,
  ];

  static final $core.Map<$core.int, AssociateDepartment> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AssociateDepartment? valueOf($core.int value) => _byValue[value];

  const AssociateDepartment._($core.int v, $core.String n) : super(v, n);
}

