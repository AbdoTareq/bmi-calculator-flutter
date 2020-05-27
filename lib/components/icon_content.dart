import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final String text;
  final IconData icon;

  IconContent({this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff8d8e98),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
