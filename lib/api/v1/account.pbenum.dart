///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AccountStatus extends $pb.ProtobufEnum {
  static const AccountStatus NORMAL = AccountStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NORMAL');
  static const AccountStatus DISABLE = AccountStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DISABLE');
  static const AccountStatus LOCK = AccountStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOCK');
  static const AccountStatus DELETE = AccountStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DELETE');

  static const $core.List<AccountStatus> values = <AccountStatus> [
    NORMAL,
    DISABLE,
    LOCK,
    DELETE,
  ];

  static final $core.Map<$core.int, AccountStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AccountStatus valueOf($core.int value) => _byValue[value];

  const AccountStatus._($core.int v, $core.String n) : super(v, n);
}

