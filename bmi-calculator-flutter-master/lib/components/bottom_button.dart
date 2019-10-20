import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';


class BottomButton extends StatelessWidget {
  final VoidCallback onPress;
  final String text;
  BottomButton({@required this.onPress, @required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
            child: Text(
              text,
              style: kLargeButtonTextStyle,
            )),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}