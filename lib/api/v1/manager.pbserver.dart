///
//  Generated code. Do not modify.
//  source: manager.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'manager.pb.dart' as $0;
import 'manager.pbjson.dart';

export 'manager.pb.dart';

abstract class ManagerServiceBase extends $pb.GeneratedService {
  $async.Future<$0.Response> createRole($pb.ServerContext ctx, $0.Role request);
  $async.Future<$0.GetRoleListResponse> getRoleList($pb.ServerContext ctx, $0.EmptyRequest request);
  $async.Future<$0.Response> updateRole($pb.ServerContext ctx, $0.Role request);
  $async.Future<$0.Response> deleteRole($pb.ServerContext ctx, $0.RoleId request);
  $async.Future<$0.Response> roleBindMenu($pb.ServerContext ctx, $0.RoleBindMenuRequest request);
  $async.Future<$0.GetRoleBindMenuResponse> getRoleBindMenu($pb.ServerContext ctx, $0.RoleId request);
  $async.Future<$0.Response> accountBindRole($pb.ServerContext ctx, $0.AccountBindRoleRequest request);
  $async.Future<$0.GetAccountBindRoleResponse> getAccountBindRole($pb.ServerContext ctx, $0.AccountId request);
  $async.Future<$0.GetAccountMenuResponse> getAccountMenu($pb.ServerContext ctx, $0.EmptyRequest request);
  $async.Future<$0.Response> createMenu($pb.ServerContext ctx, $0.CreateMenuRequest request);
  $async.Future<$0.GetMenuListResponse> getMenuList($pb.ServerContext ctx, $0.EmptyRequest request);
  $async.Future<$0.Response> deleteMenu($pb.ServerContext ctx, $0.MenuId request);
  $async.Future<$0.Response> updateMenu($pb.ServerContext ctx, $0.UpdateMenuRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'CreateRole': return $0.Role();
      case 'GetRoleList': return $0.EmptyRequest();
      case 'UpdateRole': return $0.Role();
      case 'DeleteRole': return $0.RoleId();
      case 'RoleBindMenu': return $0.RoleBindMenuRequest();
      case 'GetRoleBindMenu': return $0.RoleId();
      case 'AccountBindRole': return $0.AccountBindRoleRequest();
      case 'GetAccountBindRole': return $0.AccountId();
      case 'GetAccountMenu': return $0.EmptyRequest();
      case 'CreateMenu': return $0.CreateMenuRequest();
      case 'GetMenuList': return $0.EmptyRequest();
      case 'DeleteMenu': return $0.MenuId();
      case 'UpdateMenu': return $0.UpdateMenuRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'CreateRole': return this.createRole(ctx, request as $0.Role);
      case 'GetRoleList': return this.getRoleList(ctx, request as $0.EmptyRequest);
      case 'UpdateRole': return this.updateRole(ctx, request as $0.Role);
      case 'DeleteRole': return this.deleteRole(ctx, request as $0.RoleId);
      case 'RoleBindMenu': return this.roleBindMenu(ctx, request as $0.RoleBindMenuRequest);
      case 'GetRoleBindMenu': return this.getRoleBindMenu(ctx, request as $0.RoleId);
      case 'AccountBindRole': return this.accountBindRole(ctx, request as $0.AccountBindRoleRequest);
      case 'GetAccountBindRole': return this.getAccountBindRole(ctx, request as $0.AccountId);
      case 'GetAccountMenu': return this.getAccountMenu(ctx, request as $0.EmptyRequest);
      case 'CreateMenu': return this.createMenu(ctx, request as $0.CreateMenuRequest);
      case 'GetMenuList': return this.getMenuList(ctx, request as $0.EmptyRequest);
      case 'DeleteMenu': return this.deleteMenu(ctx, request as $0.MenuId);
      case 'UpdateMenu': return this.updateMenu(ctx, request as $0.UpdateMenuRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => ManagerServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => ManagerServiceBase$messageJson;
}

