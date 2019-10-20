import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton(
      {@required this.icon,
        @required this.onPress,
        @required this.backgroundColor});

  final VoidCallback onPress;
  final IconData icon;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: backgroundColor,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 0.0,
      onPressed: this.onPress,
      child: Icon(this.icon),
    );
  }
}