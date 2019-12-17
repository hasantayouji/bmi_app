import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color, this.child, this.onPressed});

  final Color color;
  final Widget child;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        margin: EdgeInsets.all(15.0),
        color: this.color,
        elevation: 6,
        child: this.child,
      ),
    );
  }
}
