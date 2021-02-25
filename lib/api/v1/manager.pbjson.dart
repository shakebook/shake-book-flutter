///
//  Generated code. Do not modify.
//  source: manager.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use statusDescriptor instead')
const Status$json = const {
  '1': 'Status',
  '2': const [
    const {'1': 'NORMAL', '2': 0},
    const {'1': 'DELETE', '2': 1},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode('CgZTdGF0dXMSCgoGTk9STUFMEAASCgoGREVMRVRFEAE=');
@$core.Deprecated('Use emptyRequestDescriptor instead')
const EmptyRequest$json = const {
  '1': 'EmptyRequest',
};

/// Descriptor for `EmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyRequestDescriptor = $convert.base64Decode('CgxFbXB0eVJlcXVlc3Q=');
@$core.Deprecated('Use responseDescriptor instead')
const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode('CghSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2U=');
@$core.Deprecated('Use roleDescriptor instead')
const Role$json = const {
  '1': 'Role',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'role_name', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'roleName'},
    const {'1': 'create_at', '3': 3, '4': 1, '5': 9, '10': 'createAt'},
    const {'1': 'role_status', '3': 4, '4': 1, '5': 14, '6': '.manager.Status', '10': 'roleStatus'},
  ],
};

/// Descriptor for `Role`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roleDescriptor = $convert.base64Decode('CgRSb2xlEg4KAmlkGAEgASgFUgJpZBIkCglyb2xlX25hbWUYAiABKAlCB/pCBHICEAFSCHJvbGVOYW1lEhsKCWNyZWF0ZV9hdBgDIAEoCVIIY3JlYXRlQXQSMAoLcm9sZV9zdGF0dXMYBCABKA4yDy5tYW5hZ2VyLlN0YXR1c1IKcm9sZVN0YXR1cw==');
@$core.Deprecated('Use getRoleListResponseDescriptor instead')
const GetRoleListResponse$json = const {
  '1': 'GetRoleListResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'data', '3': 3, '4': 3, '5': 11, '6': '.manager.Role', '10': 'data'},
  ],
};

/// Descriptor for `GetRoleListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoleListResponseDescriptor = $convert.base64Decode('ChNHZXRSb2xlTGlzdFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZRIhCgRkYXRhGAMgAygLMg0ubWFuYWdlci5Sb2xlUgRkYXRh');
@$core.Deprecated('Use roleIdDescriptor instead')
const RoleId$json = const {
  '1': 'RoleId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '8': const {}, '10': 'id'},
  ],
};

/// Descriptor for `RoleId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roleIdDescriptor = $convert.base64Decode('CgZSb2xlSWQSFwoCaWQYASABKAVCB/pCBBoCKAFSAmlk');
@$core.Deprecated('Use roleBindMenuRequestDescriptor instead')
const RoleBindMenuRequest$json = const {
  '1': 'RoleBindMenuRequest',
  '2': const [
    const {'1': 'role_id', '3': 1, '4': 1, '5': 5, '10': 'roleId'},
    const {'1': 'menu_ids', '3': 2, '4': 3, '5': 5, '10': 'menuIds'},
  ],
};

/// Descriptor for `RoleBindMenuRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roleBindMenuRequestDescriptor = $convert.base64Decode('ChNSb2xlQmluZE1lbnVSZXF1ZXN0EhcKB3JvbGVfaWQYASABKAVSBnJvbGVJZBIZCghtZW51X2lkcxgCIAMoBVIHbWVudUlkcw==');
@$core.Deprecated('Use getRoleBindMenuResponseDescriptor instead')
const GetRoleBindMenuResponse$json = const {
  '1': 'GetRoleBindMenuResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'data', '3': 3, '4': 3, '5': 5, '10': 'data'},
  ],
};

/// Descriptor for `GetRoleBindMenuResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoleBindMenuResponseDescriptor = $convert.base64Decode('ChdHZXRSb2xlQmluZE1lbnVSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2USEgoEZGF0YRgDIAMoBVIEZGF0YQ==');
@$core.Deprecated('Use accountBindRoleRequestDescriptor instead')
const AccountBindRoleRequest$json = const {
  '1': 'AccountBindRoleRequest',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 5, '10': 'accountId'},
    const {'1': 'role_ids', '3': 2, '4': 3, '5': 5, '10': 'roleIds'},
  ],
};

