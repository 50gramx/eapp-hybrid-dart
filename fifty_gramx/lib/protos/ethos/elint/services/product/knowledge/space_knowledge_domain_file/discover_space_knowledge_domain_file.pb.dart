///
//  Generated code. Do not modify.
//  source: ethos/elint/services/product/knowledge/space_knowledge_domain_file/discover_space_knowledge_domain_file.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../entities/account.pb.dart' as $21;

class GetFileDetailsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetFileDetailsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.file'), createEmptyInstance: create)
    ..aOM<$21.AccountSpaceKnowledgeDomainFileAccessMeta>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountKnowledgeDomainFileAccessMeta', subBuilder: $21.AccountSpaceKnowledgeDomainFileAccessMeta.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileId')
    ..hasRequiredFields = false
  ;

  GetFileDetailsRequest._() : super();
  factory GetFileDetailsRequest({
    $21.AccountSpaceKnowledgeDomainFileAccessMeta? accountKnowledgeDomainFileAccessMeta,
    $core.String? fileId,
  }) {
    final _result = create();
    if (accountKnowledgeDomainFileAccessMeta != null) {
      _result.accountKnowledgeDomainFileAccessMeta = accountKnowledgeDomainFileAccessMeta;
    }
    if (fileId != null) {
      _result.fileId = fileId;
    }
    return _result;
  }
  factory GetFileDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetFileDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetFileDetailsRequest clone() => GetFileDetailsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetFileDetailsRequest copyWith(void Function(GetFileDetailsRequest) updates) => super.copyWith((message) => updates(message as GetFileDetailsRequest)) as GetFileDetailsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetFileDetailsRequest create() => GetFileDetailsRequest._();
  GetFileDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<GetFileDetailsRequest> createRepeated() => $pb.PbList<GetFileDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFileDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFileDetailsRequest>(create);
  static GetFileDetailsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $21.AccountSpaceKnowledgeDomainFileAccessMeta get accountKnowledgeDomainFileAccessMeta => $_getN(0);
  @$pb.TagNumber(1)
  set accountKnowledgeDomainFileAccessMeta($21.AccountSpaceKnowledgeDomainFileAccessMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountKnowledgeDomainFileAccessMeta() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountKnowledgeDomainFileAccessMeta() => clearField(1);
  @$pb.TagNumber(1)
  $21.AccountSpaceKnowledgeDomainFileAccessMeta ensureAccountKnowledgeDomainFileAccessMeta() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get fileId => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileId() => clearField(2);
}

class FileExistsByIDRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileExistsByIDRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.file'), createEmptyInstance: create)
    ..aOM<$21.AccountSpaceKnowledgeDomainFileAccessMeta>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountKnowledgeDomainFileAccessMeta', subBuilder: $21.AccountSpaceKnowledgeDomainFileAccessMeta.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileId')
    ..hasRequiredFields = false
  ;

  FileExistsByIDRequest._() : super();
  factory FileExistsByIDRequest({
    $21.AccountSpaceKnowledgeDomainFileAccessMeta? accountKnowledgeDomainFileAccessMeta,
    $core.String? fileId,
  }) {
    final _result = create();
    if (accountKnowledgeDomainFileAccessMeta != null) {
      _result.accountKnowledgeDomainFileAccessMeta = accountKnowledgeDomainFileAccessMeta;
    }
    if (fileId != null) {
      _result.fileId = fileId;
    }
    return _result;
  }
  factory FileExistsByIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileExistsByIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileExistsByIDRequest clone() => FileExistsByIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileExistsByIDRequest copyWith(void Function(FileExistsByIDRequest) updates) => super.copyWith((message) => updates(message as FileExistsByIDRequest)) as FileExistsByIDRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileExistsByIDRequest create() => FileExistsByIDRequest._();
  FileExistsByIDRequest createEmptyInstance() => create();
  static $pb.PbList<FileExistsByIDRequest> createRepeated() => $pb.PbList<FileExistsByIDRequest>();
  @$core.pragma('dart2js:noInline')
  static FileExistsByIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileExistsByIDRequest>(create);
  static FileExistsByIDRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $21.AccountSpaceKnowledgeDomainFileAccessMeta get accountKnowledgeDomainFileAccessMeta => $_getN(0);
  @$pb.TagNumber(1)
  set accountKnowledgeDomainFileAccessMeta($21.AccountSpaceKnowledgeDomainFileAccessMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountKnowledgeDomainFileAccessMeta() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountKnowledgeDomainFileAccessMeta() => clearField(1);
  @$pb.TagNumber(1)
  $21.AccountSpaceKnowledgeDomainFileAccessMeta ensureAccountKnowledgeDomainFileAccessMeta() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get fileId => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFileId() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileId() => clearField(2);
}

class FileExistsByIDResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileExistsByIDResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.services.product.knowledge.file'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fileExists')
    ..hasRequiredFields = false
  ;

  FileExistsByIDResponse._() : super();
  factory FileExistsByIDResponse({
    $core.bool? fileExists,
  }) {
    final _result = create();
    if (fileExists != null) {
      _result.fileExists = fileExists;
    }
    return _result;
  }
  factory FileExistsByIDResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileExistsByIDResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileExistsByIDResponse clone() => FileExistsByIDResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileExistsByIDResponse copyWith(void Function(FileExistsByIDResponse) updates) => super.copyWith((message) => updates(message as FileExistsByIDResponse)) as FileExistsByIDResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileExistsByIDResponse create() => FileExistsByIDResponse._();
  FileExistsByIDResponse createEmptyInstance() => create();
  static $pb.PbList<FileExistsByIDResponse> createRepeated() => $pb.PbList<FileExistsByIDResponse>();
  @$core.pragma('dart2js:noInline')
  static FileExistsByIDResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileExistsByIDResponse>(create);
  static FileExistsByIDResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get fileExists => $_getBF(0);
  @$pb.TagNumber(1)
  set fileExists($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFileExists() => $_has(0);
  @$pb.TagNumber(1)
  void clearFileExists() => clearField(1);
}

