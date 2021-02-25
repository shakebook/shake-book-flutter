import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:students/pages/search/search.dart';

class Search extends StatefulWidget {
  final bool enabled;
  final Color boxDecorationColor;
  final Color textStyleColor;
  final Color textFieldCursorColor;
  final Color iconColor;
  final Color hinStyleColor;
  final String hintText;
  final double inputPadding;
  Search({
    this.enabled = false,
    this.boxDecorationColor,
    this.textStyleColor,
    this.textFieldCursorColor,
    this.iconColor,
    this.hinStyleColor,
    this.hintText,
    this.inputPadding,
  });
  @override
  _Search createState() => _Search();
}

class _Search extends State<Search> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SearchPage(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(
          color: widget.boxDecorationColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(children: [
          Icon(
            Icons.search,
            color: widget.iconColor,
            size: 20,
          ),
          Expanded(
            flex: 1,
            child: TextFormField(
              textInputAction: TextInputAction.done,
              cursorWidth: 1.0,
              cursorHeight: 19,
              cursorColor: widget.textFieldCursorColor,
              //mouseCursor: MouseCursor.uncontrolled,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.all(widget.inputPadding),
                hintStyle: TextStyle(
                  //color: Colors.white70,
                  color: widget.hinStyleColor,
                ),
                hintText: widget.hintText,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
              autofocus: true,
              enabled: widget.enabled,
              style: TextStyle(
                color: widget.textStyleColor,
                fontSize: 14,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
