///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/associate.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'account.pb.dart' as $19;
import 'organisation.pb.dart' as $56;
import '../../../google/protobuf/timestamp.pb.dart' as $52;

import 'associate.pbenum.dart';

export '../../../google/protobuf/timestamp.pb.dart';
export 'associate.pbenum.dart';

class Associate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Associate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'elint.entity'), createEmptyInstance: create)
    ..aOM<$19.Account>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associatedAccount', subBuilder: $19.Account.create)
    ..aOM<$56.Organisation>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associatedOrganisation', subBuilder: $56.Organisation.create)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associateId', $pb.PbFieldType.O3)
    ..e<AssociateLevel>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associateLevel', $pb.PbFieldType.OE, defaultOrMaker: AssociateLevel.LEVEL_0, valueOf: AssociateLevel.valueOf, enumValues: AssociateLevel.values)
    ..e<AssociateDepartment>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associateDepartment', $pb.PbFieldType.OE, defaultOrMaker: AssociateDepartment.ACCOUNTING, valueOf: AssociateDepartment.valueOf, enumValues: AssociateDepartment.values)
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associateDesignation')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reportsToAssociateId', $pb.PbFieldType.O3)
    ..aOM<$52.Timestamp>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'associatedAt', subBuilder: $52.Timestamp.create)
    ..hasRequiredFields = false
  ;

  Associate._() : super();
  factory Associate({
    $19.Account? associatedAccount,
    $56.Organisation? associatedOrganisation,
    $core.int? associateId,
    AssociateLevel? associateLevel,
    AssociateDepartment? associateDepartment,
    $core.String? associateDesignation,
    $core.int? reportsToAssociateId,
    $52.Timestamp? associatedAt,
  }) {
    final _result = create();
    if (associatedAccount != null) {
      _result.associatedAccount = associatedAccount;
    }
    if (associatedOrganisation != null) {
      _result.associatedOrganisation = associatedOrganisation;
    }
    if (associateId != null) {
      _result.associateId = associateId;
    }
    if (associateLevel != null) {
      _result.associateLevel = associateLevel;
    }
    if (associateDepartment != null) {
      _result.associateDepartment = associateDepartment;
    }
    if (associateDesignation != null) {
      _result.associateDesignation = associateDesignation;
    }
    if (reportsToAssociateId != null) {
      _result.reportsToAssociateId = reportsToAssociateId;
    }
    if (associatedAt != null) {
      _result.associatedAt = associatedAt;
    }
    return _result;
  }
  factory Associate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Associate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Associate clone() => Associate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Associate copyWith(void Function(Associate) updates) => super.copyWith((message) => updates(message as Associate)) as Associate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Associate create() => Associate._();
  Associate createEmptyInstance() => create();
  static $pb.PbList<Associate> createRepeated() => $pb.PbList<Associate>();
  @$core.pragma('dart2js:noInline')
  static Associate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Associate>(create);
  static Associate? _defaultInstance;

  @$pb.TagNumber(1)
  $19.Account get associatedAccount => $_getN(0);
  @$pb.TagNumber(1)
  set associatedAccount($19.Account v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssociatedAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssociatedAccount() => clearField(1);
  @$pb.TagNumber(1)
  $19.Account ensureAssociatedAccount() => $_ensure(0);

  @$pb.TagNumber(2)
  $56.Organisation get associatedOrganisation => $_getN(1);
  @$pb.TagNumber(2)
  set associatedOrganisation($56.Organisation v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAssociatedOrganisation() => $_has(1);
  @$pb.TagNumber(2)
  void clearAssociatedOrganisation() => clearField(2);
  @$pb.TagNumber(2)
  $56.Organisation ensureAssociatedOrganisation() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get associateId => $_getIZ(2);
  @$pb.TagNumber(3)
  set associateId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAssociateId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAssociateId() => clearField(3);

  @$pb.TagNumber(4)
  AssociateLevel get associateLevel => $_getN(3);
  @$pb.TagNumber(4)
  set associateLevel(AssociateLevel v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAssociateLevel() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssociateLevel() => clearField(4);

  @$pb.TagNumber(5)
  AssociateDepartment get associateDepartment => $_getN(4);
  @$pb.TagNumber(5)
  set associateDepartment(AssociateDepartment v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAssociateDepartment() => $_has(4);
  @$pb.TagNumber(5)
  void clearAssociateDepartment() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get associateDesignation => $_getSZ(5);
  @$pb.TagNumber(6)
  set associateDesignation($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAssociateDesignation() => $_has(5);
  @$pb.TagNumber(6)
  void clearAssociateDesignation() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get reportsToAssociateId => $_getIZ(6);
  @$pb.TagNumber(7)
  set reportsToAssociateId($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasReportsToAssociateId() => $_has(6);
  @$pb.TagNumber(7)
  void clearReportsToAssociateId() => clearField(7);

  @$pb.TagNumber(10)
  $52.Timestamp get associatedAt => $_getN(7);
  @$pb.TagNumber(10)
  set associatedAt($52.Timestamp v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasAssociatedAt() => $_has(7);
  @$pb.TagNumber(10)
  void clearAssociatedAt() => clearField(10);
  @$pb.TagNumber(10)
  $52.Timestamp ensureAssociatedAt() => $_ensure(7);
}

