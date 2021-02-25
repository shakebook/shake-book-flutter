import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:students/api/v1/api.dart';
import 'package:students/common/shared.dart';
import 'package:line_icons/line_icons.dart';
import 'package:students/api/v1/account.pb.dart';
import 'package:students/constants.dart';
import 'package:students/main.dart';
import 'package:students/pages/account/common/defined.dart';
import 'package:students/pages/account/components/input_widget.dart';
import 'package:students/pages/account/sigup_page.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _accountName, _accountPassword;
  void _submit() async {
    await EasyLoading.show(
      status: 'loading...',
      maskType: EasyLoadingMaskType.black,
    );

    var req = SignInRequest(
      accountName: _accountName,
      accountPassword: _accountPassword,
    ).toProto3Json();
    var reqdata = jsonEncode(req);
    await http
        .post(
      RequestURL.signin,
      body: reqdata,
    )
        .then((res) {
      if (res.statusCode == 200) {
        _formKey.currentState.reset();
        SignInResponse model = Shared.tomodel(res.bodyBytes, SignInResponse());
        Shared.getPrefs().setString(Shared.tokenKey, model.data);
        Shared.navigaTo(context, MyApp());
      } else {
        Shared.error(res.bodyBytes);
      }
    }).catchError((err) {
      print(err);
    }).whenComplete(() => EasyLoading.dismiss());
  }

  Widget _buildAccountName(String labelText) {
    return InputWidget(
      labelText: labelText,
      iconData: Icons.person,
      obscureText: false,
      validator: ValidForm.accountNameValidator,
      onChanged: (val) {
        setState(() {
          _accountName = val;
        });
      },
    );
  }

  Widget _buildLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              children: [
                Icon(
                  LineIcons.twitter,
                  size: MediaQuery.of(context).size.height / 14,
                  color: Colors.white,
                ),
                Text(
                  '抖书',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ))
      ],
    );
  }

  Widget _buildAccountPassword(String labelText) {
    return InputWidget(
      labelText: labelText,
      iconData: Icons.lock,
      obscureText: true,
      validator: ValidForm.passwordValidator,
      onChanged: (val) {
        setState(() {
          _accountPassword = val;
        });
      },
    );
  }

  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            height: 1.4 * (MediaQuery.of(context).size.height / 20),
            //width: 5 * (MediaQuery.of(context).size.width / 10),
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.only(
              left: 10,
              right: 10,
            ),
            child: RaisedButton(
              elevation: 5.0,
              color: mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _submit();
                }
              },
              child: Text(
                "登录",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontSize: MediaQuery.of(context).size.height / 40,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOrRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.all(7),
          child: Text("忘记密码？",
              style: TextStyle(
                fontSize: 16,
              )),
        ),
      ],
    );
  }

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "登录",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height / 40,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _buildAccountName("账号"),
                  SizedBox(
                    height: 13,
                  ),
                  _buildAccountPassword("密码"),
                  SizedBox(
                    height: 13,
                  ),
                  _buildLoginButton(),
                  _buildOrRow(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSignUpBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 40),
          child: FlatButton(
            onPressed: () {
              Shared.navigaTo(context, SignUpPage());
            },
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: '还没有账号? ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height / 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: '立即注册',
                  style: TextStyle(
                    color: mainColor,
                    fontSize: MediaQuery.of(context).size.height / 40,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ]),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xfff2f3f7),
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.56,
              width: MediaQuery.of(context).size.width,
              child: Container(
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: const Radius.circular(70),
                    bottomRight: const Radius.circular(70),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildLogo(),
                _buildContainer(),
                _buildSignUpBtn(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
