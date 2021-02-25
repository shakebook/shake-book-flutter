import 'package:flutter/material.dart';
import 'package:students/pages/home/components/video.dart';
import 'package:students/pages/home/data/home_data.dart';
import 'package:students/pages/home/model/home_model.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> with TickerProviderStateMixin {
  PageController controller = PageController();
  double gap = 10;

  List<ListElement> _homeList = [];

  @override
  void initState() {
    super.initState();
    initList();
  }

  Future<void> initList() async {
    var data = await _getData();
    _setList(data.list);
  }

  _setList(List<ListElement> list) {
    setState(() {
      _homeList = list;
    });
  }

  Future<HomeListModel> _getData() async {
    return HomeListModel.fromJson(homeJson);
  }

  List<VideoWidget> _renderList() {
    return _homeList
        .map(
          (e) => VideoWidget(
            videoUrl: e.videoUrl,
            userName: e.userName,
            title: e.title,
            desc: e.desc,
            thumbsUp: e.thumbsUp,
            favorite: e.favorite,
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _homeList.length,
        controller: controller,
        onPageChanged: (page) async {
          var arr = _homeList;
          var data = await _getData();
          arr.addAll(data.list);
          _setList(arr);
        },
        itemBuilder: (context, position) {
          return Container(
            color: Colors.black,
            child: _renderList()[position],
          );
        },
      ),
    );
  }
}
