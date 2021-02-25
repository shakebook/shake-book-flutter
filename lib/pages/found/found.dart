import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:students/pages/found/components/search.dart';
import 'package:students/pages/found/components/vertical_tabs_widget.dart';

class FoundPage extends StatefulWidget {
  @override
  _FoundPage createState() => _FoundPage();
}

class _FoundPage extends State<FoundPage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.ltr,
          child: Column(
            children: <Widget>[
              FoundSearch(),
              SizedBox(
                height: 5,
              ),
              VerticalTabsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
