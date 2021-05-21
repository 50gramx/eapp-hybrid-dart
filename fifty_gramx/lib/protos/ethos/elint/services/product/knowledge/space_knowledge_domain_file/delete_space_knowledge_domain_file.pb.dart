///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file/delete_space_knowledge_domain_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../space_knowledge_domain/access_space_knowledge_domain.pb.dart' as $27;
import '../../../../entities/space_knowledge_domain_file.pb.dart' as $37;

class DeleteSpaceKnowledgeDomainFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteSpaceKnowledgeDomainFileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.file'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainServicesAccessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOM<$37.SpaceKnowledgeDomainFile>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFile', subBuilder: $37.SpaceKnowledgeDomainFile.create)
    ..hasRequiredFields = false
  ;

  DeleteSpaceKnowledgeDomainFileRequest._() : super();
  factory DeleteSpaceKnowledgeDomainFileRequest({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? spaceKnowledgeDomainServicesAccessAuthDetails,
    $37.SpaceKnowledgeDomainFile? spaceKnowledgeDomainFile,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainServicesAccessAuthDetails != null) {
      _result.spaceKnowledgeDomainServicesAccessAuthDetails = spaceKnowledgeDomainServicesAccessAuthDetails;
    }
    if (spaceKnowledgeDomainFile != null) {
      _result.spaceKnowledgeDomainFile = spaceKnowledgeDomainFile;
    }
    return _result;
  }
  factory DeleteSpaceKnowledgeDomainFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteSpaceKnowledgeDomainFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteSpaceKnowledgeDomainFileRequest clone() => DeleteSpaceKnowledgeDomainFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteSpaceKnowledgeDomainFileRequest copyWith(void Function(DeleteSpaceKnowledgeDomainFileRequest) updates) => super.copyWith((message) => updates(message as DeleteSpaceKnowledgeDomainFileRequest)) as DeleteSpaceKnowledgeDomainFileRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteSpaceKnowledgeDomainFileRequest create() => DeleteSpaceKnowledgeDomainFileRequest._();
  DeleteSpaceKnowledgeDomainFileRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSpaceKnowledgeDomainFileRequest> createRepeated() => $pb.PbList<DeleteSpaceKnowledgeDomainFileRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSpaceKnowledgeDomainFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSpaceKnowledgeDomainFileRequest>(create);
  static DeleteSpaceKnowledgeDomainFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $27.SpaceKnowledgeDomainServicesAccessAuthDetails get spaceKnowledgeDomainServicesAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainServicesAccessAuthDetails($27.SpaceKnowledgeDomainServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainServicesAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainServicesAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $27.SpaceKnowledgeDomainServicesAccessAuthDetails ensureSpaceKnowledgeDomainServicesAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $37.SpaceKnowledgeDomainFile get spaceKnowledgeDomainFile => $_getN(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFile($37.SpaceKnowledgeDomainFile v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFile() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFile() => clearField(2);
  @$pb.TagNumber(2)
  $37.SpaceKnowledgeDomainFile ensureSpaceKnowledgeDomainFile() => $_ensure(1);
}