/// Descriptor for `AccountBindRoleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountBindRoleRequestDescriptor = $convert.base64Decode('ChZBY2NvdW50QmluZFJvbGVSZXF1ZXN0Eh0KCmFjY291bnRfaWQYASABKAVSCWFjY291bnRJZBIZCghyb2xlX2lkcxgCIAMoBVIHcm9sZUlkcw==');
@$core.Deprecated('Use accountIdDescriptor instead')
const AccountId$json = const {
  '1': 'AccountId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '8': const {}, '10': 'id'},
  ],
};

/// Descriptor for `AccountId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountIdDescriptor = $convert.base64Decode('CglBY2NvdW50SWQSFwoCaWQYASABKAVCB/pCBBoCKAFSAmlk');
@$core.Deprecated('Use getAccountBindRoleResponseDescriptor instead')
const GetAccountBindRoleResponse$json = const {
  '1': 'GetAccountBindRoleResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'data', '3': 3, '4': 3, '5': 5, '10': 'data'},
  ],
};

/// Descriptor for `GetAccountBindRoleResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountBindRoleResponseDescriptor = $convert.base64Decode('ChpHZXRBY2NvdW50QmluZFJvbGVSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2USEgoEZGF0YRgDIAMoBVIEZGF0YQ==');
@$core.Deprecated('Use getAccountMenuResponseDescriptor instead')
const GetAccountMenuResponse$json = const {
  '1': 'GetAccountMenuResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'data', '3': 3, '4': 3, '5': 11, '6': '.manager.MenuInfo', '10': 'data'},
  ],
};

/// Descriptor for `GetAccountMenuResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountMenuResponseDescriptor = $convert.base64Decode('ChZHZXRBY2NvdW50TWVudVJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZRIlCgRkYXRhGAMgAygLMhEubWFuYWdlci5NZW51SW5mb1IEZGF0YQ==');
@$core.Deprecated('Use menuInfoDescriptor instead')
const MenuInfo$json = const {
  '1': 'MenuInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'menu_name', '3': 2, '4': 1, '5': 9, '10': 'menuName'},
    const {'1': 'menu_router', '3': 3, '4': 1, '5': 9, '10': 'menuRouter'},
    const {'1': 'parent_id', '3': 4, '4': 1, '5': 5, '10': 'parentId'},
    const {'1': 'menu_icon', '3': 5, '4': 1, '5': 9, '10': 'menuIcon'},
    const {'1': 'create_at', '3': 6, '4': 1, '5': 9, '10': 'createAt'},
    const {'1': 'menu_status', '3': 7, '4': 1, '5': 14, '6': '.manager.Status', '10': 'menuStatus'},
  ],
};

/// Descriptor for `MenuInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List menuInfoDescriptor = $convert.base64Decode('CghNZW51SW5mbxIOCgJpZBgBIAEoBVICaWQSGwoJbWVudV9uYW1lGAIgASgJUghtZW51TmFtZRIfCgttZW51X3JvdXRlchgDIAEoCVIKbWVudVJvdXRlchIbCglwYXJlbnRfaWQYBCABKAVSCHBhcmVudElkEhsKCW1lbnVfaWNvbhgFIAEoCVIIbWVudUljb24SGwoJY3JlYXRlX2F0GAYgASgJUghjcmVhdGVBdBIwCgttZW51X3N0YXR1cxgHIAEoDjIPLm1hbmFnZXIuU3RhdHVzUgptZW51U3RhdHVz');
@$core.Deprecated('Use createMenuRequestDescriptor instead')
const CreateMenuRequest$json = const {
  '1': 'CreateMenuRequest',
  '2': const [
    const {'1': 'menu_name', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'menuName'},
    const {'1': 'menu_router', '3': 2, '4': 1, '5': 9, '10': 'menuRouter'},
    const {'1': 'parent_id', '3': 3, '4': 1, '5': 5, '10': 'parentId'},
    const {'1': 'menu_icon', '3': 4, '4': 1, '5': 9, '10': 'menuIcon'},
  ],
};

