import 'package:flutter/material.dart';
import 'package:students/common/shared.dart';

class FavoriteBtnWidget extends StatefulWidget {
  final bool favorite;
  final int thumbsUp;
  FavoriteBtnWidget({
    @required this.favorite,
    @required this.thumbsUp,
  });

  @override
  _FavoriteBtnWidgetState createState() => _FavoriteBtnWidgetState();
}

class _FavoriteBtnWidgetState extends State<FavoriteBtnWidget> {
  bool _favorite = false;
  int _thumbsUp = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _favorite = widget.favorite;
      _thumbsUp = widget.thumbsUp;
    });
  }

  _checkLogin() async {
    bool login = await Shared.checkLogin(context);
    if (login) {
      setState(() {
        _favorite = !_favorite;
        if (_favorite) {
          _thumbsUp++;
        } else {
          _thumbsUp--;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          children: [
            GestureDetector(
              child: Icon(
                Icons.favorite,
                color: _favorite ? Colors.pink : Colors.white,
                size: 50,
              ),
              onTap: () {
                _checkLogin();
              },
            ),
            Text(
              _thumbsUp.toString(),
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
