import 'package:flutter/material.dart';

class DescriptionWidget extends StatefulWidget {
  final String userName;
  final String title;
  final String desc;
  DescriptionWidget({
    @required this.userName,
    @required this.title,
    @required this.desc,
  });
  @override
  _DescriptionWidget createState() => _DescriptionWidget();
}

class _DescriptionWidget extends State<DescriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '@' + widget.userName,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
          SizedBox(height: 5),
          //标题
          Text(
            '#' + widget.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          //简介
          Text(
            widget.desc,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