/// Descriptor for `CreateMenuRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createMenuRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVNZW51UmVxdWVzdBIkCgltZW51X25hbWUYASABKAlCB/pCBHICEAFSCG1lbnVOYW1lEh8KC21lbnVfcm91dGVyGAIgASgJUgptZW51Um91dGVyEhsKCXBhcmVudF9pZBgDIAEoBVIIcGFyZW50SWQSGwoJbWVudV9pY29uGAQgASgJUghtZW51SWNvbg==');
@$core.Deprecated('Use getMenuListResponseDescriptor instead')
const GetMenuListResponse$json = const {
  '1': 'GetMenuListResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'data', '3': 3, '4': 3, '5': 11, '6': '.manager.MenuInfo', '10': 'data'},
  ],
};

/// Descriptor for `GetMenuListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getMenuListResponseDescriptor = $convert.base64Decode('ChNHZXRNZW51TGlzdFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZRIlCgRkYXRhGAMgAygLMhEubWFuYWdlci5NZW51SW5mb1IEZGF0YQ==');
@$core.Deprecated('Use menuIdDescriptor instead')
const MenuId$json = const {
  '1': 'MenuId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '8': const {}, '10': 'id'},
  ],
};

/// Descriptor for `MenuId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List menuIdDescriptor = $convert.base64Decode('CgZNZW51SWQSFwoCaWQYASABKAVCB/pCBBoCKAFSAmlk');
@$core.Deprecated('Use updateMenuRequestDescriptor instead')
const UpdateMenuRequest$json = const {
  '1': 'UpdateMenuRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '8': const {}, '10': 'id'},
    const {'1': 'menu_name', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'menuName'},
    const {'1': 'menu_router', '3': 3, '4': 1, '5': 9, '10': 'menuRouter'},
    const {'1': 'parent_id', '3': 4, '4': 1, '5': 5, '10': 'parentId'},
    const {'1': 'menu_icon', '3': 5, '4': 1, '5': 9, '10': 'menuIcon'},
    const {'1': 'menu_status', '3': 6, '4': 1, '5': 14, '6': '.manager.Status', '10': 'menuStatus'},
  ],
};

/// Descriptor for `UpdateMenuRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateMenuRequestDescriptor = $convert.base64Decode('ChFVcGRhdGVNZW51UmVxdWVzdBIXCgJpZBgBIAEoBUIH+kIEGgIoAVICaWQSJAoJbWVudV9uYW1lGAIgASgJQgf6QgRyAhABUghtZW51TmFtZRIfCgttZW51X3JvdXRlchgDIAEoCVIKbWVudVJvdXRlchIbCglwYXJlbnRfaWQYBCABKAVSCHBhcmVudElkEhsKCW1lbnVfaWNvbhgFIAEoCVIIbWVudUljb24SMAoLbWVudV9zdGF0dXMYBiABKA4yDy5tYW5hZ2VyLlN0YXR1c1IKbWVudVN0YXR1cw==');
const ManagerServiceBase$json = const {
  '1': 'ManagerService',
  '2': const [
    const {'1': 'CreateRole', '2': '.manager.Role', '3': '.manager.Response'},
    const {'1': 'GetRoleList', '2': '.manager.EmptyRequest', '3': '.manager.GetRoleListResponse'},
    const {'1': 'UpdateRole', '2': '.manager.Role', '3': '.manager.Response'},
    const {'1': 'DeleteRole', '2': '.manager.RoleId', '3': '.manager.Response'},
    const {'1': 'RoleBindMenu', '2': '.manager.RoleBindMenuRequest', '3': '.manager.Response'},
    const {'1': 'GetRoleBindMenu', '2': '.manager.RoleId', '3': '.manager.GetRoleBindMenuResponse'},
    const {'1': 'AccountBindRole', '2': '.manager.AccountBindRoleRequest', '3': '.manager.Response'},
    const {'1': 'GetAccountBindRole', '2': '.manager.AccountId', '3': '.manager.GetAccountBindRoleResponse'},
    const {'1': 'GetAccountMenu', '2': '.manager.EmptyRequest', '3': '.manager.GetAccountMenuResponse'},
    const {'1': 'CreateMenu', '2': '.manager.CreateMenuRequest', '3': '.manager.Response'},
    const {'1': 'GetMenuList', '2': '.manager.EmptyRequest', '3': '.manager.GetMenuListResponse'},
    const {'1': 'DeleteMenu', '2': '.manager.MenuId', '3': '.manager.Response'},
    const {'1': 'UpdateMenu', '2': '.manager.UpdateMenuRequest', '3': '.manager.Response'},
  ],
};

