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
//  source: ethos/elint/entities/machine.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class MachineClassEnum extends $pb.ProtobufEnum {
  static const MachineClassEnum GENERAL = MachineClassEnum._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GENERAL');
  static const MachineClassEnum ACCELERATED = MachineClassEnum._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCELERATED');

  static const $core.List<MachineClassEnum> values = <MachineClassEnum> [
    GENERAL,
    ACCELERATED,
  ];

  static final $core.Map<$core.int, MachineClassEnum> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MachineClassEnum? valueOf($core.int value) => _byValue[value];

  const MachineClassEnum._($core.int v, $core.String n) : super(v, n);
}

class MachineNameEnum extends $pb.ProtobufEnum {
  static const MachineNameEnum X2 = MachineNameEnum._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'X2');
  static const MachineNameEnum M2N = MachineNameEnum._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'M2N');
  static const MachineNameEnum M2 = MachineNameEnum._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'M2');

  static const $core.List<MachineNameEnum> values = <MachineNameEnum> [
    X2,
    M2N,
    M2,
  ];

  static final $core.Map<$core.int, MachineNameEnum> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MachineNameEnum? valueOf($core.int value) => _byValue[value];

  const MachineNameEnum._($core.int v, $core.String n) : super(v, n);
}

class MachineTypeEnum extends $pb.ProtobufEnum {
  static const MachineTypeEnum NANO = MachineTypeEnum._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NANO');
  static const MachineTypeEnum MICRO = MachineTypeEnum._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MICRO');
  static const MachineTypeEnum SMALL = MachineTypeEnum._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SMALL');
  static const MachineTypeEnum MEDIUM = MachineTypeEnum._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MEDIUM');
  static const MachineTypeEnum LARGE = MachineTypeEnum._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LARGE');
  static const MachineTypeEnum XLARGE = MachineTypeEnum._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'XLARGE');
  static const MachineTypeEnum XXLARGE = MachineTypeEnum._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'XXLARGE');

  static const $core.List<MachineTypeEnum> values = <MachineTypeEnum> [
    NANO,
    MICRO,
    SMALL,
    MEDIUM,
    LARGE,
    XLARGE,
    XXLARGE,
  ];

  static final $core.Map<$core.int, MachineTypeEnum> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MachineTypeEnum? valueOf($core.int value) => _byValue[value];

  const MachineTypeEnum._($core.int v, $core.String n) : super(v, n);
}

