///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/space_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SpaceKnowledgeAction extends $pb.ProtobufEnum {
  static const SpaceKnowledgeAction ASK_QUESTION = SpaceKnowledgeAction._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ASK_QUESTION');

  static const $core.List<SpaceKnowledgeAction> values = <SpaceKnowledgeAction> [
    ASK_QUESTION,
  ];

  static final $core.Map<$core.int, SpaceKnowledgeAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SpaceKnowledgeAction? valueOf($core.int value) => _byValue[value];

  const SpaceKnowledgeAction._($core.int v, $core.String n) : super(v, n);
}

