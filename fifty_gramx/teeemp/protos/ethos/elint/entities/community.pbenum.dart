///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/community.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class CommunityDomainCode extends $pb.ProtobufEnum {
  static const CommunityDomainCode DOMAIN_CODE_UNDEFINED = CommunityDomainCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOMAIN_CODE_UNDEFINED');
  static const CommunityDomainCode DOMAIN_CODE_LEGAL = CommunityDomainCode._(51, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOMAIN_CODE_LEGAL');
  static const CommunityDomainCode DOMAIN_CODE_AUTOMATION = CommunityDomainCode._(70, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOMAIN_CODE_AUTOMATION');
  static const CommunityDomainCode DOMAIN_CODE_EDUCATION = CommunityDomainCode._(88, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOMAIN_CODE_EDUCATION');
  static const CommunityDomainCode DOMAIN_CODE_MEDICAL = CommunityDomainCode._(80, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DOMAIN_CODE_MEDICAL');

  static const $core.List<CommunityDomainCode> values = <CommunityDomainCode> [
    DOMAIN_CODE_UNDEFINED,
    DOMAIN_CODE_LEGAL,
    DOMAIN_CODE_AUTOMATION,
    DOMAIN_CODE_EDUCATION,
    DOMAIN_CODE_MEDICAL,
  ];

  static final $core.Map<$core.int, CommunityDomainCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CommunityDomainCode? valueOf($core.int value) => _byValue[value];

  const CommunityDomainCode._($core.int v, $core.String n) : super(v, n);
}

