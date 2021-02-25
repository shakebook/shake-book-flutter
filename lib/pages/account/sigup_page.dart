import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:line_icons/line_icons.dart';
import 'package:students/api/v1/api.dart';
import 'package:students/common/shared.dart';
import 'package:students/constants.dart';
import 'package:students/api/v1/account.pb.dart';
import 'package:students/api/v1/account.pbserver.dart';
import 'package:http/http.dart' as http;
import 'package:students/pages/account/common/defined.dart';
import 'package:students/pages/account/components/input_widget.dart';
import 'package:students/pages/account/login_page.dart';
import 'package:students/api/v1/account.pb.dart' as accountpb;
import 'components/valid_email.widget.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPage createState() => _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _accountEmail, _accountPassword, _accountName;

  void _validemail() async {
    await EasyLoading.show(
      status: 'loading...',
      maskType: EasyLoadingMaskType.black,
    );

    var req = ValidEmailRequest(
      accountEmail: _accountEmail,
    ).toProto3Json();
    await http
        .post(
      RequestURL.validEmail,
      body: jsonEncode(req),
    )
        .then((res) {
      if (res.statusCode == 200) {
        Shared.navigaTo(context,
            ValidEmailPage(accountEmail: _accountEmail, submit: _submit));
      } else {
        EasyLoading.showError('验证邮箱失败');
      }
      print(res.toString());
    }).catchError((err) {
      print(err);
    }).whenComplete(() => EasyLoading.dismiss());
  }

  Future<void> _submit(String emailValidCode) async {
    await EasyLoading.show(
      status: 'loading...',
      maskType: EasyLoadingMaskType.black,
    );

    var req = SignUpRequest(
      accountEmail: _accountEmail,
      accountName: _accountName,
      accountPassword: _accountPassword,
      emailValidCode: emailValidCode,
    ).toProto3Json();
    await http.post(RequestURL.signup, body: jsonEncode(req)).then((res) {
      if (res.statusCode == 200) {
        accountpb.Response model =
            Shared.tomodel(res.bodyBytes, accountpb.Response());
        if (model.success) {
          _formKey.currentState.reset();
          EasyLoading.showSuccess('注册成功!').then(
            (value) => Shared.navigaTo(context, LoginPage()),
          );
        } else {
          Shared.error(res.bodyBytes);
        }
      } else {
        Shared.error(res.bodyBytes);
      }
    }).catchError((err) {
      EasyLoading.showError('注册失败');
    }).whenComplete(() => EasyLoading.dismiss());
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

  Widget _buildAccountEmail(String labelText) {
    return InputWidget(
      labelText: labelText,
      iconData: Icons.email,
      obscureText: false,
      validator: ValidForm.emailValidator,
      onChanged: (val) {
        setState(() {
          _accountEmail = val;
        });
      },
    );
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

  Widget _buildAccountPasswordConfirm(String labelText) {
    return InputWidget(
      labelText: labelText,
      iconData: Icons.lock,
      obscureText: true,
      validator: (val) => MatchValidator(errorText: '密码不一致')
          .validateMatch(val, _accountPassword),
      onChanged: (val) {
        setState(() {});
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
            //margin: EdgeInsets.only(bottom: 20),
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
                  _validemail();
                }
              },
              child: Text(
                "注册",
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

  Widget _buildContainer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.63,
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
                        "注册",
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
                  _buildAccountEmail("邮箱"),
                  _buildAccountPassword("密码"),
                  _buildAccountPasswordConfirm("确认密码"),
                  SizedBox(
                    height: 19,
                  ),
                  _buildLoginButton(),
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
              Shared.navigaTo(context, LoginPage());
            },
            child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: '已有账号? ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.height / 40,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: '立即登录',
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
        resizeToAvoidBottomPadding: true,
        backgroundColor: Color(0xfff2f3f7),
        body: SingleChildScrollView(
          child: Stack(
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
      ),
    );
  }
}
