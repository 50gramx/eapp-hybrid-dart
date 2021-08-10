///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/galaxy.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class OpenGalaxyTierEnum extends $pb.ProtobufEnum {
  static const OpenGalaxyTierEnum FREE_TIER = OpenGalaxyTierEnum._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FREE_TIER');
  static const OpenGalaxyTierEnum BASIC_TIER = OpenGalaxyTierEnum._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BASIC_TIER');
  static const OpenGalaxyTierEnum STANDARD_TIER = OpenGalaxyTierEnum._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STANDARD_TIER');
  static const OpenGalaxyTierEnum PROFESSIONAL_TIER = OpenGalaxyTierEnum._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PROFESSIONAL_TIER');

  static const $core.List<OpenGalaxyTierEnum> values = <OpenGalaxyTierEnum> [
    FREE_TIER,
    BASIC_TIER,
    STANDARD_TIER,
    PROFESSIONAL_TIER,
  ];

  static final $core.Map<$core.int, OpenGalaxyTierEnum> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OpenGalaxyTierEnum? valueOf($core.int value) => _byValue[value];

  const OpenGalaxyTierEnum._($core.int v, $core.String n) : super(v, n);
}

