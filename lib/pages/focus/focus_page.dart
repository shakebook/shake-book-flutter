import 'package:flutter/material.dart';
import 'package:students/pages/focus/components/focus_list_view.dart';
import 'package:students/pages/focus/data/focus_data.dart';
import 'package:students/pages/focus/model/focus_list_model.dart';

class FocusPage extends StatefulWidget {
  final String userName;
  final int focusNumber;
  final int fansNumber;
  final String id;
  FocusPage({
    @required this.userName,
    @required this.focusNumber,
    @required this.fansNumber,
    @required this.id,
  });
  @override
  _FocusPage createState() => _FocusPage();
}

class _FocusPage extends State<FocusPage> {
  List<ListElement> _focusList = [];
  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future _getData() async {
    //分别获取关注和粉丝
    setState(() {
      _focusList = FocusListModel.fromJson(focusJson).list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 0, //去掉阴影
          leading: new IconButton(
            color: Colors.black,
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
            //iconSize: 26,
          ),
          title: Text(
            widget.userName,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,

          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.pink,
            indicatorWeight: 3,
            labelColor: Colors.pink,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(
                child: Text(
                  '关注' + widget.focusNumber.toString(),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  '粉丝' + widget.fansNumber.toString(),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FocusListWidget(
              list: _focusList,
            ),
            FocusListWidget(
              list: _focusList,
            ),
          ],
        ),
      ),
    );
  }
}
