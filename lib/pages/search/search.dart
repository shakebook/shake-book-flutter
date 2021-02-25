import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:students/components/search.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPage createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(16, 34, 0, 32),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    child: GestureDetector(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black26,
                        //size: 28,
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Search(
                        enabled: true,
                        boxDecorationColor: Colors.blueGrey[50],
                        hinStyleColor: Colors.black26,
                        iconColor: Colors.black26,
                        textStyleColor: Colors.black54,
                        textFieldCursorColor: Colors.blueGrey,
                        hintText: 'golang Kubernetes istio',
                        inputPadding: 10,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(6, 0, 16, 0),
                    child: Text(
                      '搜索',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
