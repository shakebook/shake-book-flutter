///
//  Generated code. Do not modify.
//  source: file.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use responseDescriptor instead')
const Response$json = const {
  '1': 'Response',
  '2': const [
    const {'1': 'error', '3': 1, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'code', '3': 2, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Response`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List responseDescriptor = $convert.base64Decode('CghSZXNwb25zZRIUCgVlcnJvchgBIAEoCVIFZXJyb3ISEgoEY29kZRgCIAEoBVIEY29kZRIYCgdtZXNzYWdlGAMgASgJUgdtZXNzYWdl');
@$core.Deprecated('Use uploadRequestDescriptor instead')
const UploadRequest$json = const {
  '1': 'UploadRequest',
  '2': const [
    const {'1': 'file', '3': 1, '4': 1, '5': 12, '10': 'file'},
  ],
};

/// Descriptor for `UploadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uploadRequestDescriptor = $convert.base64Decode('Cg1VcGxvYWRSZXF1ZXN0EhIKBGZpbGUYASABKAxSBGZpbGU=');
const FileServiceBase$json = const {
  '1': 'FileService',
  '2': const [
    const {'1': 'Upload', '2': '.shakebook.UploadRequest', '3': '.shakebook.Response'},
  ],
};

@$core.Deprecated('Use fileServiceDescriptor instead')
const FileServiceBase$messageJson = const {
  '.shakebook.UploadRequest': UploadRequest$json,
  '.shakebook.Response': Response$json,
};

/// Descriptor for `FileService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List fileServiceDescriptor = $convert.base64Decode('CgtGaWxlU2VydmljZRI3CgZVcGxvYWQSGC5zaGFrZWJvb2suVXBsb2FkUmVxdWVzdBoTLnNoYWtlYm9vay5SZXNwb25zZQ==');
