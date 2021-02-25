///
//  Generated code. Do not modify.
//  source: manager.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'manager.pbenum.dart';

export 'manager.pbenum.dart';

class EmptyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
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

class Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Response', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
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

class Role extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Role', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roleName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createAt')
    ..e<Status>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roleStatus', $pb.PbFieldType.OE, defaultOrMaker: Status.NORMAL, valueOf: Status.valueOf, enumValues: Status.values)
    ..hasRequiredFields = false
  ;

  Role._() : super();
  factory Role({
    $core.int id,
    $core.String roleName,
    $core.String createAt,
    Status roleStatus,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (roleName != null) {
      _result.roleName = roleName;
    }
    if (createAt != null) {
      _result.createAt = createAt;
    }
    if (roleStatus != null) {
      _result.roleStatus = roleStatus;
    }
    return _result;
  }
  factory Role.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Role.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Role clone() => Role()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Role copyWith(void Function(Role) updates) => super.copyWith((message) => updates(message as Role)) as Role; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Role create() => Role._();
  Role createEmptyInstance() => create();
  static $pb.PbList<Role> createRepeated() => $pb.PbList<Role>();
  @$core.pragma('dart2js:noInline')
  static Role getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Role>(create);
  static Role _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get roleName => $_getSZ(1);
  @$pb.TagNumber(2)
  set roleName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoleName() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoleName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get createAt => $_getSZ(2);
  @$pb.TagNumber(3)
  set createAt($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCreateAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreateAt() => clearField(3);

  @$pb.TagNumber(4)
  Status get roleStatus => $_getN(3);
  @$pb.TagNumber(4)
  set roleStatus(Status v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoleStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoleStatus() => clearField(4);
}

class GetRoleListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoleListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..pc<Role>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.PM, subBuilder: Role.create)
    ..hasRequiredFields = false
  ;

  GetRoleListResponse._() : super();
  factory GetRoleListResponse({
    $core.bool success,
    $core.String message,
    $core.Iterable<Role> data,
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
  factory GetRoleListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoleListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoleListResponse clone() => GetRoleListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoleListResponse copyWith(void Function(GetRoleListResponse) updates) => super.copyWith((message) => updates(message as GetRoleListResponse)) as GetRoleListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRoleListResponse create() => GetRoleListResponse._();
  GetRoleListResponse createEmptyInstance() => create();
  static $pb.PbList<GetRoleListResponse> createRepeated() => $pb.PbList<GetRoleListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRoleListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoleListResponse>(create);
  static GetRoleListResponse _defaultInstance;

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
  $core.List<Role> get data => $_getList(2);
}

class RoleId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoleId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  RoleId._() : super();
  factory RoleId({
    $core.int id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory RoleId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoleId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoleId clone() => RoleId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoleId copyWith(void Function(RoleId) updates) => super.copyWith((message) => updates(message as RoleId)) as RoleId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoleId create() => RoleId._();
  RoleId createEmptyInstance() => create();
  static $pb.PbList<RoleId> createRepeated() => $pb.PbList<RoleId>();
  @$core.pragma('dart2js:noInline')
  static RoleId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoleId>(create);
  static RoleId _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class RoleBindMenuRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoleBindMenuRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roleId', $pb.PbFieldType.O3)
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuIds', $pb.PbFieldType.P3)
    ..hasRequiredFields = false
  ;

  RoleBindMenuRequest._() : super();
  factory RoleBindMenuRequest({
    $core.int roleId,
    $core.Iterable<$core.int> menuIds,
  }) {
    final _result = create();
    if (roleId != null) {
      _result.roleId = roleId;
    }
    if (menuIds != null) {
      _result.menuIds.addAll(menuIds);
    }
    return _result;
  }
  factory RoleBindMenuRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoleBindMenuRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoleBindMenuRequest clone() => RoleBindMenuRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoleBindMenuRequest copyWith(void Function(RoleBindMenuRequest) updates) => super.copyWith((message) => updates(message as RoleBindMenuRequest)) as RoleBindMenuRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoleBindMenuRequest create() => RoleBindMenuRequest._();
  RoleBindMenuRequest createEmptyInstance() => create();
  static $pb.PbList<RoleBindMenuRequest> createRepeated() => $pb.PbList<RoleBindMenuRequest>();
  @$core.pragma('dart2js:noInline')
  static RoleBindMenuRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoleBindMenuRequest>(create);
  static RoleBindMenuRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get roleId => $_getIZ(0);
  @$pb.TagNumber(1)
  set roleId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoleId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get menuIds => $_getList(1);
}

class GetRoleBindMenuResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoleBindMenuResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..p<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.P3)
    ..hasRequiredFields = false
  ;

  GetRoleBindMenuResponse._() : super();
  factory GetRoleBindMenuResponse({
    $core.bool success,
    $core.String message,
    $core.Iterable<$core.int> data,
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
  factory GetRoleBindMenuResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoleBindMenuResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoleBindMenuResponse clone() => GetRoleBindMenuResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoleBindMenuResponse copyWith(void Function(GetRoleBindMenuResponse) updates) => super.copyWith((message) => updates(message as GetRoleBindMenuResponse)) as GetRoleBindMenuResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRoleBindMenuResponse create() => GetRoleBindMenuResponse._();
  GetRoleBindMenuResponse createEmptyInstance() => create();
  static $pb.PbList<GetRoleBindMenuResponse> createRepeated() => $pb.PbList<GetRoleBindMenuResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRoleBindMenuResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoleBindMenuResponse>(create);
  static GetRoleBindMenuResponse _defaultInstance;

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
  $core.List<$core.int> get data => $_getList(2);
}

class AccountBindRoleRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountBindRoleRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId', $pb.PbFieldType.O3)
    ..p<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roleIds', $pb.PbFieldType.P3)
    ..hasRequiredFields = false
  ;

  AccountBindRoleRequest._() : super();
  factory AccountBindRoleRequest({
    $core.int accountId,
    $core.Iterable<$core.int> roleIds,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (roleIds != null) {
      _result.roleIds.addAll(roleIds);
    }
    return _result;
  }
  factory AccountBindRoleRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountBindRoleRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountBindRoleRequest clone() => AccountBindRoleRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountBindRoleRequest copyWith(void Function(AccountBindRoleRequest) updates) => super.copyWith((message) => updates(message as AccountBindRoleRequest)) as AccountBindRoleRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AccountBindRoleRequest create() => AccountBindRoleRequest._();
  AccountBindRoleRequest createEmptyInstance() => create();
  static $pb.PbList<AccountBindRoleRequest> createRepeated() => $pb.PbList<AccountBindRoleRequest>();
  @$core.pragma('dart2js:noInline')
  static AccountBindRoleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountBindRoleRequest>(create);
  static AccountBindRoleRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get accountId => $_getIZ(0);
  @$pb.TagNumber(1)
  set accountId($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get roleIds => $_getList(1);
}

class AccountId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AccountId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AccountId._() : super();
  factory AccountId({
    $core.int id,
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
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class GetAccountBindRoleResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountBindRoleResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..p<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.P3)
    ..hasRequiredFields = false
  ;

  GetAccountBindRoleResponse._() : super();
  factory GetAccountBindRoleResponse({
    $core.bool success,
    $core.String message,
    $core.Iterable<$core.int> data,
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
  factory GetAccountBindRoleResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountBindRoleResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountBindRoleResponse clone() => GetAccountBindRoleResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountBindRoleResponse copyWith(void Function(GetAccountBindRoleResponse) updates) => super.copyWith((message) => updates(message as GetAccountBindRoleResponse)) as GetAccountBindRoleResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountBindRoleResponse create() => GetAccountBindRoleResponse._();
  GetAccountBindRoleResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountBindRoleResponse> createRepeated() => $pb.PbList<GetAccountBindRoleResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountBindRoleResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountBindRoleResponse>(create);
  static GetAccountBindRoleResponse _defaultInstance;

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
  $core.List<$core.int> get data => $_getList(2);
}

class GetAccountMenuResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAccountMenuResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..pc<MenuInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.PM, subBuilder: MenuInfo.create)
    ..hasRequiredFields = false
  ;

  GetAccountMenuResponse._() : super();
  factory GetAccountMenuResponse({
    $core.bool success,
    $core.String message,
    $core.Iterable<MenuInfo> data,
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
  factory GetAccountMenuResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAccountMenuResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAccountMenuResponse clone() => GetAccountMenuResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAccountMenuResponse copyWith(void Function(GetAccountMenuResponse) updates) => super.copyWith((message) => updates(message as GetAccountMenuResponse)) as GetAccountMenuResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAccountMenuResponse create() => GetAccountMenuResponse._();
  GetAccountMenuResponse createEmptyInstance() => create();
  static $pb.PbList<GetAccountMenuResponse> createRepeated() => $pb.PbList<GetAccountMenuResponse>();
  @$core.pragma('dart2js:noInline')
  static GetAccountMenuResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAccountMenuResponse>(create);
  static GetAccountMenuResponse _defaultInstance;

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
  $core.List<MenuInfo> get data => $_getList(2);
}

class MenuInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MenuInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuRouter')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentId', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuIcon')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'createAt')
    ..e<Status>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuStatus', $pb.PbFieldType.OE, defaultOrMaker: Status.NORMAL, valueOf: Status.valueOf, enumValues: Status.values)
    ..hasRequiredFields = false
  ;

  MenuInfo._() : super();
  factory MenuInfo({
    $core.int id,
    $core.String menuName,
    $core.String menuRouter,
    $core.int parentId,
    $core.String menuIcon,
    $core.String createAt,
    Status menuStatus,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (menuName != null) {
      _result.menuName = menuName;
    }
    if (menuRouter != null) {
      _result.menuRouter = menuRouter;
    }
    if (parentId != null) {
      _result.parentId = parentId;
    }
    if (menuIcon != null) {
      _result.menuIcon = menuIcon;
    }
    if (createAt != null) {
      _result.createAt = createAt;
    }
    if (menuStatus != null) {
      _result.menuStatus = menuStatus;
    }
    return _result;
  }
  factory MenuInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MenuInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MenuInfo clone() => MenuInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MenuInfo copyWith(void Function(MenuInfo) updates) => super.copyWith((message) => updates(message as MenuInfo)) as MenuInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MenuInfo create() => MenuInfo._();
  MenuInfo createEmptyInstance() => create();
  static $pb.PbList<MenuInfo> createRepeated() => $pb.PbList<MenuInfo>();
  @$core.pragma('dart2js:noInline')
  static MenuInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MenuInfo>(create);
  static MenuInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get menuName => $_getSZ(1);
  @$pb.TagNumber(2)
  set menuName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMenuName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMenuName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get menuRouter => $_getSZ(2);
  @$pb.TagNumber(3)
  set menuRouter($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMenuRouter() => $_has(2);
  @$pb.TagNumber(3)
  void clearMenuRouter() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get parentId => $_getIZ(3);
  @$pb.TagNumber(4)
  set parentId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasParentId() => $_has(3);
  @$pb.TagNumber(4)
  void clearParentId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get menuIcon => $_getSZ(4);
  @$pb.TagNumber(5)
  set menuIcon($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMenuIcon() => $_has(4);
  @$pb.TagNumber(5)
  void clearMenuIcon() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get createAt => $_getSZ(5);
  @$pb.TagNumber(6)
  set createAt($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreateAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreateAt() => clearField(6);

  @$pb.TagNumber(7)
  Status get menuStatus => $_getN(6);
  @$pb.TagNumber(7)
  set menuStatus(Status v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasMenuStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearMenuStatus() => clearField(7);
}

class CreateMenuRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateMenuRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuName')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuRouter')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentId', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuIcon')
    ..hasRequiredFields = false
  ;

  CreateMenuRequest._() : super();
  factory CreateMenuRequest({
    $core.String menuName,
    $core.String menuRouter,
    $core.int parentId,
    $core.String menuIcon,
  }) {
    final _result = create();
    if (menuName != null) {
      _result.menuName = menuName;
    }
    if (menuRouter != null) {
      _result.menuRouter = menuRouter;
    }
    if (parentId != null) {
      _result.parentId = parentId;
    }
    if (menuIcon != null) {
      _result.menuIcon = menuIcon;
    }
    return _result;
  }
  factory CreateMenuRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateMenuRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateMenuRequest clone() => CreateMenuRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateMenuRequest copyWith(void Function(CreateMenuRequest) updates) => super.copyWith((message) => updates(message as CreateMenuRequest)) as CreateMenuRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateMenuRequest create() => CreateMenuRequest._();
  CreateMenuRequest createEmptyInstance() => create();
  static $pb.PbList<CreateMenuRequest> createRepeated() => $pb.PbList<CreateMenuRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateMenuRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateMenuRequest>(create);
  static CreateMenuRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get menuName => $_getSZ(0);
  @$pb.TagNumber(1)
  set menuName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMenuName() => $_has(0);
  @$pb.TagNumber(1)
  void clearMenuName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get menuRouter => $_getSZ(1);
  @$pb.TagNumber(2)
  set menuRouter($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMenuRouter() => $_has(1);
  @$pb.TagNumber(2)
  void clearMenuRouter() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get parentId => $_getIZ(2);
  @$pb.TagNumber(3)
  set parentId($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasParentId() => $_has(2);
  @$pb.TagNumber(3)
  void clearParentId() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get menuIcon => $_getSZ(3);
  @$pb.TagNumber(4)
  set menuIcon($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMenuIcon() => $_has(3);
  @$pb.TagNumber(4)
  void clearMenuIcon() => clearField(4);
}

class GetMenuListResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetMenuListResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..pc<MenuInfo>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'data', $pb.PbFieldType.PM, subBuilder: MenuInfo.create)
    ..hasRequiredFields = false
  ;

  GetMenuListResponse._() : super();
  factory GetMenuListResponse({
    $core.bool success,
    $core.String message,
    $core.Iterable<MenuInfo> data,
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
  factory GetMenuListResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetMenuListResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetMenuListResponse clone() => GetMenuListResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetMenuListResponse copyWith(void Function(GetMenuListResponse) updates) => super.copyWith((message) => updates(message as GetMenuListResponse)) as GetMenuListResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetMenuListResponse create() => GetMenuListResponse._();
  GetMenuListResponse createEmptyInstance() => create();
  static $pb.PbList<GetMenuListResponse> createRepeated() => $pb.PbList<GetMenuListResponse>();
  @$core.pragma('dart2js:noInline')
  static GetMenuListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetMenuListResponse>(create);
  static GetMenuListResponse _defaultInstance;

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
  $core.List<MenuInfo> get data => $_getList(2);
}

class MenuId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MenuId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  MenuId._() : super();
  factory MenuId({
    $core.int id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory MenuId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MenuId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MenuId clone() => MenuId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MenuId copyWith(void Function(MenuId) updates) => super.copyWith((message) => updates(message as MenuId)) as MenuId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MenuId create() => MenuId._();
  MenuId createEmptyInstance() => create();
  static $pb.PbList<MenuId> createRepeated() => $pb.PbList<MenuId>();
  @$core.pragma('dart2js:noInline')
  static MenuId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MenuId>(create);
  static MenuId _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class UpdateMenuRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateMenuRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'manager'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuRouter')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parentId', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuIcon')
    ..e<Status>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'menuStatus', $pb.PbFieldType.OE, defaultOrMaker: Status.NORMAL, valueOf: Status.valueOf, enumValues: Status.values)
    ..hasRequiredFields = false
  ;

  UpdateMenuRequest._() : super();
  factory UpdateMenuRequest({
    $core.int id,
    $core.String menuName,
    $core.String menuRouter,
    $core.int parentId,
    $core.String menuIcon,
    Status menuStatus,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (menuName != null) {
      _result.menuName = menuName;
    }
    if (menuRouter != null) {
      _result.menuRouter = menuRouter;
    }
    if (parentId != null) {
      _result.parentId = parentId;
    }
    if (menuIcon != null) {
      _result.menuIcon = menuIcon;
    }
    if (menuStatus != null) {
      _result.menuStatus = menuStatus;
    }
    return _result;
  }
  factory UpdateMenuRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateMenuRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateMenuRequest clone() => UpdateMenuRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateMenuRequest copyWith(void Function(UpdateMenuRequest) updates) => super.copyWith((message) => updates(message as UpdateMenuRequest)) as UpdateMenuRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateMenuRequest create() => UpdateMenuRequest._();
  UpdateMenuRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateMenuRequest> createRepeated() => $pb.PbList<UpdateMenuRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateMenuRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateMenuRequest>(create);
  static UpdateMenuRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get menuName => $_getSZ(1);
  @$pb.TagNumber(2)
  set menuName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMenuName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMenuName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get menuRouter => $_getSZ(2);
  @$pb.TagNumber(3)
  set menuRouter($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMenuRouter() => $_has(2);
  @$pb.TagNumber(3)
  void clearMenuRouter() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get parentId => $_getIZ(3);
  @$pb.TagNumber(4)
  set parentId($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasParentId() => $_has(3);
  @$pb.TagNumber(4)
  void clearParentId() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get menuIcon => $_getSZ(4);
  @$pb.TagNumber(5)
  set menuIcon($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMenuIcon() => $_has(4);
  @$pb.TagNumber(5)
  void clearMenuIcon() => clearField(5);

  @$pb.TagNumber(6)
  Status get menuStatus => $_getN(5);
  @$pb.TagNumber(6)
  set menuStatus(Status v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasMenuStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearMenuStatus() => clearField(6);
}

class ManagerServiceApi {
  $pb.RpcClient _client;
  ManagerServiceApi(this._client);

  $async.Future<Response> createRole($pb.ClientContext ctx, Role request) {
    var emptyResponse = Response();
    return _client.invoke<Response>(ctx, 'ManagerService', 'CreateRole', request, emptyResponse);
  }
  $async.Future<GetRoleListResponse> getRoleList($pb.ClientContext ctx, EmptyRequest request) {
    var emptyResponse = GetRoleListResponse();
    return _client.invoke<GetRoleListResponse>(ctx, 'ManagerService', 'GetRoleList', request, emptyResponse);
  }
  $async.Future<Response> updateRole($pb.ClientContext ctx, Role request) {
    var emptyResponse = Response();
    return _client.invoke<Response>(ctx, 'ManagerService', 'UpdateRole', request, emptyResponse);
  }
  $async.Future<Response> deleteRole($pb.ClientContext ctx, RoleId request) {
    var emptyResponse = Response();
    return _client.invoke<Response>(ctx, 'ManagerService', 'DeleteRole', request, emptyResponse);
  }
  $async.Future<Response> roleBindMenu($pb.ClientContext ctx, RoleBindMenuRequest request) {
    var emptyResponse = Response();
    return _client.invoke<Response>(ctx, 'ManagerService', 'RoleBindMenu', request, emptyResponse);
  }
  $async.Future<GetRoleBindMenuResponse> getRoleBindMenu($pb.ClientContext ctx, RoleId request) {
    var emptyResponse = GetRoleBindMenuResponse();
    return _client.invoke<GetRoleBindMenuResponse>(ctx, 'ManagerService', 'GetRoleBindMenu', request, emptyResponse);
  }
  $async.Future<Response> accountBindRole($pb.ClientContext ctx, AccountBindRoleRequest request) {
    var emptyResponse = Response();
    return _client.invoke<Response>(ctx, 'ManagerService', 'AccountBindRole', request, emptyResponse);
  }
  $async.Future<GetAccountBindRoleResponse> getAccountBindRole($pb.ClientContext ctx, AccountId request) {
    var emptyResponse = GetAccountBindRoleResponse();
    return _client.invoke<GetAccountBindRoleResponse>(ctx, 'ManagerService', 'GetAccountBindRole', request, emptyResponse);
  }
  $async.Future<GetAccountMenuResponse> getAccountMenu($pb.ClientContext ctx, EmptyRequest request) {
    var emptyResponse = GetAccountMenuResponse();
    return _client.invoke<GetAccountMenuResponse>(ctx, 'ManagerService', 'GetAccountMenu', request, emptyResponse);
  }
  $async.Future<Response> createMenu($pb.ClientContext ctx, CreateMenuRequest request) {
    var emptyResponse = Response();
    return _client.invoke<Response>(ctx, 'ManagerService', 'CreateMenu', request, emptyResponse);
  }
  $async.Future<GetMenuListResponse> getMenuList($pb.ClientContext ctx, EmptyRequest request) {
    var emptyResponse = GetMenuListResponse();
    return _client.invoke<GetMenuListResponse>(ctx, 'ManagerService', 'GetMenuList', request, emptyResponse);
  }
  $async.Future<Response> deleteMenu($pb.ClientContext ctx, MenuId request) {
    var emptyResponse = Response();
    return _client.invoke<Response>(ctx, 'ManagerService', 'DeleteMenu', request, emptyResponse);
  }
  $async.Future<Response> updateMenu($pb.ClientContext ctx, UpdateMenuRequest request) {
    var emptyResponse = Response();
    return _client.invoke<Response>(ctx, 'ManagerService', 'UpdateMenu', request, emptyResponse);
  }
}

