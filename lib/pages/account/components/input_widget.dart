import 'package:flutter/material.dart';
import 'package:students/constants.dart';

class InputWidget extends StatefulWidget {
  final bool obscureText;
  final void Function(String) onChanged;
  final String Function(String) validator;
  final IconData iconData;
  final String labelText;
  InputWidget({
    @required this.obscureText,
    @required this.onChanged,
    @required this.validator,
    @required this.iconData,
    @required this.labelText,
  });
  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  OutlineInputBorder _outlineBorder(int range) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blue[range],
        width: 1,
        style: BorderStyle.solid,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: TextInputType.text,
        obscureText: widget.obscureText,
        onChanged: widget.onChanged,
        validator: widget.validator,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        decoration: InputDecoration(
          focusedBorder: _outlineBorder(400),
          focusedErrorBorder: _outlineBorder(100),
          errorBorder: _outlineBorder(100),
          enabledBorder: _outlineBorder(100),
          prefixIcon: Icon(
            widget.iconData,
            color: mainColor,
          ),
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
