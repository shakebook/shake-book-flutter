import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:students/api/v1/account.pb.dart';
import 'package:students/api/v1/api.dart';
import 'package:students/common/shared.dart';
import 'package:students/pages/account/common/defined.dart';
import 'package:http/http.dart' as http;
import '../../constants.dart';
import 'package:students/api/v1/account.pb.dart' as accountpb;

class EditPage extends StatefulWidget {
  @override
  _EditPage createState() => _EditPage();
}

class _EditPage extends State<EditPage> {
  var _accountController = TextEditingController();
  var _nicknameController = TextEditingController();
  var _descController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _accountController.text = Shared.getPrefs().getString(Shared.accountName);
    _descController.text = Shared.getPrefs().getString(Shared.accountDesc);
    _nicknameController.text =
        Shared.getPrefs().getString(Shared.accountNickname);
  }

  Widget _showClean(String v, TextEditingController c) {
    return IconButton(
      onPressed: () => c.clear(),
      icon: Icon(
        Icons.clear,
        size: 20,
      ),
    );
  }

  _validForm() {
    if (_nicknameController.text.trim().length == 0) {
      EasyLoading.showError("昵称不能为空");
      return;
    }

    if (_accountController.text.trim().length < 6) {
      EasyLoading.showError("抖书号大于6位");
      return;
    }
    RegExp reg = new RegExp(r'[0-9A-Za-z]');
    if (!reg.hasMatch(_accountController.text.trim())) {
      EasyLoading.showError("抖书号是数字、字母组成");
      return;
    }
    if (_descController.text.trim().length == 0) {
      EasyLoading.showError("个人简介不能为空");
      return;
    }
    _saveForm();
  }

  _saveForm() async {
    var req = UpdateAccountDescriptRequest(
      accountDesc: _descController.text.trim(),
      accountName: _accountController.text.trim(),
      accountNickname: _nicknameController.text.trim(),
    ).toProto3Json();
    Map<String, String> userHeader = {
      "Grpc-metadata-token": "BEARER " + await Shared.getToken()
    };
    await http
        .put(RequestURL.account, body: jsonEncode(req), headers: userHeader)
        .then((res) {
      EasyLoading.showError(res.statusCode.toString());
      if (res.statusCode == 200) {
        accountpb.Response model =
            Shared.tomodel(res.bodyBytes, accountpb.Response());
        if (model.success) {
          Shared.getPrefs().setString(
              Shared.accountNickname, _nicknameController.text.trim());
          Shared.getPrefs()
              .setString(Shared.accountName, _accountController.text.trim());
          Shared.getPrefs()
              .setString(Shared.accountDesc, _descController.text.trim());
          // EasyLoading.showSuccess('更新成功').then(
          //   (value) => Shared.navigaTo(context, MyPage())
          // );
          //Navigator.of(context).pop("xxxx");
          EasyLoading.showSuccess('更新成功!')
              .then((value) async => Navigator.pop(context, true));
        } else {
          Shared.error(res.bodyBytes);
        }
      } else {
        Shared.error(res.bodyBytes);
      }
    }).catchError((err) {
      EasyLoading.showError("操作失败");
      print(err);
    }).whenComplete(() => EasyLoading.dismiss());
  }

  Widget _submitWidget() {
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
                _validForm();
              },
              child: Text(
                "保存",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        shadowColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.black54, //change your color here
        ),
        title: Text(
          '修改个人信息',
          style: TextStyle(
            fontSize: 17,
            color: Colors.black54,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "昵称",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              TextField(
                controller: _nicknameController,
                // onChanged: (v) {
                //   setState(() {
                //     _nickname = v;
                //   });
                // },
                autofocus: true,
                maxLength: 10,
                decoration: InputDecoration(
                  suffixIcon:
                      _showClean(_nicknameController.text, _nicknameController),
                  hintText: "如：放牛班的春天",
                  hintStyle: TextStyle(
                    color: Colors.grey[400],
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[100]),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[200]),
                  ),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Text(
                "抖书号",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.name,
                controller: _accountController,
                // onChanged: (v) {
                //   setState(() {
                //     _accountname = v;
                //   });
                // },
                maxLength: 20,
                validator: ValidForm.accountNameValidator,
                style: TextStyle(
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  suffixIcon:
                      _showClean(_accountController.text, _accountController),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[300]),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[300]),
                  ),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "个人简介",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () => _descController.clear(),
                    icon: Icon(
                      Icons.clear,
                      size: 20,
                    ),
                  ),
                ],
              ),
              TextField(
                maxLength: 100,
                maxLines: 4,
                controller: _descController,
                // onChanged: (v) {
                //   setState(() {
                //     _accountdesc = v;
                //   });
                // },
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[300]),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue[300]),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _submitWidget(),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
