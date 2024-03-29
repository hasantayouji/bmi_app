import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
