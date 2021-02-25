import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:students/api/v1/account.pb.dart';
import 'package:students/pages/account/login_page.dart';
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:students/api/v1/account.pb.dart' as accountpb;

class Shared {
  static String tokenKey = "token";
  static String accountName = "accountName";
  static String accountEmail = "accountEmail";
  static String accountDesc = "accountDesc";
  static String imageUrl = "imageUrl";
  static String backgroundUrl = "backgroundUrl";
  static String accountPhone = "accountPhone";
  static String accountNickname = "accountNickname";
  static SharedPreferences _prefs;
  static SharedPreferences getPrefs() {
    return _prefs;
  }

  static Future<void> initPreferences() async {
    if (_prefs == null) {
      _prefs = await SharedPreferences.getInstance();
    }
  }

  static Future<String> getToken() async {
    return _prefs.getString(tokenKey);
  }

  static Future<void> setAccount(accountpb.AccountInfo a) async {
    _prefs.setString(accountName, a.accountName);
    _prefs.setString(accountEmail, a.accountEmail);
    _prefs.setString(accountDesc, a.accountDesc);
    _prefs.setString(imageUrl, a.imageUrl);
    _prefs.setString(backgroundUrl, a.backgroundUrl);
    _prefs.setString(accountPhone, a.accountPhone);
    _prefs.setString(accountNickname, a.accountNickname);
  }

  static Future<void> signout() async {
    _prefs.clear();
  }

  static Future<bool> checkLogin(BuildContext context) async {
    await initPreferences();
    //return _prefs.getString(_tokenKey) != null;
    bool login = _prefs.getString(tokenKey) != null;
    if (!login) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    }
    return login;
  }

  static error(Uint8List body) {
    Utf8Decoder utf8decoder = Utf8Decoder();
    var result = json.decode(utf8decoder.convert(body));
    Response model = Response();
    model.mergeFromProto3Json(result);
    EasyLoading.showError(model.message);
  }

  static T tomodel<T extends $pb.GeneratedMessage>(Uint8List body, T model) {
    Utf8Decoder utf8decoder = Utf8Decoder();
    var result = json.decode(utf8decoder.convert(body));
    model.mergeFromProto3Json(result);
    return model;
  }

  static navigaTo<T extends Widget>(BuildContext ctx, T w) {
    Navigator.push(
      ctx,
      MaterialPageRoute(
        builder: (context) => w,
      ),
    );
  }
}