@$core.Deprecated('Use managerServiceDescriptor instead')
const ManagerServiceBase$messageJson = const {
  '.manager.Role': Role$json,
  '.manager.Response': Response$json,
  '.manager.EmptyRequest': EmptyRequest$json,
  '.manager.GetRoleListResponse': GetRoleListResponse$json,
  '.manager.RoleId': RoleId$json,
  '.manager.RoleBindMenuRequest': RoleBindMenuRequest$json,
  '.manager.GetRoleBindMenuResponse': GetRoleBindMenuResponse$json,
  '.manager.AccountBindRoleRequest': AccountBindRoleRequest$json,
  '.manager.AccountId': AccountId$json,
  '.manager.GetAccountBindRoleResponse': GetAccountBindRoleResponse$json,
  '.manager.GetAccountMenuResponse': GetAccountMenuResponse$json,
  '.manager.MenuInfo': MenuInfo$json,
  '.manager.CreateMenuRequest': CreateMenuRequest$json,
  '.manager.GetMenuListResponse': GetMenuListResponse$json,
  '.manager.MenuId': MenuId$json,
  '.manager.UpdateMenuRequest': UpdateMenuRequest$json,
};

/// Descriptor for `ManagerService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List managerServiceDescriptor = $convert.base64Decode('Cg5NYW5hZ2VyU2VydmljZRIuCgpDcmVhdGVSb2xlEg0ubWFuYWdlci5Sb2xlGhEubWFuYWdlci5SZXNwb25zZRJCCgtHZXRSb2xlTGlzdBIVLm1hbmFnZXIuRW1wdHlSZXF1ZXN0GhwubWFuYWdlci5HZXRSb2xlTGlzdFJlc3BvbnNlEi4KClVwZGF0ZVJvbGUSDS5tYW5hZ2VyLlJvbGUaES5tYW5hZ2VyLlJlc3BvbnNlEjAKCkRlbGV0ZVJvbGUSDy5tYW5hZ2VyLlJvbGVJZBoRLm1hbmFnZXIuUmVzcG9uc2USPwoMUm9sZUJpbmRNZW51EhwubWFuYWdlci5Sb2xlQmluZE1lbnVSZXF1ZXN0GhEubWFuYWdlci5SZXNwb25zZRJECg9HZXRSb2xlQmluZE1lbnUSDy5tYW5hZ2VyLlJvbGVJZBogLm1hbmFnZXIuR2V0Um9sZUJpbmRNZW51UmVzcG9uc2USRQoPQWNjb3VudEJpbmRSb2xlEh8ubWFuYWdlci5BY2NvdW50QmluZFJvbGVSZXF1ZXN0GhEubWFuYWdlci5SZXNwb25zZRJNChJHZXRBY2NvdW50QmluZFJvbGUSEi5tYW5hZ2VyLkFjY291bnRJZBojLm1hbmFnZXIuR2V0QWNjb3VudEJpbmRSb2xlUmVzcG9uc2USSAoOR2V0QWNjb3VudE1lbnUSFS5tYW5hZ2VyLkVtcHR5UmVxdWVzdBofLm1hbmFnZXIuR2V0QWNjb3VudE1lbnVSZXNwb25zZRI7CgpDcmVhdGVNZW51EhoubWFuYWdlci5DcmVhdGVNZW51UmVxdWVzdBoRLm1hbmFnZXIuUmVzcG9uc2USQgoLR2V0TWVudUxpc3QSFS5tYW5hZ2VyLkVtcHR5UmVxdWVzdBocLm1hbmFnZXIuR2V0TWVudUxpc3RSZXNwb25zZRIwCgpEZWxldGVNZW51Eg8ubWFuYWdlci5NZW51SWQaES5tYW5hZ2VyLlJlc3BvbnNlEjsKClVwZGF0ZU1lbnUSGi5tYW5hZ2VyLlVwZGF0ZU1lbnVSZXF1ZXN0GhEubWFuYWdlci5SZXNwb25zZQ==');
