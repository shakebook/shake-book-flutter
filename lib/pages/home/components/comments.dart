import 'package:flutter/material.dart';
import 'package:students/pages/home/model/video_comments_model.dart';

class CommentWidget extends StatefulWidget {
  final ListElement item;
  CommentWidget({
    @required this.item,
  });
  @override
  _CommentsWidgetState createState() => _CommentsWidgetState();
}

class _CommentsWidgetState extends State<CommentWidget> {
  Widget _renderComment(ListElement item) {
    Widget renderItem;
    if (item.level == 1) {
      renderItem = Container(
        padding: EdgeInsets.only(
          bottom: 14,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.asset(
                item.userImageUrl,
                width: 35,
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '杨家锋',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                      fontSize: 13,
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    item.comment,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '回复',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Icon(
                  Icons.favorite,
                  size: 20,
                  color: Colors.black26,
                ),
                Text(
                  item.thumbsUp.toString(),
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    } else {
      renderItem = Container(
        child: Text(item.userImageUrl),
      );
    }
    return renderItem;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _renderComment(widget.item),
    );
  }
}
