///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use accountStatusDescriptor instead')
const AccountStatus$json = const {
  '1': 'AccountStatus',
  '2': const [
    const {'1': 'NORMAL', '2': 0},
    const {'1': 'DISABLE', '2': 1},
    const {'1': 'LOCK', '2': 2},
    const {'1': 'DELETE', '2': 3},
  ],
};

/// Descriptor for `AccountStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accountStatusDescriptor = $convert.base64Decode('Cg1BY2NvdW50U3RhdHVzEgoKBk5PUk1BTBAAEgsKB0RJU0FCTEUQARIICgRMT0NLEAISCgoGREVMRVRFEAM=');
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
@$core.Deprecated('Use emptyRequestDescriptor instead')
const EmptyRequest$json = const {
  '1': 'EmptyRequest',
};

/// Descriptor for `EmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyRequestDescriptor = $convert.base64Decode('CgxFbXB0eVJlcXVlc3Q=');
@$core.Deprecated('Use signUpRequestDescriptor instead')
const SignUpRequest$json = const {
  '1': 'SignUpRequest',
  '2': const [
    const {'1': 'account_name', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'accountName'},
    const {'1': 'account_email', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'accountEmail'},
    const {'1': 'account_password', '3': 3, '4': 1, '5': 9, '8': const {}, '10': 'accountPassword'},
    const {'1': 'email_valid_code', '3': 4, '4': 1, '5': 9, '8': const {}, '10': 'emailValidCode'},
  ],
};

/// Descriptor for `SignUpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signUpRequestDescriptor = $convert.base64Decode('Cg1TaWduVXBSZXF1ZXN0EioKDGFjY291bnRfbmFtZRgBIAEoCUIH+kIEcgIQBlILYWNjb3VudE5hbWUSLAoNYWNjb3VudF9lbWFpbBgCIAEoCUIH+kIEcgJgAVIMYWNjb3VudEVtYWlsEjQKEGFjY291bnRfcGFzc3dvcmQYAyABKAlCCfpCBnIEEAYYQFIPYWNjb3VudFBhc3N3b3JkEjIKEGVtYWlsX3ZhbGlkX2NvZGUYBCABKAlCCPpCBXIDmAEGUg5lbWFpbFZhbGlkQ29kZQ==');
@$core.Deprecated('Use accountIdDescriptor instead')
const AccountId$json = const {
  '1': 'AccountId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

/// Descriptor for `AccountId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountIdDescriptor = $convert.base64Decode('CglBY2NvdW50SWQSDgoCaWQYASABKANSAmlk');
@$core.Deprecated('Use signInRequestDescriptor instead')
const SignInRequest$json = const {
  '1': 'SignInRequest',
  '2': const [
    const {'1': 'account_name', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'accountName'},
    const {'1': 'account_password', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'accountPassword'},
  ],
};

/// Descriptor for `SignInRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInRequestDescriptor = $convert.base64Decode('Cg1TaWduSW5SZXF1ZXN0EioKDGFjY291bnRfbmFtZRgBIAEoCUIH+kIEcgIQBlILYWNjb3VudE5hbWUSMgoQYWNjb3VudF9wYXNzd29yZBgCIAEoCUIH+kIEcgIQBlIPYWNjb3VudFBhc3N3b3Jk');
@$core.Deprecated('Use signInResponseDescriptor instead')
const SignInResponse$json = const {
  '1': 'SignInResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'data', '3': 3, '4': 1, '5': 9, '10': 'data'},
  ],
};

/// Descriptor for `SignInResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signInResponseDescriptor = $convert.base64Decode('Cg5TaWduSW5SZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2USEgoEZGF0YRgDIAEoCVIEZGF0YQ==');
@$core.Deprecated('Use updateAccountDescriptRequestDescriptor instead')
const UpdateAccountDescriptRequest$json = const {
  '1': 'UpdateAccountDescriptRequest',
  '2': const [
    const {'1': 'account_nickname', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'accountNickname'},
    const {'1': 'account_name', '3': 2, '4': 1, '5': 9, '8': const {}, '10': 'accountName'},
    const {'1': 'account_desc', '3': 3, '4': 1, '5': 9, '8': const {}, '10': 'accountDesc'},
  ],
};

