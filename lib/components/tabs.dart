import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  final TabController _tabController;
  final Function _tabs;
  Tabs(this._tabController, this._tabs);

  @override
  _Tabs createState() => _Tabs();
}

class _Tabs extends State<Tabs> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      //padding: EdgeInsets.fromLTRB(0, 0, 14, 0),
      // transform: Matrix4.translationValues(0, -10, 9),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.blue,
        indicatorWeight: 2,
        isScrollable: true,
        labelColor: Colors.blue,
        unselectedLabelColor: Colors.black,
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.normal,
        ),
        labelStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          wordSpacing: 1,
          letterSpacing: 1,
          height: 2.7,
        ),
        tabs: widget._tabs(),
        controller: widget._tabController,
      ),
    );
  }
}
