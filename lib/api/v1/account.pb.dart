///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'account.pbenum.dart';

export 'account.pbenum.dart';

class Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shakebook'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  Response._() : super();
  factory Response({
    $core.bool success,
    $core.String message,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Response clone() => Response()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Response copyWith(void Function(Response) updates) => super.copyWith((message) => updates(message as Response)) as Response; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Response create() => Response._();
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  @$core.pragma('dart2js:noInline')
  static Response getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Response>(create);
  static Response _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class EmptyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shakebook'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EmptyRequest._() : super();
  factory EmptyRequest() => create();
  factory EmptyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyRequest clone() => EmptyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyRequest copyWith(void Function(EmptyRequest) updates) => super.copyWith((message) => updates(message as EmptyRequest)) as EmptyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyRequest create() => EmptyRequest._();
  EmptyRequest createEmptyInstance() => create();
  static $pb.PbList<EmptyRequest> createRepeated() => $pb.PbList<EmptyRequest>();
  @$core.pragma('dart2js:noInline')
  static EmptyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyRequest>(create);
  static EmptyRequest _defaultInstance;
}

class SignUpRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignUpRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shakebook'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountEmail')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountPassword')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'emailValidCode')
    ..hasRequiredFields = false
  ;

  SignUpRequest._() : super();
  factory SignUpRequest({
    $core.String accountName,
    $core.String accountEmail,
    $core.String accountPassword,
    $core.String emailValidCode,
  }) {
    final _result = create();
    if (accountName != null) {
      _result.accountName = accountName;
    }
    if (accountEmail != null) {
      _result.accountEmail = accountEmail;
    }
    if (accountPassword != null) {
      _result.accountPassword = accountPassword;
    }
    if (emailValidCode != null) {
      _result.emailValidCode = emailValidCode;
    }
    return _result;
  }
  factory SignUpRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignUpRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignUpRequest clone() => SignUpRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignUpRequest copyWith(void Function(SignUpRequest) updates) => super.copyWith((message) => updates(message as SignUpRequest)) as SignUpRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignUpRequest create() => SignUpRequest._();
  SignUpRequest createEmptyInstance() => create();
  static $pb.PbList<SignUpRequest> createRepeated() => $pb.PbList<SignUpRequest>();
  @$core.pragma('dart2js:noInline')
  static SignUpRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignUpRequest>(create);
  static SignUpRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountName => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountEmail => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountEmail($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountEmail() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountPassword => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountPassword($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountPassword() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountPassword() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get emailValidCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set emailValidCode($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEmailValidCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearEmailValidCode() => clearField(4);
}

class AccountId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shakebook'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..hasRequiredFields = false
  ;

  AccountId._() : super();
  factory AccountId({
    $fixnum.Int64 id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory AccountId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountId clone() => AccountId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountId copyWith(void Function(AccountId) updates) => super.copyWith((message) => updates(message as AccountId)) as AccountId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountId create() => AccountId._();
  AccountId createEmptyInstance() => create();
  static $pb.PbList<AccountId> createRepeated() => $pb.PbList<AccountId>();
  @$core.pragma('dart2js:noInline')
  static AccountId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountId>(create);
  static AccountId _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class SignInRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignInRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shakebook'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountPassword')
    ..hasRequiredFields = false
  ;

  SignInRequest._() : super();
  factory SignInRequest({
    $core.String accountName,
    $core.String accountPassword,
  }) {
    final _result = create();
    if (accountName != null) {
      _result.accountName = accountName;
    }
    if (accountPassword != null) {
      _result.accountPassword = accountPassword;
    }
    return _result;
  }
  factory SignInRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignInRequest clone() => SignInRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignInRequest copyWith(void Function(SignInRequest) updates) => super.copyWith((message) => updates(message as SignInRequest)) as SignInRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignInRequest create() => SignInRequest._();
  SignInRequest createEmptyInstance() => create();
  static $pb.PbList<SignInRequest> createRepeated() => $pb.PbList<SignInRequest>();
  @$core.pragma('dart2js:noInline')
  static SignInRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInRequest>(create);
  static SignInRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountName => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountPassword() => clearField(2);
}

class SignInResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignInResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shakebook'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data')
    ..hasRequiredFields = false
  ;

  SignInResponse._() : super();
  factory SignInResponse({
    $core.bool success,
    $core.String message,
    $core.String data,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (message != null) {
      _result.message = message;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory SignInResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignInResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignInResponse clone() => SignInResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignInResponse copyWith(void Function(SignInResponse) updates) => super.copyWith((message) => updates(message as SignInResponse)) as SignInResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignInResponse create() => SignInResponse._();
  SignInResponse createEmptyInstance() => create();
  static $pb.PbList<SignInResponse> createRepeated() => $pb.PbList<SignInResponse>();
  @$core.pragma('dart2js:noInline')
  static SignInResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignInResponse>(create);
  static SignInResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get data => $_getSZ(2);
  @$pb.TagNumber(3)
  set data($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
}

class UpdateAccountDescriptRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateAccountDescriptRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shakebook'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountNickname')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountDesc')
    ..hasRequiredFields = false
  ;

  UpdateAccountDescriptRequest._() : super();
  factory UpdateAccountDescriptRequest({
    $core.String accountNickname,
    $core.String accountName,
    $core.String accountDesc,
  }) {
    final _result = create();
    if (accountNickname != null) {
      _result.accountNickname = accountNickname;
    }
    if (accountName != null) {
      _result.accountName = accountName;
    }
    if (accountDesc != null) {
      _result.accountDesc = accountDesc;
    }
    return _result;
  }
  factory UpdateAccountDescriptRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateAccountDescriptRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateAccountDescriptRequest clone() => UpdateAccountDescriptRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateAccountDescriptRequest copyWith(void Function(UpdateAccountDescriptRequest) updates) => super.copyWith((message) => updates(message as UpdateAccountDescriptRequest)) as UpdateAccountDescriptRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateAccountDescriptRequest create() => UpdateAccountDescriptRequest._();
  UpdateAccountDescriptRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateAccountDescriptRequest> createRepeated() => $pb.PbList<UpdateAccountDescriptRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateAccountDescriptRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAccountDescriptRequest>(create);
  static UpdateAccountDescriptRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountNickname => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountNickname($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountNickname() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountNickname() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountName => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountDesc => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountDesc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountDesc() => clearField(3);
}

class Account extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Account', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shakebook'), createEmptyInstance: create)
    ..aOM<AccountInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'info', subBuilder: AccountInfo.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountPassword')
    ..hasRequiredFields = false
  ;

  Account._() : super();
  factory Account({
    AccountInfo info,
    $core.String accountPassword,
  }) {
    final _result = create();
    if (info != null) {
      _result.info = info;
    }
    if (accountPassword != null) {
      _result.accountPassword = accountPassword;
    }
    return _result;
  }
  factory Account.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Account.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Account clone() => Account()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Account copyWith(void Function(Account) updates) => super.copyWith((message) => updates(message as Account)) as Account; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();
  Account createEmptyInstance() => create();
  static $pb.PbList<Account> createRepeated() => $pb.PbList<Account>();
  @$core.pragma('dart2js:noInline')
  static Account getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Account>(create);
  static Account _defaultInstance;

  @$pb.TagNumber(1)
  AccountInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(AccountInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  AccountInfo ensureInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get accountPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountPassword($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountPassword() => clearField(2);
}

class ValidEmailRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ValidEmailRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shakebook'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountEmail')
    ..hasRequiredFields = false
  ;

  ValidEmailRequest._() : super();
  factory ValidEmailRequest({
    $core.String accountEmail,
  }) {
    final _result = create();
    if (accountEmail != null) {
      _result.accountEmail = accountEmail;
    }
    return _result;
  }
  factory ValidEmailRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidEmailRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidEmailRequest clone() => ValidEmailRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidEmailRequest copyWith(void Function(ValidEmailRequest) updates) => super.copyWith((message) => updates(message as ValidEmailRequest)) as ValidEmailRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ValidEmailRequest create() => ValidEmailRequest._();
  ValidEmailRequest createEmptyInstance() => create();
  static $pb.PbList<ValidEmailRequest> createRepeated() => $pb.PbList<ValidEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static ValidEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidEmailRequest>(create);
  static ValidEmailRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountEmail => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountEmail($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountEmail() => clearField(1);
}

class GetAccountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shakebook'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..aOM<AccountInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', subBuilder: AccountInfo.create)
    ..hasRequiredFields = false
  ;

  GetAccountResponse._() : super();
  factory GetAccountResponse({
    $core.bool success,
    $core.String message,
    AccountInfo data,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (message != null) {
      _result.message = message;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }
  factory GetAccountResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountResponse clone() => GetAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountResponse copyWith(void Function(GetAccountResponse) updates) => super.copyWith((message) => updates(message as GetAccountResponse)) as GetAccountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountResponse create() => GetAccountResponse._();
  GetAccountResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountResponse> createRepeated() => $pb.PbList<GetAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountResponse>(create);
  static GetAccountResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  AccountInfo get data => $_getN(2);
  @$pb.TagNumber(3)
  set data(AccountInfo v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
  @$pb.TagNumber(3)
  AccountInfo ensureData() => $_ensure(2);
}

class AccountInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shakebook'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountPhone')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountEmail')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signupAt')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastTime')
    ..e<AccountStatus>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountStatus', $pb.PbFieldType.OE, defaultOrMaker: AccountStatus.NORMAL, valueOf: AccountStatus.valueOf, enumValues: AccountStatus.values)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageUrl')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'backgroundUrl')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountDesc')
    ..aInt64(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thumbsUp')
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'focusNumber')
    ..aInt64(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fansNumber')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountNickname')
    ..hasRequiredFields = false
  ;

  AccountInfo._() : super();
  factory AccountInfo({
    $fixnum.Int64 id,
    $core.String accountName,
    $core.String accountPhone,
    $core.String accountEmail,
    $core.String signupAt,
    $core.String lastTime,
    AccountStatus accountStatus,
    $core.String imageUrl,
    $core.String backgroundUrl,
    $core.String accountDesc,
    $fixnum.Int64 thumbsUp,
    $fixnum.Int64 focusNumber,
    $fixnum.Int64 fansNumber,
    $core.String accountNickname,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (accountName != null) {
      _result.accountName = accountName;
    }
    if (accountPhone != null) {
      _result.accountPhone = accountPhone;
    }
    if (accountEmail != null) {
      _result.accountEmail = accountEmail;
    }
    if (signupAt != null) {
      _result.signupAt = signupAt;
    }
    if (lastTime != null) {
      _result.lastTime = lastTime;
    }
    if (accountStatus != null) {
      _result.accountStatus = accountStatus;
    }
    if (imageUrl != null) {
      _result.imageUrl = imageUrl;
    }
    if (backgroundUrl != null) {
      _result.backgroundUrl = backgroundUrl;
    }
    if (accountDesc != null) {
      _result.accountDesc = accountDesc;
    }
    if (thumbsUp != null) {
      _result.thumbsUp = thumbsUp;
    }
    if (focusNumber != null) {
      _result.focusNumber = focusNumber;
    }
    if (fansNumber != null) {
      _result.fansNumber = fansNumber;
    }
    if (accountNickname != null) {
      _result.accountNickname = accountNickname;
    }
    return _result;
  }
  factory AccountInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountInfo clone() => AccountInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountInfo copyWith(void Function(AccountInfo) updates) => super.copyWith((message) => updates(message as AccountInfo)) as AccountInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountInfo create() => AccountInfo._();
  AccountInfo createEmptyInstance() => create();
  static $pb.PbList<AccountInfo> createRepeated() => $pb.PbList<AccountInfo>();
  @$core.pragma('dart2js:noInline')
  static AccountInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountInfo>(create);
  static AccountInfo _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountName => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountPhone => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountPhone($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAccountPhone() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountPhone() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get accountEmail => $_getSZ(3);
  @$pb.TagNumber(4)
  set accountEmail($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccountEmail() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountEmail() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get signupAt => $_getSZ(4);
  @$pb.TagNumber(5)
  set signupAt($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSignupAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearSignupAt() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get lastTime => $_getSZ(5);
  @$pb.TagNumber(6)
  set lastTime($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastTime() => clearField(6);

  @$pb.TagNumber(7)
  AccountStatus get accountStatus => $_getN(6);
  @$pb.TagNumber(7)
  set accountStatus(AccountStatus v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasAccountStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearAccountStatus() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get imageUrl => $_getSZ(7);
  @$pb.TagNumber(8)
  set imageUrl($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasImageUrl() => $_has(7);
  @$pb.TagNumber(8)
  void clearImageUrl() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get backgroundUrl => $_getSZ(8);
  @$pb.TagNumber(9)
  set backgroundUrl($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBackgroundUrl() => $_has(8);
  @$pb.TagNumber(9)
  void clearBackgroundUrl() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get accountDesc => $_getSZ(9);
  @$pb.TagNumber(10)
  set accountDesc($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAccountDesc() => $_has(9);
  @$pb.TagNumber(10)
  void clearAccountDesc() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get thumbsUp => $_getI64(10);
  @$pb.TagNumber(11)
  set thumbsUp($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasThumbsUp() => $_has(10);
  @$pb.TagNumber(11)
  void clearThumbsUp() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get focusNumber => $_getI64(11);
  @$pb.TagNumber(12)
  set focusNumber($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasFocusNumber() => $_has(11);
  @$pb.TagNumber(12)
  void clearFocusNumber() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get fansNumber => $_getI64(12);
  @$pb.TagNumber(13)
  set fansNumber($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasFansNumber() => $_has(12);
  @$pb.TagNumber(13)
  void clearFansNumber() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get accountNickname => $_getSZ(13);
  @$pb.TagNumber(14)
  set accountNickname($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasAccountNickname() => $_has(13);
  @$pb.TagNumber(14)
  void clearAccountNickname() => clearField(14);
}

class GetAccountListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'shakebook'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..pc<AccountInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.PM, subBuilder: AccountInfo.create)
    ..hasRequiredFields = false
  ;

  GetAccountListResponse._() : super();
  factory GetAccountListResponse({
    $core.bool success,
    $core.String message,
    $core.Iterable<AccountInfo> data,
  }) {
    final _result = create();
    if (success != null) {
      _result.success = success;
    }
    if (message != null) {
      _result.message = message;
    }
    if (data != null) {
      _result.data.addAll(data);
    }
    return _result;
  }
  factory GetAccountListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountListResponse clone() => GetAccountListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountListResponse copyWith(void Function(GetAccountListResponse) updates) => super.copyWith((message) => updates(message as GetAccountListResponse)) as GetAccountListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountListResponse create() => GetAccountListResponse._();
  GetAccountListResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountListResponse> createRepeated() => $pb.PbList<GetAccountListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountListResponse>(create);
  static GetAccountListResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<AccountInfo> get data => $_getList(2);
}

class AccountServiceApi {
  $pb.RpcClient _client;
  AccountServiceApi(this._client);

  $async.Future<Response> signUp($pb.ClientContext ctx, SignUpRequest request) {
    var emptyResponse = Response();
    return _client.invoke<Response>(ctx, 'AccountService', 'SignUp', request, emptyResponse);
  }
  $async.Future<SignInResponse> signIn($pb.ClientContext ctx, SignInRequest request) {
    var emptyResponse = SignInResponse();
    return _client.invoke<SignInResponse>(ctx, 'AccountService', 'SignIn', request, emptyResponse);
  }
  $async.Future<Response> signOut($pb.ClientContext ctx, AccountId request) {
    var emptyResponse = Response();
    return _client.invoke<Response>(ctx, 'AccountService', 'SignOut', request, emptyResponse);
  }
  $async.Future<Response> validEmail($pb.ClientContext ctx, ValidEmailRequest request) {
    var emptyResponse = Response();
    return _client.invoke<Response>(ctx, 'AccountService', 'ValidEmail', request, emptyResponse);
  }
  $async.Future<Response> updateAccountDescript($pb.ClientContext ctx, UpdateAccountDescriptRequest request) {
    var emptyResponse = Response();
    return _client.invoke<Response>(ctx, 'AccountService', 'UpdateAccountDescript', request, emptyResponse);
  }
  $async.Future<GetAccountResponse> getAccount($pb.ClientContext ctx, EmptyRequest request) {
    var emptyResponse = GetAccountResponse();
    return _client.invoke<GetAccountResponse>(ctx, 'AccountService', 'GetAccount', request, emptyResponse);
  }
  $async.Future<GetAccountListResponse> getAccountList($pb.ClientContext ctx, EmptyRequest request) {
    var emptyResponse = GetAccountListResponse();
    return _client.invoke<GetAccountListResponse>(ctx, 'AccountService', 'GetAccountList', request, emptyResponse);
  }
}

