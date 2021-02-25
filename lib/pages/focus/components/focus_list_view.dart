import 'package:flutter/material.dart';
import 'package:students/pages/focus/model/focus_list_model.dart';

class FocusListWidget extends StatefulWidget {
  final List<ListElement> list;
  FocusListWidget({@required this.list});
  @override
  _FocusListWidget createState() => _FocusListWidget();
}

class _FocusListWidget extends State<FocusListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      child: ListView(
        padding: EdgeInsets.fromLTRB(14, 0, 14, 100),
        children: widget.list.map((item) {
          return Column(
            children: [
              SizedBox(
                height: 14,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(4),
                    topRight: Radius.circular(4),
                  ),
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      child: Image.asset(
                        item.imageUrl,
                        height: 110,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(4),
                        topLeft: Radius.circular(4),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 10,
                          right: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  item.userName,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  color: Colors.pink,
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              item.desc,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
