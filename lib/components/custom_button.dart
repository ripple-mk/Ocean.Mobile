import 'package:flutter/material.dart';

import '../custom_colors.dart';

class CustomButton extends RaisedButton {
  final String name;
  CustomButton({this.name, Widget child, Function onPressed, Color color = CustomColors.Blue, Color textColor = Colors.white, Color borderColor = Colors.transparent})
      : super(
            child: child,
            onPressed: onPressed,
            color: color,
            textColor: textColor,
            padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: borderColor),
                borderRadius: BorderRadius.all(Radius.circular(4))));
}