/// Descriptor for `UpdateAccountDescriptRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAccountDescriptRequestDescriptor = $convert.base64Decode('ChxVcGRhdGVBY2NvdW50RGVzY3JpcHRSZXF1ZXN0EjQKEGFjY291bnRfbmlja25hbWUYASABKAlCCfpCBnIEEAEYClIPYWNjb3VudE5pY2tuYW1lEiwKDGFjY291bnRfbmFtZRgCIAEoCUIJ+kIGcgQQBhgUUgthY2NvdW50TmFtZRIsCgxhY2NvdW50X2Rlc2MYAyABKAlCCfpCBnIEEAEYZFILYWNjb3VudERlc2M=');
@$core.Deprecated('Use accountDescriptor instead')
const Account$json = const {
  '1': 'Account',
  '2': const [
    const {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.shakebook.AccountInfo', '10': 'info'},
    const {'1': 'account_password', '3': 2, '4': 1, '5': 9, '10': 'accountPassword'},
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode('CgdBY2NvdW50EioKBGluZm8YASABKAsyFi5zaGFrZWJvb2suQWNjb3VudEluZm9SBGluZm8SKQoQYWNjb3VudF9wYXNzd29yZBgCIAEoCVIPYWNjb3VudFBhc3N3b3Jk');
@$core.Deprecated('Use validEmailRequestDescriptor instead')
const ValidEmailRequest$json = const {
  '1': 'ValidEmailRequest',
  '2': const [
    const {'1': 'account_email', '3': 1, '4': 1, '5': 9, '8': const {}, '10': 'accountEmail'},
  ],
};

/// Descriptor for `ValidEmailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validEmailRequestDescriptor = $convert.base64Decode('ChFWYWxpZEVtYWlsUmVxdWVzdBIsCg1hY2NvdW50X2VtYWlsGAEgASgJQgf6QgRyAmABUgxhY2NvdW50RW1haWw=');
@$core.Deprecated('Use getAccountResponseDescriptor instead')
const GetAccountResponse$json = const {
  '1': 'GetAccountResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'data', '3': 3, '4': 1, '5': 11, '6': '.shakebook.AccountInfo', '10': 'data'},
  ],
};

/// Descriptor for `GetAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountResponseDescriptor = $convert.base64Decode('ChJHZXRBY2NvdW50UmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2VzcxIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdlEioKBGRhdGEYAyABKAsyFi5zaGFrZWJvb2suQWNjb3VudEluZm9SBGRhdGE=');
@$core.Deprecated('Use accountInfoDescriptor instead')
const AccountInfo$json = const {
  '1': 'AccountInfo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
    const {'1': 'account_name', '3': 2, '4': 1, '5': 9, '10': 'accountName'},
    const {'1': 'account_phone', '3': 3, '4': 1, '5': 9, '10': 'accountPhone'},
    const {'1': 'account_email', '3': 4, '4': 1, '5': 9, '10': 'accountEmail'},
    const {'1': 'signup_at', '3': 5, '4': 1, '5': 9, '10': 'signupAt'},
    const {'1': 'last_time', '3': 6, '4': 1, '5': 9, '10': 'lastTime'},
    const {'1': 'account_status', '3': 7, '4': 1, '5': 14, '6': '.shakebook.AccountStatus', '10': 'accountStatus'},
    const {'1': 'image_url', '3': 8, '4': 1, '5': 9, '10': 'imageUrl'},
    const {'1': 'background_url', '3': 9, '4': 1, '5': 9, '10': 'backgroundUrl'},
    const {'1': 'account_desc', '3': 10, '4': 1, '5': 9, '10': 'accountDesc'},
    const {'1': 'thumbs_up', '3': 11, '4': 1, '5': 3, '10': 'thumbsUp'},
    const {'1': 'focus_number', '3': 12, '4': 1, '5': 3, '10': 'focusNumber'},
    const {'1': 'fans_number', '3': 13, '4': 1, '5': 3, '10': 'fansNumber'},
    const {'1': 'account_nickname', '3': 14, '4': 1, '5': 9, '10': 'accountNickname'},
  ],
};

/// Descriptor for `AccountInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountInfoDescriptor = $convert.base64Decode('CgtBY2NvdW50SW5mbxIOCgJpZBgBIAEoA1ICaWQSIQoMYWNjb3VudF9uYW1lGAIgASgJUgthY2NvdW50TmFtZRIjCg1hY2NvdW50X3Bob25lGAMgASgJUgxhY2NvdW50UGhvbmUSIwoNYWNjb3VudF9lbWFpbBgEIAEoCVIMYWNjb3VudEVtYWlsEhsKCXNpZ251cF9hdBgFIAEoCVIIc2lnbnVwQXQSGwoJbGFzdF90aW1lGAYgASgJUghsYXN0VGltZRI/Cg5hY2NvdW50X3N0YXR1cxgHIAEoDjIYLnNoYWtlYm9vay5BY2NvdW50U3RhdHVzUg1hY2NvdW50U3RhdHVzEhsKCWltYWdlX3VybBgIIAEoCVIIaW1hZ2VVcmwSJQoOYmFja2dyb3VuZF91cmwYCSABKAlSDWJhY2tncm91bmRVcmwSIQoMYWNjb3VudF9kZXNjGAogASgJUgthY2NvdW50RGVzYxIbCgl0aHVtYnNfdXAYCyABKANSCHRodW1ic1VwEiEKDGZvY3VzX251bWJlchgMIAEoA1ILZm9jdXNOdW1iZXISHwoLZmFuc19udW1iZXIYDSABKANSCmZhbnNOdW1iZXISKQoQYWNjb3VudF9uaWNrbmFtZRgOIAEoCVIPYWNjb3VudE5pY2tuYW1l');
@$core.Deprecated('Use getAccountListResponseDescriptor instead')
const GetAccountListResponse$json = const {
  '1': 'GetAccountListResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'data', '3': 3, '4': 3, '5': 11, '6': '.shakebook.AccountInfo', '10': 'data'},
  ],
};

