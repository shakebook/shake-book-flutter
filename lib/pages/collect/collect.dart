import 'package:flutter/material.dart';
import 'package:students/pages/collect/components/collect_describe.dart';
import 'package:students/pages/collect/components/collect_list.dart';

class CollectPage extends StatefulWidget {
  @override
  _CollectPage createState() => _CollectPage();
}

class _CollectPage extends State<CollectPage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener(
        onNotification: (scrollNotification) {
          if (scrollNotification is ScrollUpdateNotification &&
              scrollNotification.depth == 0) {}
          return true;
        },
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                elevation: 0, //去掉阴影
                backgroundColor: Colors.pink,

                expandedHeight: 145.0,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  //titlePadding: EdgeInsets.only(bottom: 30),
                  title: Container(
                    //color: Colors.amber,
                    //transform: Matrix4.translationValues(0, -10, 0),
                    child: Text(
                      '收藏',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  centerTitle: true,
                  background: Container(
                    color: Colors.red,
                    child: Image.asset(
                      'assets/images/collect.jpg',
                    ),
                  ),
                ),
              )
            ];
          },
          body: Container(
            color: Colors.grey[50],
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: 100,
              ),
              child: Column(
                children: <Widget>[
                  DescContent(),
                  SizedBox(
                    height: 10,
                  ),
                  CollectList()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
