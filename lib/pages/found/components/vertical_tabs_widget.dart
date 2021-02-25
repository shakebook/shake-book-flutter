import 'package:flutter/material.dart';
import 'package:students/pages/found/components/vertical_tabs_view_item.dart';
import 'package:students/pages/found/dao/vertical_tabs_view.dart';
import 'package:students/pages/found/data/tabs.dart';
import 'package:students/pages/found/data/tabs_view_item.dart';
import 'package:vertical_tabs/vertical_tabs.dart';

class VerticalTabsWidget extends StatefulWidget {
  @override
  _VerticalTabsWidget createState() => _VerticalTabsWidget();
}

class _VerticalTabsWidget extends State<VerticalTabsWidget> {
  int _tabindex = 0;
  VerticalTabsViewMoel viewMdel;
  @override
  void initState() {
    super.initState();
    _toviewmodel();
  }

  Future _toviewmodel() async {
    setState(() {
      viewMdel = VerticalTabsViewMoel.fromJson(viewjson);
    });
  }

  _rendercontents() {
    return viewMdel.contents.map((e) {
      return VerticalTabsViewItemWidget(
        imageURL: e.url,
        title: e.title,
        smalNames: e.list,
      );
    }).toList();
  }

  Future _onselect(int index) async {
    setState(() {
      _tabindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    _tabs(int _tabindex) {
      return varticaltabs.map((e) {
        Color color = varticaltabs[_tabindex] == e ? Colors.blue : Colors.black;
        return Tab(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: 12,
                bottom: 12,
              ),
              child: Text(
                e,
                style: TextStyle(
                  color: color,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        );
      }).toList();
    }

    return Expanded(
      child: Container(
        // color: Colors.red,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey[100],
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: VerticalTabs(
          tabsElevation: 0,
          tabContainerBgColor: Colors.grey[100],
          backgroundColor: Colors.white, //tabview背景颜色
          selectedTabBackgroundColor: Colors.white,
          tabBackgroundColor: Colors.grey[100],
          indicatorWidth: 0,
          selectedTabTextStyle: const TextStyle(
            color: Colors.blue,
          ),

          //indicatorSide: IndicatorSide.end,//选中指示器 位置
          tabsWidth: 82,
          onSelect: _onselect,
          changePageDuration: Duration(milliseconds: 500),
          tabs: _tabs(_tabindex),
          contents: <Widget>[
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 100,
                ),
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: _rendercontents(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 100,
                ),
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: _rendercontents(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 100,
                ),
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: _rendercontents(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 100,
                ),
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: _rendercontents(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 100,
                ),
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: _rendercontents(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 100,
                ),
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: _rendercontents(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  bottom: 100,
                ),
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Column(
                      children: _rendercontents(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
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
