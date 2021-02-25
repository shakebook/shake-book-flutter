///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use genTokenRequestDescriptor instead')
const GenTokenRequest$json = const {
  '1': 'GenTokenRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `GenTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genTokenRequestDescriptor = $convert.base64Decode('Cg9HZW5Ub2tlblJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use genTokenResponseDescriptor instead')
const GenTokenResponse$json = const {
  '1': 'GenTokenResponse',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `GenTokenResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List genTokenResponseDescriptor = $convert.base64Decode('ChBHZW5Ub2tlblJlc3BvbnNlEhQKBXRva2VuGAEgASgJUgV0b2tlbg==');
const AuthServiceBase$json = const {
  '1': 'AuthService',
  '2': const [
    const {'1': 'GenToken', '2': '.shakebook.GenTokenRequest', '3': '.shakebook.GenTokenResponse'},
  ],
};

@$core.Deprecated('Use authServiceDescriptor instead')
const AuthServiceBase$messageJson = const {
  '.shakebook.GenTokenRequest': GenTokenRequest$json,
  '.shakebook.GenTokenResponse': GenTokenResponse$json,
};

/// Descriptor for `AuthService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List authServiceDescriptor = $convert.base64Decode('CgtBdXRoU2VydmljZRJDCghHZW5Ub2tlbhIaLnNoYWtlYm9vay5HZW5Ub2tlblJlcXVlc3QaGy5zaGFrZWJvb2suR2VuVG9rZW5SZXNwb25zZQ==');
