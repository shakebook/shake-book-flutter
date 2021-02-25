import 'package:flutter/material.dart';

class CommentsBtnWidget extends StatefulWidget {
  final Function showComments;
  final int thumbsUp;
  CommentsBtnWidget({
    @required this.showComments,
    @required this.thumbsUp,
  });
  @override
  _CommentsBtnWidgetState createState() => _CommentsBtnWidgetState();
}

class _CommentsBtnWidgetState extends State<CommentsBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                widget.showComments();
              },
              child: Icon(
                Icons.chat_bubble,
                color: Colors.white,
                size: 44,
              ),
            ),
            Text(
              widget.thumbsUp.toString(),
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
