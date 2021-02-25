import 'package:flutter/material.dart';
import 'package:students/components/search.dart';

class FoundSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.fromLTRB(14, 34, 14, 0),
      child: Expanded(
        child: Search(
          enabled: false,
          boxDecorationColor: Colors.grey[100],
          textStyleColor: Colors.white38,
          iconColor: Colors.grey,
          hinStyleColor: Colors.grey,
          hintText: 'Go语言 Flutter Docker',
          inputPadding: 9,
        ),
      ),
    );
  }
}
