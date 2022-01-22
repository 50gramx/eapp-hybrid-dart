///
//  Generated code. Do not modify.
//  source: ethos/elint/entities/account.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AccountGender extends $pb.ProtobufEnum {
  static const AccountGender UNKNOWN = AccountGender._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const AccountGender FEMALE = AccountGender._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FEMALE');
  static const AccountGender MALE = AccountGender._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MALE');

  static const $core.List<AccountGender> values = <AccountGender> [
    UNKNOWN,
    FEMALE,
    MALE,
  ];

  static final $core.Map<$core.int, AccountGender> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountGender? valueOf($core.int value) => _byValue[value];

  const AccountGender._($core.int v, $core.String n) : super(v, n);
}

class AccountDeviceOS extends $pb.ProtobufEnum {
  static const AccountDeviceOS IOS = AccountDeviceOS._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IOS');
  static const AccountDeviceOS ANDROID = AccountDeviceOS._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANDROID');
  static const AccountDeviceOS MACOS = AccountDeviceOS._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MACOS');
  static const AccountDeviceOS WINDOWS = AccountDeviceOS._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WINDOWS');
  static const AccountDeviceOS LINUX = AccountDeviceOS._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LINUX');

  static const $core.List<AccountDeviceOS> values = <AccountDeviceOS> [
    IOS,
    ANDROID,
    MACOS,
    WINDOWS,
    LINUX,
  ];

  static final $core.Map<$core.int, AccountDeviceOS> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountDeviceOS? valueOf($core.int value) => _byValue[value];

  const AccountDeviceOS._($core.int v, $core.String n) : super(v, n);
}

class MessageEntity extends $pb.ProtobufEnum {
  static const MessageEntity ALL_ENTITY_MESSAGE = MessageEntity._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ALL_ENTITY_MESSAGE');
  static const MessageEntity ENTITY_ACCOUNT = MessageEntity._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ENTITY_ACCOUNT');
  static const MessageEntity ENTITY_ACCOUNT_ASSISTANT = MessageEntity._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ENTITY_ACCOUNT_ASSISTANT');

  static const $core.List<MessageEntity> values = <MessageEntity> [
    ALL_ENTITY_MESSAGE,
    ENTITY_ACCOUNT,
    ENTITY_ACCOUNT_ASSISTANT,
  ];

  static final $core.Map<$core.int, MessageEntity> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MessageEntity? valueOf($core.int value) => _byValue[value];

  const MessageEntity._($core.int v, $core.String n) : super(v, n);
}

class AccountPayInMethod extends $pb.ProtobufEnum {
  static const AccountPayInMethod CARD = AccountPayInMethod._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CARD');

  static const $core.List<AccountPayInMethod> values = <AccountPayInMethod> [
    CARD,
  ];

  static final $core.Map<$core.int, AccountPayInMethod> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountPayInMethod? valueOf($core.int value) => _byValue[value];

  const AccountPayInMethod._($core.int v, $core.String n) : super(v, n);
}

class LanguageEnum extends $pb.ProtobufEnum {
  static const LanguageEnum ENGLISH = LanguageEnum._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ENGLISH');
  static const LanguageEnum HINDI = LanguageEnum._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HINDI');
  static const LanguageEnum ODIA = LanguageEnum._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ODIA');

  static const $core.List<LanguageEnum> values = <LanguageEnum> [
    ENGLISH,
    HINDI,
    ODIA,
  ];

  static final $core.Map<$core.int, LanguageEnum> _byValue = $pb.ProtobufEnum.initByValue(values);
  static LanguageEnum? valueOf($core.int value) => _byValue[value];

  const LanguageEnum._($core.int v, $core.String n) : super(v, n);
}

