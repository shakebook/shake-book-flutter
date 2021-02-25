import 'package:flutter/material.dart';

class DescContent extends StatefulWidget {
  @override
  _DescContent createState() => _DescContent();
}

class _DescContent extends State<DescContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.pink,
          padding: EdgeInsets.fromLTRB(14, 16, 14, 16),
          child: Text('读书无嗜好,就能尽其多。不先泛览群书,则会无所适从或失之偏好,广然后深,博然后专。 ——鲁迅',
              style: TextStyle(
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}
