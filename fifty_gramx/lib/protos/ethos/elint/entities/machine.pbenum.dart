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

  static const $core.List<MachineClassEnum> values = <MachineClassEnum> [
    GENERAL,
  ];

  static final $core.Map<$core.int, MachineClassEnum> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MachineClassEnum? valueOf($core.int value) => _byValue[value];

  const MachineClassEnum._($core.int v, $core.String n) : super(v, n);
}

class MachineNameEnum extends $pb.ProtobufEnum {
  static const MachineNameEnum X2 = MachineNameEnum._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'X2');

  static const $core.List<MachineNameEnum> values = <MachineNameEnum> [
    X2,
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

