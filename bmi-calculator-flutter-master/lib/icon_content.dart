import 'package:flutter/material.dart';
import 'constants.dart';

const double kIconSize = 80.0;
const double kIconContentSpacing = 15.0;

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  IconContent({@required this.icon, @required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          this.icon,
          size: kIconSize,
        ),
        SizedBox(
          height: kIconContentSpacing,
        ),
        Text(
          this.label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
