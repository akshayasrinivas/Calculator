import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  NumberButton({this.text, this.color, this.onPressed});
  final String text;
  final Color color;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RawMaterialButton(
        shape: CircleBorder(),
        elevation: 5,
        fillColor: color,
        padding: EdgeInsets.all(10),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 35,
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
