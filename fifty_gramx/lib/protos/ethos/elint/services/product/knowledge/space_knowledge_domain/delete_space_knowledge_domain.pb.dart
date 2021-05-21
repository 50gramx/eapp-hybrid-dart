///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain/delete_space_knowledge_domain.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DeleteSpaceKnowledgeDomainRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteSpaceKnowledgeDomainRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.domain'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteSpaceKnowledgeDomainRequest._() : super();
  factory DeleteSpaceKnowledgeDomainRequest() => create();
  factory DeleteSpaceKnowledgeDomainRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSpaceKnowledgeDomainRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSpaceKnowledgeDomainRequest clone() => DeleteSpaceKnowledgeDomainRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSpaceKnowledgeDomainRequest copyWith(void Function(DeleteSpaceKnowledgeDomainRequest) updates) => super.copyWith((message) => updates(message as DeleteSpaceKnowledgeDomainRequest)) as DeleteSpaceKnowledgeDomainRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteSpaceKnowledgeDomainRequest create() => DeleteSpaceKnowledgeDomainRequest._();
  DeleteSpaceKnowledgeDomainRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSpaceKnowledgeDomainRequest> createRepeated() => $pb.PbList<DeleteSpaceKnowledgeDomainRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSpaceKnowledgeDomainRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSpaceKnowledgeDomainRequest>(create);
  static DeleteSpaceKnowledgeDomainRequest? _defaultInstance;
}

class DeleteSpaceKnowledgeDomainResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteSpaceKnowledgeDomainResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.domain'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteSpaceKnowledgeDomainResponse._() : super();
  factory DeleteSpaceKnowledgeDomainResponse() => create();
  factory DeleteSpaceKnowledgeDomainResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSpaceKnowledgeDomainResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSpaceKnowledgeDomainResponse clone() => DeleteSpaceKnowledgeDomainResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSpaceKnowledgeDomainResponse copyWith(void Function(DeleteSpaceKnowledgeDomainResponse) updates) => super.copyWith((message) => updates(message as DeleteSpaceKnowledgeDomainResponse)) as DeleteSpaceKnowledgeDomainResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteSpaceKnowledgeDomainResponse create() => DeleteSpaceKnowledgeDomainResponse._();
  DeleteSpaceKnowledgeDomainResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSpaceKnowledgeDomainResponse> createRepeated() => $pb.PbList<DeleteSpaceKnowledgeDomainResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSpaceKnowledgeDomainResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSpaceKnowledgeDomainResponse>(create);
  static DeleteSpaceKnowledgeDomainResponse? _defaultInstance;
}