/// Descriptor for `GetAccountListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccountListResponseDescriptor = $convert.base64Decode('ChZHZXRBY2NvdW50TGlzdFJlc3BvbnNlEhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZRIqCgRkYXRhGAMgAygLMhYuc2hha2Vib29rLkFjY291bnRJbmZvUgRkYXRh');
const AccountServiceBase$json = const {
  '1': 'AccountService',
  '2': const [
    const {'1': 'SignUp', '2': '.shakebook.SignUpRequest', '3': '.shakebook.Response'},
    const {'1': 'SignIn', '2': '.shakebook.SignInRequest', '3': '.shakebook.SignInResponse'},
    const {'1': 'SignOut', '2': '.shakebook.AccountId', '3': '.shakebook.Response'},
    const {'1': 'ValidEmail', '2': '.shakebook.ValidEmailRequest', '3': '.shakebook.Response'},
    const {'1': 'UpdateAccountDescript', '2': '.shakebook.UpdateAccountDescriptRequest', '3': '.shakebook.Response'},
    const {'1': 'GetAccount', '2': '.shakebook.EmptyRequest', '3': '.shakebook.GetAccountResponse'},
    const {'1': 'GetAccountList', '2': '.shakebook.EmptyRequest', '3': '.shakebook.GetAccountListResponse'},
  ],
};

@$core.Deprecated('Use accountServiceDescriptor instead')
const AccountServiceBase$messageJson = const {
  '.shakebook.SignUpRequest': SignUpRequest$json,
  '.shakebook.Response': Response$json,
  '.shakebook.SignInRequest': SignInRequest$json,
  '.shakebook.SignInResponse': SignInResponse$json,
  '.shakebook.AccountId': AccountId$json,
  '.shakebook.ValidEmailRequest': ValidEmailRequest$json,
  '.shakebook.UpdateAccountDescriptRequest': UpdateAccountDescriptRequest$json,
  '.shakebook.EmptyRequest': EmptyRequest$json,
  '.shakebook.GetAccountResponse': GetAccountResponse$json,
  '.shakebook.AccountInfo': AccountInfo$json,
  '.shakebook.GetAccountListResponse': GetAccountListResponse$json,
};

/// Descriptor for `AccountService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List accountServiceDescriptor = $convert.base64Decode('Cg5BY2NvdW50U2VydmljZRI3CgZTaWduVXASGC5zaGFrZWJvb2suU2lnblVwUmVxdWVzdBoTLnNoYWtlYm9vay5SZXNwb25zZRI9CgZTaWduSW4SGC5zaGFrZWJvb2suU2lnbkluUmVxdWVzdBoZLnNoYWtlYm9vay5TaWduSW5SZXNwb25zZRI0CgdTaWduT3V0EhQuc2hha2Vib29rLkFjY291bnRJZBoTLnNoYWtlYm9vay5SZXNwb25zZRI/CgpWYWxpZEVtYWlsEhwuc2hha2Vib29rLlZhbGlkRW1haWxSZXF1ZXN0GhMuc2hha2Vib29rLlJlc3BvbnNlElUKFVVwZGF0ZUFjY291bnREZXNjcmlwdBInLnNoYWtlYm9vay5VcGRhdGVBY2NvdW50RGVzY3JpcHRSZXF1ZXN0GhMuc2hha2Vib29rLlJlc3BvbnNlEkQKCkdldEFjY291bnQSFy5zaGFrZWJvb2suRW1wdHlSZXF1ZXN0Gh0uc2hha2Vib29rLkdldEFjY291bnRSZXNwb25zZRJMCg5HZXRBY2NvdW50TGlzdBIXLnNoYWtlYm9vay5FbXB0eVJlcXVlc3QaIS5zaGFrZWJvb2suR2V0QWNjb3VudExpc3RSZXNwb25zZQ==');
