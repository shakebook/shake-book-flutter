import 'package:flutter/material.dart';
import 'package:students/pages/collect/data/collect_list.dart';
import 'package:students/pages/collect/model/collect_list_model.dart';

class CollectList extends StatefulWidget {
  @override
  _CollectList createState() => _CollectList();
}

class _CollectList extends State<CollectList> {
  CollectListModel _collectListModel;

  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future _getData() async {
    setState(() {
      _collectListModel = CollectListModel.fromJson(collectListJson);
    });
  }

  List<Widget> _renderList() {
    return _collectListModel.list.map((item) {
      return Container(
        color: Colors.white,
        padding: EdgeInsets.all(14),
        margin: EdgeInsets.only(
          bottom: 10,
        ),
        child: Row(
          children: [
            Image.asset(
              item.imageUrl,
              height: 100,
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.only(
                  left: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      item.desc,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(item.userName),
                        Icon(
                          Icons.favorite,
                          color: Colors.pink,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _renderList(),
    );
  }
}
