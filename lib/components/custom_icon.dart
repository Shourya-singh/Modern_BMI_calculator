import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

const iconSize = 80.0;

class CustomIcon extends StatelessWidget {
  CustomIcon({this.awesomeIcon, this.iconText});
  final IconData awesomeIcon;
  final String iconText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          awesomeIcon,
          size: iconSize,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconText,
          style: kIconTextStyle,
        ),
      ],
    );
  }
}
