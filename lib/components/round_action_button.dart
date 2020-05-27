import 'package:flutter/material.dart';

class RoundActionButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  RoundActionButton({@required this.icon, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 8,
      onPressed: onPress,
      // this for FAB size from it's docs
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: Color(0xff4c4f5e),
    );
  }
}
