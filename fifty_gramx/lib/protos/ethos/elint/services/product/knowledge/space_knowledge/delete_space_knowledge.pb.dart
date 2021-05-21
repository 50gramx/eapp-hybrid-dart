///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge/delete_space_knowledge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DeleteSpaceKnowledgeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteSpaceKnowledgeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.space'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteSpaceKnowledgeRequest._() : super();
  factory DeleteSpaceKnowledgeRequest() => create();
  factory DeleteSpaceKnowledgeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSpaceKnowledgeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSpaceKnowledgeRequest clone() => DeleteSpaceKnowledgeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSpaceKnowledgeRequest copyWith(void Function(DeleteSpaceKnowledgeRequest) updates) => super.copyWith((message) => updates(message as DeleteSpaceKnowledgeRequest)) as DeleteSpaceKnowledgeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteSpaceKnowledgeRequest create() => DeleteSpaceKnowledgeRequest._();
  DeleteSpaceKnowledgeRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSpaceKnowledgeRequest> createRepeated() => $pb.PbList<DeleteSpaceKnowledgeRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSpaceKnowledgeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSpaceKnowledgeRequest>(create);
  static DeleteSpaceKnowledgeRequest? _defaultInstance;
}

class DeleteSpaceKnowledgeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteSpaceKnowledgeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.space'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteSpaceKnowledgeResponse._() : super();
  factory DeleteSpaceKnowledgeResponse() => create();
  factory DeleteSpaceKnowledgeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSpaceKnowledgeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSpaceKnowledgeResponse clone() => DeleteSpaceKnowledgeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSpaceKnowledgeResponse copyWith(void Function(DeleteSpaceKnowledgeResponse) updates) => super.copyWith((message) => updates(message as DeleteSpaceKnowledgeResponse)) as DeleteSpaceKnowledgeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteSpaceKnowledgeResponse create() => DeleteSpaceKnowledgeResponse._();
  DeleteSpaceKnowledgeResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSpaceKnowledgeResponse> createRepeated() => $pb.PbList<DeleteSpaceKnowledgeResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSpaceKnowledgeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSpaceKnowledgeResponse>(create);
  static DeleteSpaceKnowledgeResponse? _defaultInstance;
}

