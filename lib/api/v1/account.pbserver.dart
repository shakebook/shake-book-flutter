///
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:async' as $async;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dart:core' as $core;
import 'account.pb.dart' as $0;
import 'account.pbjson.dart';

export 'account.pb.dart';

abstract class AccountServiceBase extends $pb.GeneratedService {
  $async.Future<$0.Response> signUp($pb.ServerContext ctx, $0.SignUpRequest request);
  $async.Future<$0.SignInResponse> signIn($pb.ServerContext ctx, $0.SignInRequest request);
  $async.Future<$0.Response> signOut($pb.ServerContext ctx, $0.AccountId request);
  $async.Future<$0.Response> validEmail($pb.ServerContext ctx, $0.ValidEmailRequest request);
  $async.Future<$0.Response> updateAccountDescript($pb.ServerContext ctx, $0.UpdateAccountDescriptRequest request);
  $async.Future<$0.GetAccountResponse> getAccount($pb.ServerContext ctx, $0.EmptyRequest request);
  $async.Future<$0.GetAccountListResponse> getAccountList($pb.ServerContext ctx, $0.EmptyRequest request);

  $pb.GeneratedMessage createRequest($core.String method) {
    switch (method) {
      case 'SignUp': return $0.SignUpRequest();
      case 'SignIn': return $0.SignInRequest();
      case 'SignOut': return $0.AccountId();
      case 'ValidEmail': return $0.ValidEmailRequest();
      case 'UpdateAccountDescript': return $0.UpdateAccountDescriptRequest();
      case 'GetAccount': return $0.EmptyRequest();
      case 'GetAccountList': return $0.EmptyRequest();
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String method, $pb.GeneratedMessage request) {
    switch (method) {
      case 'SignUp': return this.signUp(ctx, request as $0.SignUpRequest);
      case 'SignIn': return this.signIn(ctx, request as $0.SignInRequest);
      case 'SignOut': return this.signOut(ctx, request as $0.AccountId);
      case 'ValidEmail': return this.validEmail(ctx, request as $0.ValidEmailRequest);
      case 'UpdateAccountDescript': return this.updateAccountDescript(ctx, request as $0.UpdateAccountDescriptRequest);
      case 'GetAccount': return this.getAccount(ctx, request as $0.EmptyRequest);
      case 'GetAccountList': return this.getAccountList(ctx, request as $0.EmptyRequest);
      default: throw $core.ArgumentError('Unknown method: $method');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => AccountServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => AccountServiceBase$messageJson;
}

