///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file/create_space_knowledge_domain_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../space_knowledge_domain/access_space_knowledge_domain.pb.dart' as $27;
import '../../../../entities/space_knowledge_domain_file.pb.dart' as $37;
import 'access_space_knowledge_domain_file.pb.dart' as $33;

import '../../../../entities/space_knowledge_domain_file.pbenum.dart' as $37;

class UploadSpaceKnowledgeDomainFileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadSpaceKnowledgeDomainFileRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.file'), createEmptyInstance: create)
    ..aOM<$27.SpaceKnowledgeDomainServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainServicesAccessAuthDetails', subBuilder: $27.SpaceKnowledgeDomainServicesAccessAuthDetails.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileName')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileSize', $pb.PbFieldType.O3)
    ..e<$37.ExtentionType>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileExtensionType', $pb.PbFieldType.OE, defaultOrMaker: $37.ExtentionType.PNG, valueOf: $37.ExtentionType.valueOf, enumValues: $37.ExtentionType.values)
    ..pc<$37.FileTag>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileTags', $pb.PbFieldType.PM, subBuilder: $37.FileTag.create)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileBuffer', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UploadSpaceKnowledgeDomainFileRequest._() : super();
  factory UploadSpaceKnowledgeDomainFileRequest({
    $27.SpaceKnowledgeDomainServicesAccessAuthDetails? spaceKnowledgeDomainServicesAccessAuthDetails,
    $core.String? spaceKnowledgeDomainFileName,
    $core.int? spaceKnowledgeDomainFileSize,
    $37.ExtentionType? spaceKnowledgeDomainFileExtensionType,
    $core.Iterable<$37.FileTag>? spaceKnowledgeDomainFileTags,
    $core.List<$core.int>? fileBuffer,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainServicesAccessAuthDetails != null) {
      _result.spaceKnowledgeDomainServicesAccessAuthDetails = spaceKnowledgeDomainServicesAccessAuthDetails;
    }
    if (spaceKnowledgeDomainFileName != null) {
      _result.spaceKnowledgeDomainFileName = spaceKnowledgeDomainFileName;
    }
    if (spaceKnowledgeDomainFileSize != null) {
      _result.spaceKnowledgeDomainFileSize = spaceKnowledgeDomainFileSize;
    }
    if (spaceKnowledgeDomainFileExtensionType != null) {
      _result.spaceKnowledgeDomainFileExtensionType = spaceKnowledgeDomainFileExtensionType;
    }
    if (spaceKnowledgeDomainFileTags != null) {
      _result.spaceKnowledgeDomainFileTags.addAll(spaceKnowledgeDomainFileTags);
    }
    if (fileBuffer != null) {
      _result.fileBuffer = fileBuffer;
    }
    return _result;
  }
  factory UploadSpaceKnowledgeDomainFileRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadSpaceKnowledgeDomainFileRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadSpaceKnowledgeDomainFileRequest clone() => UploadSpaceKnowledgeDomainFileRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadSpaceKnowledgeDomainFileRequest copyWith(void Function(UploadSpaceKnowledgeDomainFileRequest) updates) => super.copyWith((message) => updates(message as UploadSpaceKnowledgeDomainFileRequest)) as UploadSpaceKnowledgeDomainFileRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadSpaceKnowledgeDomainFileRequest create() => UploadSpaceKnowledgeDomainFileRequest._();
  UploadSpaceKnowledgeDomainFileRequest createEmptyInstance() => create();
  static $pb.PbList<UploadSpaceKnowledgeDomainFileRequest> createRepeated() => $pb.PbList<UploadSpaceKnowledgeDomainFileRequest>();
  @$core.pragma('dart2js:noInline')
  static UploadSpaceKnowledgeDomainFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadSpaceKnowledgeDomainFileRequest>(create);
  static UploadSpaceKnowledgeDomainFileRequest? _defaultInstance;

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
  $core.String get spaceKnowledgeDomainFileName => $_getSZ(1);
  @$pb.TagNumber(2)
  set spaceKnowledgeDomainFileName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpaceKnowledgeDomainFileName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceKnowledgeDomainFileName() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get spaceKnowledgeDomainFileSize => $_getIZ(2);
  @$pb.TagNumber(3)
  set spaceKnowledgeDomainFileSize($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceKnowledgeDomainFileSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceKnowledgeDomainFileSize() => clearField(3);

  @$pb.TagNumber(4)
  $37.ExtentionType get spaceKnowledgeDomainFileExtensionType => $_getN(3);
  @$pb.TagNumber(4)
  set spaceKnowledgeDomainFileExtensionType($37.ExtentionType v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpaceKnowledgeDomainFileExtensionType() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpaceKnowledgeDomainFileExtensionType() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$37.FileTag> get spaceKnowledgeDomainFileTags => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get fileBuffer => $_getN(5);
  @$pb.TagNumber(6)
  set fileBuffer($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFileBuffer() => $_has(5);
  @$pb.TagNumber(6)
  void clearFileBuffer() => clearField(6);
}

class UploadSpaceKnowledgeDomainFileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UploadSpaceKnowledgeDomainFileResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.file'), createEmptyInstance: create)
    ..aOM<$33.SpaceKnowledgeDomainFileServicesAccessAuthDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileServiceAccessAuthDetails', subBuilder: $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'length', $pb.PbFieldType.O3)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileUploadDone')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spaceKnowledgeDomainFileUploadMessage')
    ..hasRequiredFields = false
  ;

  UploadSpaceKnowledgeDomainFileResponse._() : super();
  factory UploadSpaceKnowledgeDomainFileResponse({
    $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails? spaceKnowledgeDomainFileServiceAccessAuthDetails,
    $core.int? length,
    $core.bool? spaceKnowledgeDomainFileUploadDone,
    $core.String? spaceKnowledgeDomainFileUploadMessage,
  }) {
    final _result = create();
    if (spaceKnowledgeDomainFileServiceAccessAuthDetails != null) {
      _result.spaceKnowledgeDomainFileServiceAccessAuthDetails = spaceKnowledgeDomainFileServiceAccessAuthDetails;
    }
    if (length != null) {
      _result.length = length;
    }
    if (spaceKnowledgeDomainFileUploadDone != null) {
      _result.spaceKnowledgeDomainFileUploadDone = spaceKnowledgeDomainFileUploadDone;
    }
    if (spaceKnowledgeDomainFileUploadMessage != null) {
      _result.spaceKnowledgeDomainFileUploadMessage = spaceKnowledgeDomainFileUploadMessage;
    }
    return _result;
  }
  factory UploadSpaceKnowledgeDomainFileResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadSpaceKnowledgeDomainFileResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadSpaceKnowledgeDomainFileResponse clone() => UploadSpaceKnowledgeDomainFileResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadSpaceKnowledgeDomainFileResponse copyWith(void Function(UploadSpaceKnowledgeDomainFileResponse) updates) => super.copyWith((message) => updates(message as UploadSpaceKnowledgeDomainFileResponse)) as UploadSpaceKnowledgeDomainFileResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UploadSpaceKnowledgeDomainFileResponse create() => UploadSpaceKnowledgeDomainFileResponse._();
  UploadSpaceKnowledgeDomainFileResponse createEmptyInstance() => create();
  static $pb.PbList<UploadSpaceKnowledgeDomainFileResponse> createRepeated() => $pb.PbList<UploadSpaceKnowledgeDomainFileResponse>();
  @$core.pragma('dart2js:noInline')
  static UploadSpaceKnowledgeDomainFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadSpaceKnowledgeDomainFileResponse>(create);
  static UploadSpaceKnowledgeDomainFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails get spaceKnowledgeDomainFileServiceAccessAuthDetails => $_getN(0);
  @$pb.TagNumber(1)
  set spaceKnowledgeDomainFileServiceAccessAuthDetails($33.SpaceKnowledgeDomainFileServicesAccessAuthDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpaceKnowledgeDomainFileServiceAccessAuthDetails() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceKnowledgeDomainFileServiceAccessAuthDetails() => clearField(1);
  @$pb.TagNumber(1)
  $33.SpaceKnowledgeDomainFileServicesAccessAuthDetails ensureSpaceKnowledgeDomainFileServiceAccessAuthDetails() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get length => $_getIZ(1);
  @$pb.TagNumber(2)
  set length($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLength() => $_has(1);
  @$pb.TagNumber(2)
  void clearLength() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get spaceKnowledgeDomainFileUploadDone => $_getBF(2);
  @$pb.TagNumber(3)
  set spaceKnowledgeDomainFileUploadDone($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpaceKnowledgeDomainFileUploadDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceKnowledgeDomainFileUploadDone() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get spaceKnowledgeDomainFileUploadMessage => $_getSZ(3);
  @$pb.TagNumber(4)
  set spaceKnowledgeDomainFileUploadMessage($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpaceKnowledgeDomainFileUploadMessage() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpaceKnowledgeDomainFileUploadMessage() => clearField(4);
}

