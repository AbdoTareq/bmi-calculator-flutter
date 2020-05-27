import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onTap;

  BottomButton({@required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Center(
              child: Text(
            text,
            style: kBottomTextStyle,
          )),
          color: kBottomContainerColour,
          height: kBottomContainerHeight,
          width: double.infinity,
          margin: EdgeInsets.only(top: 10),
        ),
      ),
    );
  }
}
