import 'package:flutter/material.dart';
import 'package:students/common/shared.dart';
import 'package:students/main.dart';
import 'package:students/pages/found/found.dart';
import 'package:students/pages/my/components/person_widget.dart';
import 'package:students/pages/my/data/my_data.dart';
import 'package:students/pages/my/model/my_model.dart';
import 'package:giffy_dialog/giffy_dialog.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyPage();
}

class _MyPage extends State<MyPage> {
  MyModel _myModel;
  Color _pageColor = Colors.grey;
  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future _getData() async {
    setState(() {
      _myModel = MyModel.fromJson(myJson);
    });
  }

  void _signout() {
    BuildContext dialogContext;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        dialogContext = context;
        return NetworkGiffyDialog(
          key: Key("SIGN_OUT"),
          image: Image.asset(
            "assets/images/gif14.gif",
            fit: BoxFit.cover,
          ),
          entryAnimation: EntryAnimation.TOP_LEFT,
          title: Text(
            '退出登录',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w600),
          ),
          description: Text(
            '退出登录将会影响点赞、收藏、评论、阅读等功能，你确定要退出登录吗？',
            textAlign: TextAlign.center,
          ),
          buttonOkText: Text('确定'),
          buttonCancelText: Text("取消"),
          buttonOkColor: Colors.blue,
          onOkButtonPressed: () {
            Navigator.pop(dialogContext);
            Shared.getPrefs().setString(Shared.tokenKey, null);
            Shared.signout();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyApp(),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/my_page.jpg',
              fit: BoxFit.fill,
            ),
            PersonWidget(
              myModel: _myModel,
            ),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoundPage(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 14, 20, 14),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.grey[200],
                            width: 0.6,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Wrap(
                              children: [
                                Icon(
                                  Icons.work_sharp,
                                  color: _pageColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('我的作品'),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey[300],
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 14, 20, 0),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.grey[200],
                          width: 0.6,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Wrap(
                            children: [
                              Icon(
                                Icons.message_sharp,
                                color: _pageColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('消息'),
                              Container(
                                transform: Matrix4.translationValues(0, -5, 0),
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: Colors.red[600],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  '19',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey[300],
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 14, 20, 14),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.grey[200],
                          width: 0.6,
                          style: BorderStyle.solid,
                        ),
                        bottom: BorderSide(
                          color: Colors.grey[200],
                          width: 0.6,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Wrap(
                            children: [
                              Icon(
                                Icons.settings,
                                color: _pageColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('设置'),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey[300],
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _signout();
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 14, 20, 14),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Colors.grey[200],
                            width: 0.6,
                            style: BorderStyle.solid,
                          ),
                          bottom: BorderSide(
                            color: Colors.grey[200],
                            width: 0.6,
                            style: BorderStyle.solid,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Wrap(
                              children: [
                                Icon(
                                  Icons.outbond_outlined,
                                  color: _pageColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('退出'),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            color: Colors.grey[300],
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
