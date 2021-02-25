import 'package:flutter/material.dart';

class VerticalTabsViewItemWidget extends StatefulWidget {
  final String imageURL;
  final String title;
  final List<String> smalNames;
  VerticalTabsViewItemWidget({
    @required this.imageURL,
    @required this.title,
    @required this.smalNames,
  });
  @override
  _VerticalTabsViewItemWidget createState() => _VerticalTabsViewItemWidget();
}

class _VerticalTabsViewItemWidget extends State<VerticalTabsViewItemWidget> {
  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          children: [
            Image.asset(
              widget.imageURL,
              width: 16,
            ),
            SizedBox(
              width: 10,
            ),
            Text(widget.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                )),
            Icon(Icons.navigate_next),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Wrap(
          children: widget.smalNames.map((e) {
            return ButtonItem(text: e);
          }).toList(),
          spacing: 12,
          runSpacing: 12,
          alignment: WrapAlignment.start,
          runAlignment: WrapAlignment.end,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class ButtonItem extends StatelessWidget {
  ButtonItem({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 9, 20, 9),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text),
    );
  }
}
