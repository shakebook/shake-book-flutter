import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:students/api/v1/api.dart';
import 'package:students/common/shared.dart';
import 'package:students/pages/collect/collect.dart';
import 'package:students/pages/home/home.dart';
import 'package:students/pages/my/my.dart';
import 'package:students/pages/search/search.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:students/api/v1/account.pb.dart' as accountpb;
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '抖书',
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   const Locale('zh', 'CN'),
      //   const Locale('en', 'US'),
      // ],
      home: MyHomePage(),
      theme: ThemeData.dark(),
      darkTheme: ThemeData.dark(),
      builder: EasyLoading.init(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var padding = EdgeInsets.symmetric(horizontal: 18, vertical: 5);
  double gap = 10;
  //bool _login = false;

  @required
  void initState() {
    super.initState();
    _initPageData();
  }

  int _index = 0;
  List<Color> colors = [
    Colors.purple,
    Colors.blue,
    Colors.pink,
    Colors.teal,
  ];

  List<Widget> text = [
    HomePage(),
    CollectPage(),
    SearchPage(),
    MyPage(),
  ];
  PageController controller = PageController();
  void _setIndex(int index) {
    setState(() {
      _index = index;
    });
    controller.jumpToPage(index);
  }

  Future _initPageData() async {
    Map<String, String> userHeader = {
      "Grpc-metadata-token": "BEARER " + await Shared.getToken()
    };
    await http.get(RequestURL.account, headers: userHeader).then((res) {
      if (res.statusCode == 200) {
        accountpb.GetAccountResponse model =
            Shared.tomodel(res.bodyBytes, accountpb.GetAccountResponse());
        if (model.success) {
          if (model.data != null) {
            accountpb.AccountInfo data = model.data;
            Shared.setAccount(data);
          }
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBody: true,
        body: PageView.builder(
            itemCount: 4,
            controller: controller,
            physics: new NeverScrollableScrollPhysics(),
            onPageChanged: (page) async {
              setState(() {
                _index = page;
              });
            },
            itemBuilder: (context, position) {
              return Container(
                color: colors[position],
                child: Center(child: text[position]),
              );
            }),
        bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                  spreadRadius: -10,
                  blurRadius: 60,
                  color: Colors.black.withOpacity(0.4),
                  offset: Offset(0, 25),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            child: GNav(
              curve: Curves.fastOutSlowIn,
              duration: Duration(milliseconds: 900),
              tabs: [
                GButton(
                  gap: gap,
                  icon: LineIcons.book,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.purple,
                  text: '抖书',
                  textColor: Colors.purple,
                  backgroundColor: Colors.purple.withOpacity(0.2),
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: LineIcons.heart_o,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.pink,
                  text: '喜欢',
                  textColor: Colors.pink,
                  backgroundColor: Colors.pink.withOpacity(0.2),
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: LineIcons.search,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.blue,
                  text: '发现',
                  textColor: Colors.blue,
                  backgroundColor: Colors.blue.withOpacity(0.2),
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: LineIcons.user,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.teal,
                  text: '我的',
                  textColor: Colors.teal,
                  backgroundColor: Colors.teal.withOpacity(0.2),
                  iconSize: 24,
                  padding: padding,
                ),
              ],
              selectedIndex: _index,
              onTabChange: (index) async {
                if (index != 0) {
                  bool login = await Shared.checkLogin(context);
                  if (login) {
                    _setIndex(index);
                  }
                } else {
                  _setIndex(index);
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
